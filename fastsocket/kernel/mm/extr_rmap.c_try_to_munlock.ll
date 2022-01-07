; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_try_to_munlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_try_to_munlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@TTU_MUNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_to_munlock(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %4 = load %struct.page*, %struct.page** %3, align 8
  %5 = call i32 @PageLocked(%struct.page* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i64 @PageLRU(%struct.page* %8)
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ true, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @VM_BUG_ON(i32 %13)
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @PageKsm(%struct.page* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = load i32, i32* @TTU_MUNLOCK, align 4
  %22 = call i32 @try_to_unmap_ksm(%struct.page* %20, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %11
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i64 @PageAnon(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = load i32, i32* @TTU_MUNLOCK, align 4
  %30 = call i32 @try_to_unmap_anon(%struct.page* %28, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = load i32, i32* @TTU_MUNLOCK, align 4
  %34 = call i32 @try_to_unmap_file(%struct.page* %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %27, %19
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageKsm(%struct.page*) #1

declare dso_local i32 @try_to_unmap_ksm(%struct.page*, i32) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @try_to_unmap_anon(%struct.page*, i32) #1

declare dso_local i32 @try_to_unmap_file(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
