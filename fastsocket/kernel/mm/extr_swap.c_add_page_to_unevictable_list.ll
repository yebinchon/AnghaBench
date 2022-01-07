; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_add_page_to_unevictable_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_add_page_to_unevictable_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32 }

@LRU_UNEVICTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_page_to_unevictable_list(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.zone*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call %struct.zone* @page_zone(%struct.page* %4)
  store %struct.zone* %5, %struct.zone** %3, align 8
  %6 = load %struct.zone*, %struct.zone** %3, align 8
  %7 = getelementptr inbounds %struct.zone, %struct.zone* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @SetPageUnevictable(%struct.page* %9)
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i32 @SetPageLRU(%struct.page* %11)
  %13 = load %struct.zone*, %struct.zone** %3, align 8
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = load i32, i32* @LRU_UNEVICTABLE, align 4
  %16 = call i32 @add_page_to_lru_list(%struct.zone* %13, %struct.page* %14, i32 %15)
  %17 = load %struct.zone*, %struct.zone** %3, align 8
  %18 = getelementptr inbounds %struct.zone, %struct.zone* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_irq(i32* %18)
  ret void
}

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @SetPageUnevictable(%struct.page*) #1

declare dso_local i32 @SetPageLRU(%struct.page*) #1

declare dso_local i32 @add_page_to_lru_list(%struct.zone*, %struct.page*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
