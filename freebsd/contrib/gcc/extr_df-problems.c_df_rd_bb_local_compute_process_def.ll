; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_rd_bb_local_compute_process_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_rd_bb_local_compute_process_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i64, %struct.df* }
%struct.df = type { i32 }
%struct.df_rd_bb_info = type { i32, i32, i32 }
%struct.df_ref = type { %struct.df_ref* }
%struct.df_rd_problem_data = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DF_REF_AT_TOP = common dso_local global i32 0, align 4
@seen_in_block = common dso_local global i32 0, align 4
@seen_in_insn = common dso_local global i32 0, align 4
@DF_REF_PARTIAL = common dso_local global i32 0, align 4
@DF_REF_MAY_CLOBBER = common dso_local global i32 0, align 4
@DF_SPARSE_THRESHOLD = common dso_local global i32 0, align 4
@DF_REF_MUST_CLOBBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*, %struct.df_rd_bb_info*, %struct.df_ref*, i32)* @df_rd_bb_local_compute_process_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_rd_bb_local_compute_process_def(%struct.dataflow* %0, %struct.df_rd_bb_info* %1, %struct.df_ref* %2, i32 %3) #0 {
  %5 = alloca %struct.dataflow*, align 8
  %6 = alloca %struct.df_rd_bb_info*, align 8
  %7 = alloca %struct.df_ref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.df*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.df_rd_problem_data*, align 8
  %14 = alloca i32, align 4
  store %struct.dataflow* %0, %struct.dataflow** %5, align 8
  store %struct.df_rd_bb_info* %1, %struct.df_rd_bb_info** %6, align 8
  store %struct.df_ref* %2, %struct.df_ref** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.dataflow*, %struct.dataflow** %5, align 8
  %16 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %15, i32 0, i32 1
  %17 = load %struct.df*, %struct.df** %16, align 8
  store %struct.df* %17, %struct.df** %9, align 8
  br label %18

18:                                               ; preds = %121, %4
  %19 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %20 = icmp ne %struct.df_ref* %19, null
  br i1 %20, label %21, label %125

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %24 = call i32 @DF_REF_FLAGS(%struct.df_ref* %23)
  %25 = load i32, i32* @DF_REF_AT_TOP, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %121

28:                                               ; preds = %21
  %29 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %30 = call i32 @DF_REF_REGNO(%struct.df_ref* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.df*, %struct.df** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.TYPE_2__* @DF_REG_DEF_GET(%struct.df* %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.df*, %struct.df** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.TYPE_2__* @DF_REG_DEF_GET(%struct.df* %36, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @seen_in_block, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @bitmap_bit_p(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %120, label %45

45:                                               ; preds = %28
  %46 = load i32, i32* @seen_in_insn, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @bitmap_bit_p(i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %101, label %50

50:                                               ; preds = %45
  %51 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %52 = call i32 @DF_REF_FLAGS(%struct.df_ref* %51)
  %53 = load i32, i32* @DF_REF_PARTIAL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %101, label %56

56:                                               ; preds = %50
  %57 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %58 = call i32 @DF_REF_FLAGS(%struct.df_ref* %57)
  %59 = load i32, i32* @DF_REF_MAY_CLOBBER, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %101, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @DF_SPARSE_THRESHOLD, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load %struct.df_rd_bb_info*, %struct.df_rd_bb_info** %6, align 8
  %68 = getelementptr inbounds %struct.df_rd_bb_info, %struct.df_rd_bb_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @bitmap_set_bit(i32 %69, i32 %70)
  %72 = load %struct.df_rd_bb_info*, %struct.df_rd_bb_info** %6, align 8
  %73 = getelementptr inbounds %struct.df_rd_bb_info, %struct.df_rd_bb_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @bitmap_clear_range(i32 %74, i32 %75, i32 %76)
  br label %100

78:                                               ; preds = %62
  %79 = load %struct.dataflow*, %struct.dataflow** %5, align 8
  %80 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.df_rd_problem_data*
  store %struct.df_rd_problem_data* %82, %struct.df_rd_problem_data** %13, align 8
  %83 = load %struct.df_rd_problem_data*, %struct.df_rd_problem_data** %13, align 8
  %84 = getelementptr inbounds %struct.df_rd_problem_data, %struct.df_rd_problem_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @df_ref_bitmap(i32 %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load %struct.df_rd_bb_info*, %struct.df_rd_bb_info** %6, align 8
  %91 = getelementptr inbounds %struct.df_rd_bb_info, %struct.df_rd_bb_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @bitmap_ior_into(i32 %92, i32 %93)
  %95 = load %struct.df_rd_bb_info*, %struct.df_rd_bb_info** %6, align 8
  %96 = getelementptr inbounds %struct.df_rd_bb_info, %struct.df_rd_bb_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @bitmap_and_compl_into(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %78, %66
  br label %101

101:                                              ; preds = %100, %56, %50, %45
  %102 = load i32, i32* @seen_in_insn, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @bitmap_set_bit(i32 %102, i32 %103)
  %105 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %106 = call i32 @DF_REF_FLAGS(%struct.df_ref* %105)
  %107 = load i32, i32* @DF_REF_MUST_CLOBBER, align 4
  %108 = load i32, i32* @DF_REF_MAY_CLOBBER, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %101
  %113 = load %struct.df_rd_bb_info*, %struct.df_rd_bb_info** %6, align 8
  %114 = getelementptr inbounds %struct.df_rd_bb_info, %struct.df_rd_bb_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %117 = call i32 @DF_REF_ID(%struct.df_ref* %116)
  %118 = call i32 @bitmap_set_bit(i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %112, %101
  br label %120

120:                                              ; preds = %119, %28
  br label %121

121:                                              ; preds = %120, %21
  %122 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %123 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %122, i32 0, i32 0
  %124 = load %struct.df_ref*, %struct.df_ref** %123, align 8
  store %struct.df_ref* %124, %struct.df_ref** %7, align 8
  br label %18

125:                                              ; preds = %18
  ret void
}

declare dso_local i32 @DF_REF_FLAGS(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_REGNO(%struct.df_ref*) #1

declare dso_local %struct.TYPE_2__* @DF_REG_DEF_GET(%struct.df*, i32) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @bitmap_clear_range(i32, i32, i32) #1

declare dso_local i32 @df_ref_bitmap(i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_ior_into(i32, i32) #1

declare dso_local i32 @bitmap_and_compl_into(i32, i32) #1

declare dso_local i32 @DF_REF_ID(%struct.df_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
