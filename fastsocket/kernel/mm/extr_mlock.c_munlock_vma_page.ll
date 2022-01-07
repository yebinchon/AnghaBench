; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_munlock_vma_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_munlock_vma_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@NR_MLOCK = common dso_local global i32 0, align 4
@SWAP_MLOCK = common dso_local global i32 0, align 4
@UNEVICTABLE_PGMUNLOCKED = common dso_local global i32 0, align 4
@UNEVICTABLE_PGSTRANDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @munlock_vma_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call i32 @PageLocked(%struct.page* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = call i64 @TestClearPageMlocked(%struct.page* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = load i32, i32* @NR_MLOCK, align 4
  %16 = call i32 @dec_zone_page_state(%struct.page* %14, i32 %15)
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @isolate_lru_page(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %13
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i32 @try_to_munlock(%struct.page* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SWAP_MLOCK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @UNEVICTABLE_PGMUNLOCKED, align 4
  %28 = call i32 @count_vm_event(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.page*, %struct.page** %2, align 8
  %31 = call i32 @putback_lru_page(%struct.page* %30)
  br label %43

32:                                               ; preds = %13
  %33 = load %struct.page*, %struct.page** %2, align 8
  %34 = call i64 @PageUnevictable(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @UNEVICTABLE_PGSTRANDED, align 4
  %38 = call i32 @count_vm_event(i32 %37)
  br label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @UNEVICTABLE_PGMUNLOCKED, align 4
  %41 = call i32 @count_vm_event(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @TestClearPageMlocked(%struct.page*) #1

declare dso_local i32 @dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @isolate_lru_page(%struct.page*) #1

declare dso_local i32 @try_to_munlock(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @putback_lru_page(%struct.page*) #1

declare dso_local i64 @PageUnevictable(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
