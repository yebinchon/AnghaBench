; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_try_to_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_try_to_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@SWAP_MLOCK = common dso_local global i32 0, align 4
@SWAP_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_to_unmap(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call i32 @PageLocked(%struct.page* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i32 @PageHuge(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i64 @PageTransHuge(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @VM_BUG_ON(i32 %21)
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @PageKsm(%struct.page* %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @try_to_unmap_ksm(%struct.page* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %44

31:                                               ; preds = %19
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i64 @PageAnon(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @try_to_unmap_anon(%struct.page* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.page*, %struct.page** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @try_to_unmap_file(%struct.page* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SWAP_MLOCK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.page*, %struct.page** %3, align 8
  %50 = call i32 @page_mapped(%struct.page* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @SWAP_SUCCESS, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %48, %44
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageKsm(%struct.page*) #1

declare dso_local i32 @try_to_unmap_ksm(%struct.page*, i32) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @try_to_unmap_anon(%struct.page*, i32) #1

declare dso_local i32 @try_to_unmap_file(%struct.page*, i32) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
