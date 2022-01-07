; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_output_clamp_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_output_clamp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vfe_cmd_output_clamp_config = type { i32, i32, i32, i32, i32, i32 }
%struct.vfe_output_clamp_cfg = type { i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_CLAMP_MAX_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_output_clamp_config(%struct.vfe_cmd_output_clamp_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_output_clamp_config*, align 8
  %3 = alloca %struct.vfe_output_clamp_cfg, align 4
  store %struct.vfe_cmd_output_clamp_config* %0, %struct.vfe_cmd_output_clamp_config** %2, align 8
  %4 = call i32 @memset(%struct.vfe_output_clamp_cfg* %3, i32 0, i32 24)
  %5 = load %struct.vfe_cmd_output_clamp_config*, %struct.vfe_cmd_output_clamp_config** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_cmd_output_clamp_config, %struct.vfe_cmd_output_clamp_config* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.vfe_output_clamp_cfg, %struct.vfe_output_clamp_cfg* %3, i32 0, i32 5
  store i32 %7, i32* %8, align 4
  %9 = load %struct.vfe_cmd_output_clamp_config*, %struct.vfe_cmd_output_clamp_config** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_cmd_output_clamp_config, %struct.vfe_cmd_output_clamp_config* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.vfe_output_clamp_cfg, %struct.vfe_output_clamp_cfg* %3, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load %struct.vfe_cmd_output_clamp_config*, %struct.vfe_cmd_output_clamp_config** %2, align 8
  %14 = getelementptr inbounds %struct.vfe_cmd_output_clamp_config, %struct.vfe_cmd_output_clamp_config* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.vfe_output_clamp_cfg, %struct.vfe_output_clamp_cfg* %3, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.vfe_cmd_output_clamp_config*, %struct.vfe_cmd_output_clamp_config** %2, align 8
  %18 = getelementptr inbounds %struct.vfe_cmd_output_clamp_config, %struct.vfe_cmd_output_clamp_config* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.vfe_output_clamp_cfg, %struct.vfe_output_clamp_cfg* %3, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.vfe_cmd_output_clamp_config*, %struct.vfe_cmd_output_clamp_config** %2, align 8
  %22 = getelementptr inbounds %struct.vfe_cmd_output_clamp_config, %struct.vfe_cmd_output_clamp_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.vfe_output_clamp_cfg, %struct.vfe_output_clamp_cfg* %3, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.vfe_cmd_output_clamp_config*, %struct.vfe_cmd_output_clamp_config** %2, align 8
  %26 = getelementptr inbounds %struct.vfe_cmd_output_clamp_config, %struct.vfe_cmd_output_clamp_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.vfe_output_clamp_cfg, %struct.vfe_output_clamp_cfg* %3, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VFE_CLAMP_MAX_CFG, align 8
  %33 = add nsw i64 %31, %32
  %34 = bitcast %struct.vfe_output_clamp_cfg* %3 to i32*
  %35 = call i32 @vfe_prog_hw(i64 %33, i32* %34, i32 24)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_output_clamp_cfg*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
