; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_insn_create_insn_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_insn_create_insn_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_insn_info = type { i32 }
%struct.dataflow = type { i64, %struct.df* }
%struct.df = type { i32 }
%struct.df_scan_problem_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.df_insn_info* (%struct.dataflow*, i32)* @df_insn_create_insn_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.df_insn_info* @df_insn_create_insn_record(%struct.dataflow* %0, i32 %1) #0 {
  %3 = alloca %struct.dataflow*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.df*, align 8
  %6 = alloca %struct.df_scan_problem_data*, align 8
  %7 = alloca %struct.df_insn_info*, align 8
  store %struct.dataflow* %0, %struct.dataflow** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %9 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %8, i32 0, i32 1
  %10 = load %struct.df*, %struct.df** %9, align 8
  store %struct.df* %10, %struct.df** %5, align 8
  %11 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %12 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.df_scan_problem_data*
  store %struct.df_scan_problem_data* %14, %struct.df_scan_problem_data** %6, align 8
  %15 = load %struct.df*, %struct.df** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.df_insn_info* @DF_INSN_GET(%struct.df* %15, i32 %16)
  store %struct.df_insn_info* %17, %struct.df_insn_info** %7, align 8
  %18 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %19 = icmp ne %struct.df_insn_info* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.df_scan_problem_data*, %struct.df_scan_problem_data** %6, align 8
  %22 = getelementptr inbounds %struct.df_scan_problem_data, %struct.df_scan_problem_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.df_insn_info* @pool_alloc(i32 %23)
  store %struct.df_insn_info* %24, %struct.df_insn_info** %7, align 8
  %25 = load %struct.df*, %struct.df** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %28 = call i32 @DF_INSN_SET(%struct.df* %25, i32 %26, %struct.df_insn_info* %27)
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %31 = call i32 @memset(%struct.df_insn_info* %30, i32 0, i32 4)
  %32 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  ret %struct.df_insn_info* %32
}

declare dso_local %struct.df_insn_info* @DF_INSN_GET(%struct.df*, i32) #1

declare dso_local %struct.df_insn_info* @pool_alloc(i32) #1

declare dso_local i32 @DF_INSN_SET(%struct.df*, i32, %struct.df_insn_info*) #1

declare dso_local i32 @memset(%struct.df_insn_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
