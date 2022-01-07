; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_insn_refs_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_insn_refs_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i64, %struct.df* }
%struct.df = type { i32 }
%struct.df_insn_info = type { %struct.df_ref*, %struct.df_ref*, %struct.df_insn_info*, %struct.df_insn_info*, %struct.df_insn_info* }
%struct.df_ref = type { i32 }
%struct.df_scan_problem_data = type { i32, i32, i32 }
%struct.df_mw_hardreg = type { %struct.df_ref*, %struct.df_ref*, %struct.df_mw_hardreg*, %struct.df_mw_hardreg*, %struct.df_mw_hardreg* }
%struct.df_link = type { %struct.df_ref*, %struct.df_ref*, %struct.df_link*, %struct.df_link*, %struct.df_link* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_insn_refs_delete(%struct.dataflow* %0, i32 %1) #0 {
  %3 = alloca %struct.dataflow*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.df*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.df_insn_info*, align 8
  %8 = alloca %struct.df_ref*, align 8
  %9 = alloca %struct.df_scan_problem_data*, align 8
  %10 = alloca %struct.df_mw_hardreg*, align 8
  %11 = alloca %struct.df_mw_hardreg*, align 8
  %12 = alloca %struct.df_link*, align 8
  %13 = alloca %struct.df_link*, align 8
  store %struct.dataflow* %0, %struct.dataflow** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %15 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %14, i32 0, i32 1
  %16 = load %struct.df*, %struct.df** %15, align 8
  store %struct.df* %16, %struct.df** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @INSN_UID(i32 %17)
  store i32 %18, i32* %6, align 4
  store %struct.df_insn_info* null, %struct.df_insn_info** %7, align 8
  %19 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %20 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.df_scan_problem_data*
  store %struct.df_scan_problem_data* %22, %struct.df_scan_problem_data** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.df*, %struct.df** %5, align 8
  %25 = getelementptr inbounds %struct.df, %struct.df* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.df*, %struct.df** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.df_mw_hardreg* @DF_INSN_UID_GET(%struct.df* %29, i32 %30)
  %32 = bitcast %struct.df_mw_hardreg* %31 to %struct.df_insn_info*
  store %struct.df_insn_info* %32, %struct.df_insn_info** %7, align 8
  br label %33

33:                                               ; preds = %28, %2
  %34 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %35 = icmp ne %struct.df_insn_info* %34, null
  br i1 %35, label %36, label %105

36:                                               ; preds = %33
  %37 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %38 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %37, i32 0, i32 4
  %39 = load %struct.df_insn_info*, %struct.df_insn_info** %38, align 8
  %40 = bitcast %struct.df_insn_info* %39 to %struct.df_mw_hardreg*
  store %struct.df_mw_hardreg* %40, %struct.df_mw_hardreg** %10, align 8
  br label %41

41:                                               ; preds = %66, %36
  %42 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %10, align 8
  %43 = icmp ne %struct.df_mw_hardreg* %42, null
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %10, align 8
  %46 = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %45, i32 0, i32 2
  %47 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %46, align 8
  store %struct.df_mw_hardreg* %47, %struct.df_mw_hardreg** %11, align 8
  %48 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %10, align 8
  %49 = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %48, i32 0, i32 3
  %50 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %49, align 8
  %51 = bitcast %struct.df_mw_hardreg* %50 to %struct.df_link*
  store %struct.df_link* %51, %struct.df_link** %12, align 8
  br label %52

52:                                               ; preds = %55, %44
  %53 = load %struct.df_link*, %struct.df_link** %12, align 8
  %54 = icmp ne %struct.df_link* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.df_link*, %struct.df_link** %12, align 8
  %57 = getelementptr inbounds %struct.df_link, %struct.df_link* %56, i32 0, i32 2
  %58 = load %struct.df_link*, %struct.df_link** %57, align 8
  store %struct.df_link* %58, %struct.df_link** %13, align 8
  %59 = load %struct.df_scan_problem_data*, %struct.df_scan_problem_data** %9, align 8
  %60 = getelementptr inbounds %struct.df_scan_problem_data, %struct.df_scan_problem_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.df_link*, %struct.df_link** %12, align 8
  %63 = bitcast %struct.df_link* %62 to %struct.df_mw_hardreg*
  %64 = call i32 @pool_free(i32 %61, %struct.df_mw_hardreg* %63)
  %65 = load %struct.df_link*, %struct.df_link** %13, align 8
  store %struct.df_link* %65, %struct.df_link** %12, align 8
  br label %52

66:                                               ; preds = %52
  %67 = load %struct.df_scan_problem_data*, %struct.df_scan_problem_data** %9, align 8
  %68 = getelementptr inbounds %struct.df_scan_problem_data, %struct.df_scan_problem_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %10, align 8
  %71 = call i32 @pool_free(i32 %69, %struct.df_mw_hardreg* %70)
  %72 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %11, align 8
  store %struct.df_mw_hardreg* %72, %struct.df_mw_hardreg** %10, align 8
  br label %41

73:                                               ; preds = %41
  %74 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %75 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %74, i32 0, i32 1
  %76 = load %struct.df_ref*, %struct.df_ref** %75, align 8
  store %struct.df_ref* %76, %struct.df_ref** %8, align 8
  br label %77

77:                                               ; preds = %80, %73
  %78 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %79 = icmp ne %struct.df_ref* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %82 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %83 = call %struct.df_ref* @df_reg_chain_unlink(%struct.dataflow* %81, %struct.df_ref* %82)
  store %struct.df_ref* %83, %struct.df_ref** %8, align 8
  br label %77

84:                                               ; preds = %77
  %85 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %86 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %85, i32 0, i32 0
  %87 = load %struct.df_ref*, %struct.df_ref** %86, align 8
  store %struct.df_ref* %87, %struct.df_ref** %8, align 8
  br label %88

88:                                               ; preds = %91, %84
  %89 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %90 = icmp ne %struct.df_ref* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %93 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %94 = call %struct.df_ref* @df_reg_chain_unlink(%struct.dataflow* %92, %struct.df_ref* %93)
  store %struct.df_ref* %94, %struct.df_ref** %8, align 8
  br label %88

95:                                               ; preds = %88
  %96 = load %struct.df_scan_problem_data*, %struct.df_scan_problem_data** %9, align 8
  %97 = getelementptr inbounds %struct.df_scan_problem_data, %struct.df_scan_problem_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %100 = bitcast %struct.df_insn_info* %99 to %struct.df_mw_hardreg*
  %101 = call i32 @pool_free(i32 %98, %struct.df_mw_hardreg* %100)
  %102 = load %struct.df*, %struct.df** %5, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @DF_INSN_SET(%struct.df* %102, i32 %103, i32* null)
  br label %105

105:                                              ; preds = %95, %33
  ret void
}

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local %struct.df_mw_hardreg* @DF_INSN_UID_GET(%struct.df*, i32) #1

declare dso_local i32 @pool_free(i32, %struct.df_mw_hardreg*) #1

declare dso_local %struct.df_ref* @df_reg_chain_unlink(%struct.dataflow*, %struct.df_ref*) #1

declare dso_local i32 @DF_INSN_SET(%struct.df*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
