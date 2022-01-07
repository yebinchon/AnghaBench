; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_scan_free_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_scan_free_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i32, i64, i32*, i64, %struct.df* }
%struct.df = type { i32, i32, i32, i64, i32*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.df_scan_problem_data = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*)* @df_scan_free_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_scan_free_internal(%struct.dataflow* %0) #0 {
  %2 = alloca %struct.dataflow*, align 8
  %3 = alloca %struct.df*, align 8
  %4 = alloca %struct.df_scan_problem_data*, align 8
  store %struct.dataflow* %0, %struct.dataflow** %2, align 8
  %5 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %6 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %5, i32 0, i32 4
  %7 = load %struct.df*, %struct.df** %6, align 8
  store %struct.df* %7, %struct.df** %3, align 8
  %8 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %9 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.df_scan_problem_data*
  store %struct.df_scan_problem_data* %11, %struct.df_scan_problem_data** %4, align 8
  %12 = load %struct.df*, %struct.df** %3, align 8
  %13 = getelementptr inbounds %struct.df, %struct.df* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @free(i32* %15)
  %17 = load %struct.df*, %struct.df** %3, align 8
  %18 = getelementptr inbounds %struct.df, %struct.df* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @free(i32* %20)
  %22 = load %struct.df*, %struct.df** %3, align 8
  %23 = getelementptr inbounds %struct.df, %struct.df* %22, i32 0, i32 6
  %24 = call i32 @memset(%struct.TYPE_2__* %23, i32 0, i32 4)
  %25 = load %struct.df*, %struct.df** %3, align 8
  %26 = getelementptr inbounds %struct.df, %struct.df* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @free(i32* %28)
  %30 = load %struct.df*, %struct.df** %3, align 8
  %31 = getelementptr inbounds %struct.df, %struct.df* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @free(i32* %33)
  %35 = load %struct.df*, %struct.df** %3, align 8
  %36 = getelementptr inbounds %struct.df, %struct.df* %35, i32 0, i32 5
  %37 = call i32 @memset(%struct.TYPE_2__* %36, i32 0, i32 4)
  %38 = load %struct.df*, %struct.df** %3, align 8
  %39 = getelementptr inbounds %struct.df, %struct.df* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load %struct.df*, %struct.df** %3, align 8
  %43 = getelementptr inbounds %struct.df, %struct.df* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = load %struct.df*, %struct.df** %3, align 8
  %45 = getelementptr inbounds %struct.df, %struct.df* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %47 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @free(i32* %48)
  %50 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %51 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %53 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.df*, %struct.df** %3, align 8
  %55 = getelementptr inbounds %struct.df, %struct.df* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @BITMAP_FREE(i32 %56)
  %58 = load %struct.df*, %struct.df** %3, align 8
  %59 = getelementptr inbounds %struct.df, %struct.df* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BITMAP_FREE(i32 %60)
  %62 = load %struct.df*, %struct.df** %3, align 8
  %63 = getelementptr inbounds %struct.df, %struct.df* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @BITMAP_FREE(i32 %64)
  %66 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %67 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @free_alloc_pool(i32 %68)
  %70 = load %struct.df_scan_problem_data*, %struct.df_scan_problem_data** %4, align 8
  %71 = getelementptr inbounds %struct.df_scan_problem_data, %struct.df_scan_problem_data* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @free_alloc_pool(i32 %72)
  %74 = load %struct.df_scan_problem_data*, %struct.df_scan_problem_data** %4, align 8
  %75 = getelementptr inbounds %struct.df_scan_problem_data, %struct.df_scan_problem_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @free_alloc_pool(i32 %76)
  %78 = load %struct.df_scan_problem_data*, %struct.df_scan_problem_data** %4, align 8
  %79 = getelementptr inbounds %struct.df_scan_problem_data, %struct.df_scan_problem_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @free_alloc_pool(i32 %80)
  %82 = load %struct.df_scan_problem_data*, %struct.df_scan_problem_data** %4, align 8
  %83 = getelementptr inbounds %struct.df_scan_problem_data, %struct.df_scan_problem_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @free_alloc_pool(i32 %84)
  %86 = load %struct.df_scan_problem_data*, %struct.df_scan_problem_data** %4, align 8
  %87 = getelementptr inbounds %struct.df_scan_problem_data, %struct.df_scan_problem_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @free_alloc_pool(i32 %88)
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @free_alloc_pool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
