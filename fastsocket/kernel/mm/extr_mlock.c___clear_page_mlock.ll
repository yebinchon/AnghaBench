; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c___clear_page_mlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c___clear_page_mlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@NR_MLOCK = common dso_local global i32 0, align 4
@UNEVICTABLE_PGCLEARED = common dso_local global i32 0, align 4
@UNEVICTABLE_PGSTRANDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__clear_page_mlock(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i32 @PageLocked(%struct.page* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @VM_BUG_ON(i32 %7)
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = load i32, i32* @NR_MLOCK, align 4
  %17 = call i32 @dec_zone_page_state(%struct.page* %15, i32 %16)
  %18 = load i32, i32* @UNEVICTABLE_PGCLEARED, align 4
  %19 = call i32 @count_vm_event(i32 %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i32 @isolate_lru_page(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = call i32 @putback_lru_page(%struct.page* %24)
  br label %34

26:                                               ; preds = %14
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = call i64 @PageUnevictable(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @UNEVICTABLE_PGSTRANDED, align 4
  %32 = call i32 @count_vm_event(i32 %31)
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %13, %33, %23
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @isolate_lru_page(%struct.page*) #1

declare dso_local i32 @putback_lru_page(%struct.page*) #1

declare dso_local i64 @PageUnevictable(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
