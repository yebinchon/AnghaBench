; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_grow_reg_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_grow_reg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i64 }
%struct.df_ref_info = type { i32, i32, %struct.df_reg_info** }
%struct.df_reg_info = type { i32 }
%struct.df_scan_problem_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*, %struct.df_ref_info*)* @df_grow_reg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_grow_reg_info(%struct.dataflow* %0, %struct.df_ref_info* %1) #0 {
  %3 = alloca %struct.dataflow*, align 8
  %4 = alloca %struct.df_ref_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.df_scan_problem_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.df_reg_info*, align 8
  store %struct.dataflow* %0, %struct.dataflow** %3, align 8
  store %struct.df_ref_info* %1, %struct.df_ref_info** %4, align 8
  %10 = call i32 (...) @max_reg_num()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %13 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.df_scan_problem_data*
  store %struct.df_scan_problem_data* %15, %struct.df_scan_problem_data** %7, align 8
  %16 = load %struct.df_ref_info*, %struct.df_ref_info** %4, align 8
  %17 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = udiv i32 %22, 4
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.df_ref_info*, %struct.df_ref_info** %4, align 8
  %27 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %26, i32 0, i32 2
  %28 = load %struct.df_reg_info**, %struct.df_reg_info*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = call %struct.df_reg_info** @xrealloc(%struct.df_reg_info** %28, i32 %32)
  %34 = load %struct.df_ref_info*, %struct.df_ref_info** %4, align 8
  %35 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %34, i32 0, i32 2
  store %struct.df_reg_info** %33, %struct.df_reg_info*** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.df_ref_info*, %struct.df_ref_info** %4, align 8
  %38 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %21, %2
  %40 = load %struct.df_ref_info*, %struct.df_ref_info** %4, align 8
  %41 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %61, %39
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.df_scan_problem_data*, %struct.df_scan_problem_data** %7, align 8
  %49 = getelementptr inbounds %struct.df_scan_problem_data, %struct.df_scan_problem_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.df_reg_info* @pool_alloc(i32 %50)
  store %struct.df_reg_info* %51, %struct.df_reg_info** %9, align 8
  %52 = load %struct.df_reg_info*, %struct.df_reg_info** %9, align 8
  %53 = call i32 @memset(%struct.df_reg_info* %52, i32 0, i32 4)
  %54 = load %struct.df_reg_info*, %struct.df_reg_info** %9, align 8
  %55 = load %struct.df_ref_info*, %struct.df_ref_info** %4, align 8
  %56 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %55, i32 0, i32 2
  %57 = load %struct.df_reg_info**, %struct.df_reg_info*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %57, i64 %59
  store %struct.df_reg_info* %54, %struct.df_reg_info** %60, align 8
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.df_ref_info*, %struct.df_ref_info** %4, align 8
  %67 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  ret void
}

declare dso_local i32 @max_reg_num(...) #1

declare dso_local %struct.df_reg_info** @xrealloc(%struct.df_reg_info**, i32) #1

declare dso_local %struct.df_reg_info* @pool_alloc(i32) #1

declare dso_local i32 @memset(%struct.df_reg_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
