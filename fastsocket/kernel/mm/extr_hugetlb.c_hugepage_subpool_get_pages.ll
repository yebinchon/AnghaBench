; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugepage_subpool_get_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugepage_subpool_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugepage_subpool = type { i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hugepage_subpool*, i64)* @hugepage_subpool_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugepage_subpool_get_pages(%struct.hugepage_subpool* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hugepage_subpool*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hugepage_subpool* %0, %struct.hugepage_subpool** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %8 = icmp ne %struct.hugepage_subpool* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

10:                                               ; preds = %2
  %11 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %12 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %15 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %20 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %10
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %26 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  br label %32

29:                                               ; preds = %10
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %34 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
