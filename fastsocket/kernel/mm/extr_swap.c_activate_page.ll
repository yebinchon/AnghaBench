; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_activate_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_activate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32 }

@LRU_ACTIVE = common dso_local global i64 0, align 8
@PGACTIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @activate_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.zone*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call %struct.zone* @page_zone(%struct.page* %6)
  store %struct.zone* %7, %struct.zone** %3, align 8
  %8 = load %struct.zone*, %struct.zone** %3, align 8
  %9 = getelementptr inbounds %struct.zone, %struct.zone* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i64 @PageLRU(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = call i32 @PageActive(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %14
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = call i32 @PageUnevictable(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %18
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call i32 @page_is_file_cache(%struct.page* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = call i32 @page_lru_base_type(%struct.page* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.zone*, %struct.zone** %3, align 8
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @del_page_from_lru_list(%struct.zone* %27, %struct.page* %28, i32 %29)
  %31 = load %struct.page*, %struct.page** %2, align 8
  %32 = call i32 @SetPageActive(%struct.page* %31)
  %33 = load i64, i64* @LRU_ACTIVE, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load %struct.zone*, %struct.zone** %3, align 8
  %39 = load %struct.page*, %struct.page** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @add_page_to_lru_list(%struct.zone* %38, %struct.page* %39, i32 %40)
  %42 = load i32, i32* @PGACTIVATE, align 4
  %43 = call i32 @__count_vm_event(i32 %42)
  %44 = load %struct.zone*, %struct.zone** %3, align 8
  %45 = load %struct.page*, %struct.page** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @update_page_reclaim_stat(%struct.zone* %44, %struct.page* %45, i32 %46, i32 1)
  br label %48

48:                                               ; preds = %22, %18, %14, %1
  %49 = load %struct.zone*, %struct.zone** %3, align 8
  %50 = getelementptr inbounds %struct.zone, %struct.zone* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  ret void
}

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i32 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @page_lru_base_type(%struct.page*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.zone*, %struct.page*, i32) #1

declare dso_local i32 @SetPageActive(%struct.page*) #1

declare dso_local i32 @add_page_to_lru_list(%struct.zone*, %struct.page*, i32) #1

declare dso_local i32 @__count_vm_event(i32) #1

declare dso_local i32 @update_page_reclaim_stat(%struct.zone*, %struct.page*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
