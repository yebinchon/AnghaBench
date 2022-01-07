; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_pm_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_pm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vfe_cmd_bus_pm_start = type { i32, i32, i32, i32 }
%struct.VFE_Bus_Pm_ConfigCmdType = type { i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_BUS_PM_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_cmd_bus_pm_start*)* @vfe_pm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_pm_start(%struct.vfe_cmd_bus_pm_start* %0) #0 {
  %2 = alloca %struct.vfe_cmd_bus_pm_start*, align 8
  %3 = alloca %struct.VFE_Bus_Pm_ConfigCmdType, align 4
  store %struct.vfe_cmd_bus_pm_start* %0, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %4 = call i32 @memset(%struct.VFE_Bus_Pm_ConfigCmdType* %3, i32 0, i32 16)
  %5 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.VFE_Bus_Pm_ConfigCmdType, %struct.VFE_Bus_Pm_ConfigCmdType* %3, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.VFE_Bus_Pm_ConfigCmdType, %struct.VFE_Bus_Pm_ConfigCmdType* %3, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %14 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.VFE_Bus_Pm_ConfigCmdType, %struct.VFE_Bus_Pm_ConfigCmdType* %3, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %18 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.VFE_Bus_Pm_ConfigCmdType, %struct.VFE_Bus_Pm_ConfigCmdType* %3, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VFE_BUS_PM_CFG, align 8
  %25 = add nsw i64 %23, %24
  %26 = bitcast %struct.VFE_Bus_Pm_ConfigCmdType* %3 to i32*
  %27 = call i32 @vfe_prog_hw(i64 %25, i32* %26, i32 16)
  ret void
}

declare dso_local i32 @memset(%struct.VFE_Bus_Pm_ConfigCmdType*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
