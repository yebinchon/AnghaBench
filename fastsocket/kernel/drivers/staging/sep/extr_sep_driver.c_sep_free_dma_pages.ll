; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_free_dma_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_free_dma_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page**, i64, i64)* @sep_free_dma_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_free_dma_pages(%struct.page** %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.page**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.page** %0, %struct.page*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %34, %10
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.page**, %struct.page*** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.page*, %struct.page** %16, i64 %17
  %19 = load %struct.page*, %struct.page** %18, align 8
  %20 = call i32 @PageReserved(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.page**, %struct.page*** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.page*, %struct.page** %23, i64 %24
  %26 = load %struct.page*, %struct.page** %25, align 8
  %27 = call i32 @SetPageDirty(%struct.page* %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.page**, %struct.page*** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 %30
  %32 = load %struct.page*, %struct.page** %31, align 8
  %33 = call i32 @page_cache_release(%struct.page* %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %11

37:                                               ; preds = %11
  br label %53

38:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.page**, %struct.page*** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.page*, %struct.page** %44, i64 %45
  %47 = load %struct.page*, %struct.page** %46, align 8
  %48 = call i32 @page_cache_release(%struct.page* %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %39

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.page**, %struct.page*** %4, align 8
  %55 = icmp ne %struct.page** %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.page**, %struct.page*** %4, align 8
  %58 = call i32 @kfree(%struct.page** %57)
  br label %59

59:                                               ; preds = %56, %53
  ret i32 0
}

declare dso_local i32 @PageReserved(%struct.page*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
