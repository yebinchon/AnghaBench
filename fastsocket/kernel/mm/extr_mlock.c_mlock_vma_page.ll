; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_mlock_vma_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_mlock_vma_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@NR_MLOCK = common dso_local global i32 0, align 4
@UNEVICTABLE_PGMLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlock_vma_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i32 @PageLocked(%struct.page* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @TestSetPageMlocked(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = load i32, i32* @NR_MLOCK, align 4
  %15 = call i32 @inc_zone_page_state(%struct.page* %13, i32 %14)
  %16 = load i32, i32* @UNEVICTABLE_PGMLOCKED, align 4
  %17 = call i32 @count_vm_event(i32 %16)
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @isolate_lru_page(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = call i32 @putback_lru_page(%struct.page* %22)
  br label %24

24:                                               ; preds = %21, %12
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @TestSetPageMlocked(%struct.page*) #1

declare dso_local i32 @inc_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @isolate_lru_page(%struct.page*) #1

declare dso_local i32 @putback_lru_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
