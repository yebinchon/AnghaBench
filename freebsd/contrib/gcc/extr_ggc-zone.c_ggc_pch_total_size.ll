; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_pch_total_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_pch_total_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggc_pch_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64 }

@NUM_PCH_BUCKETS = common dso_local global i32 0, align 4
@GGC_PAGE_SIZE = common dso_local global i32 0, align 4
@BYTES_PER_ALLOC_BIT = common dso_local global i32 0, align 4
@MAX_ALIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ggc_pch_total_size(%struct.ggc_pch_data* %0) #0 {
  %2 = alloca %struct.ggc_pch_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ggc_pch_data* %0, %struct.ggc_pch_data** %2, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NUM_PCH_BUCKETS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %6
  %11 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %2, align 8
  %12 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @GGC_PAGE_SIZE, align 4
  %20 = call i8* @ROUND_UP(i64 %18, i32 %19)
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %2, align 8
  %23 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 %21, i64* %28, align 8
  %29 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %2, align 8
  %30 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %10
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %6

42:                                               ; preds = %6
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %2, align 8
  %45 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 %43, i64* %46, align 8
  %47 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %2, align 8
  %48 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %52 = mul nsw i32 %51, 8
  %53 = call i64 @CEIL(i64 %50, i32 %52)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i32, i32* @MAX_ALIGNMENT, align 4
  %56 = call i8* @ROUND_UP(i64 %54, i32 %55)
  %57 = ptrtoint i8* %56 to i64
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %2, align 8
  %60 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %2, align 8
  %62 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = add i64 %64, %65
  ret i64 %66
}

declare dso_local i8* @ROUND_UP(i64, i32) #1

declare dso_local i64 @CEIL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
