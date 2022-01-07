; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_program_stats_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_program_stats_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vfe_stats_cmd_data = type { i32, i32, i32, i32, i32, i32 }
%struct.VFE_StatsCmdType = type { i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_STATS_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_stats_cmd_data*)* @vfe_program_stats_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_program_stats_cmd(%struct.vfe_stats_cmd_data* %0) #0 {
  %2 = alloca %struct.vfe_stats_cmd_data*, align 8
  %3 = alloca %struct.VFE_StatsCmdType, align 4
  store %struct.vfe_stats_cmd_data* %0, %struct.vfe_stats_cmd_data** %2, align 8
  %4 = call i32 @memset(%struct.VFE_StatsCmdType* %3, i32 0, i32 24)
  %5 = load %struct.vfe_stats_cmd_data*, %struct.vfe_stats_cmd_data** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_stats_cmd_data, %struct.vfe_stats_cmd_data* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.VFE_StatsCmdType, %struct.VFE_StatsCmdType* %3, i32 0, i32 5
  store i32 %7, i32* %8, align 4
  %9 = load %struct.vfe_stats_cmd_data*, %struct.vfe_stats_cmd_data** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_stats_cmd_data, %struct.vfe_stats_cmd_data* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.VFE_StatsCmdType, %struct.VFE_StatsCmdType* %3, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load %struct.vfe_stats_cmd_data*, %struct.vfe_stats_cmd_data** %2, align 8
  %14 = getelementptr inbounds %struct.vfe_stats_cmd_data, %struct.vfe_stats_cmd_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.VFE_StatsCmdType, %struct.VFE_StatsCmdType* %3, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.vfe_stats_cmd_data*, %struct.vfe_stats_cmd_data** %2, align 8
  %18 = getelementptr inbounds %struct.vfe_stats_cmd_data, %struct.vfe_stats_cmd_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.VFE_StatsCmdType, %struct.VFE_StatsCmdType* %3, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.vfe_stats_cmd_data*, %struct.vfe_stats_cmd_data** %2, align 8
  %22 = getelementptr inbounds %struct.vfe_stats_cmd_data, %struct.vfe_stats_cmd_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.VFE_StatsCmdType, %struct.VFE_StatsCmdType* %3, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.vfe_stats_cmd_data*, %struct.vfe_stats_cmd_data** %2, align 8
  %26 = getelementptr inbounds %struct.vfe_stats_cmd_data, %struct.vfe_stats_cmd_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.VFE_StatsCmdType, %struct.VFE_StatsCmdType* %3, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.VFE_StatsCmdType* %3 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VFE_STATS_CMD, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  ret void
}

declare dso_local i32 @memset(%struct.VFE_StatsCmdType*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
