; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_get_artificial_defs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_get_artificial_defs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { i32 }
%struct.df = type { %struct.dataflow** }
%struct.dataflow = type { i32 }
%struct.TYPE_2__ = type { %struct.df_ref* }

@DF_SCAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.df_ref* @df_get_artificial_defs(%struct.df* %0, i32 %1) #0 {
  %3 = alloca %struct.df*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dataflow*, align 8
  store %struct.df* %0, %struct.df** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.df*, %struct.df** %3, align 8
  %7 = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 0
  %8 = load %struct.dataflow**, %struct.dataflow*** %7, align 8
  %9 = load i64, i64* @DF_SCAN, align 8
  %10 = getelementptr inbounds %struct.dataflow*, %struct.dataflow** %8, i64 %9
  %11 = load %struct.dataflow*, %struct.dataflow** %10, align 8
  store %struct.dataflow* %11, %struct.dataflow** %5, align 8
  %12 = load %struct.dataflow*, %struct.dataflow** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.TYPE_2__* @df_scan_get_bb_info(%struct.dataflow* %12, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.df_ref*, %struct.df_ref** %15, align 8
  ret %struct.df_ref* %16
}

declare dso_local %struct.TYPE_2__* @df_scan_get_bb_info(%struct.dataflow*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
