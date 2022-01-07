; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_ru_bb_local_compute_process_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_ru_bb_local_compute_process_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i64, %struct.df* }
%struct.df = type { i32 }
%struct.df_ru_bb_info = type { i32, i32 }
%struct.df_ref = type { %struct.df_ref* }
%struct.df_ru_problem_data = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DF_REF_AT_TOP = common dso_local global i32 0, align 4
@DF_REF_PARTIAL = common dso_local global i32 0, align 4
@seen_in_block = common dso_local global i32 0, align 4
@seen_in_insn = common dso_local global i32 0, align 4
@DF_SPARSE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*, %struct.df_ru_bb_info*, %struct.df_ref*, i32)* @df_ru_bb_local_compute_process_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_ru_bb_local_compute_process_def(%struct.dataflow* %0, %struct.df_ru_bb_info* %1, %struct.df_ref* %2, i32 %3) #0 {
  %5 = alloca %struct.dataflow*, align 8
  %6 = alloca %struct.df_ru_bb_info*, align 8
  %7 = alloca %struct.df_ref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.df*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.df_ru_problem_data*, align 8
  %14 = alloca i32, align 4
  store %struct.dataflow* %0, %struct.dataflow** %5, align 8
  store %struct.df_ru_bb_info* %1, %struct.df_ru_bb_info** %6, align 8
  store %struct.df_ref* %2, %struct.df_ref** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.dataflow*, %struct.dataflow** %5, align 8
  %16 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %15, i32 0, i32 1
  %17 = load %struct.df*, %struct.df** %16, align 8
  store %struct.df* %17, %struct.df** %9, align 8
  br label %18

18:                                               ; preds = %89, %4
  %19 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %20 = icmp ne %struct.df_ref* %19, null
  br i1 %20, label %21, label %93

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %24 = call i32 @DF_REF_FLAGS(%struct.df_ref* %23)
  %25 = load i32, i32* @DF_REF_AT_TOP, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %21
  %29 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %30 = call i32 @DF_REF_FLAGS(%struct.df_ref* %29)
  %31 = load i32, i32* @DF_REF_PARTIAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %89, label %34

34:                                               ; preds = %28
  %35 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %36 = call i32 @DF_REF_REGNO(%struct.df_ref* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.df*, %struct.df** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.TYPE_2__* @DF_REG_USE_GET(%struct.df* %37, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.df*, %struct.df** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.TYPE_2__* @DF_REG_USE_GET(%struct.df* %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @seen_in_block, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @bitmap_bit_p(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %88, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* @seen_in_insn, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @bitmap_bit_p(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %84, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @DF_SPARSE_THRESHOLD, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.df_ru_bb_info*, %struct.df_ru_bb_info** %6, align 8
  %62 = getelementptr inbounds %struct.df_ru_bb_info, %struct.df_ru_bb_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @bitmap_set_bit(i32 %63, i32 %64)
  br label %83

66:                                               ; preds = %56
  %67 = load %struct.dataflow*, %struct.dataflow** %5, align 8
  %68 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.df_ru_problem_data*
  store %struct.df_ru_problem_data* %70, %struct.df_ru_problem_data** %13, align 8
  %71 = load %struct.df_ru_problem_data*, %struct.df_ru_problem_data** %13, align 8
  %72 = getelementptr inbounds %struct.df_ru_problem_data, %struct.df_ru_problem_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @df_ref_bitmap(i32 %73, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load %struct.df_ru_bb_info*, %struct.df_ru_bb_info** %6, align 8
  %79 = getelementptr inbounds %struct.df_ru_bb_info, %struct.df_ru_bb_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @bitmap_ior_into(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %66, %60
  br label %84

84:                                               ; preds = %83, %51
  %85 = load i32, i32* @seen_in_insn, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @bitmap_set_bit(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %34
  br label %89

89:                                               ; preds = %88, %28, %21
  %90 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %91 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %90, i32 0, i32 0
  %92 = load %struct.df_ref*, %struct.df_ref** %91, align 8
  store %struct.df_ref* %92, %struct.df_ref** %7, align 8
  br label %18

93:                                               ; preds = %18
  ret void
}

declare dso_local i32 @DF_REF_FLAGS(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_REGNO(%struct.df_ref*) #1

declare dso_local %struct.TYPE_2__* @DF_REG_USE_GET(%struct.df*, i32) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @df_ref_bitmap(i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_ior_into(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
