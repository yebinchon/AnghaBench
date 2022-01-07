; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_frame_skip_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_frame_skip_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.vfe_cmd_frame_skip_config }
%struct.vfe_cmd_frame_skip_config = type { i32, i32, i32, i32 }
%struct.vfe_frame_skip_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_FRAMEDROP_ENC_Y_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_frame_skip_config(%struct.vfe_cmd_frame_skip_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_frame_skip_config*, align 8
  %3 = alloca %struct.vfe_frame_skip_cfg, align 4
  store %struct.vfe_cmd_frame_skip_config* %0, %struct.vfe_cmd_frame_skip_config** %2, align 8
  %4 = call i32 @memset(%struct.vfe_frame_skip_cfg* %3, i32 0, i32 32)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.vfe_cmd_frame_skip_config*, %struct.vfe_cmd_frame_skip_config** %2, align 8
  %8 = bitcast %struct.vfe_cmd_frame_skip_config* %6 to i8*
  %9 = bitcast %struct.vfe_cmd_frame_skip_config* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 4 %9, i64 16, i1 false)
  %10 = load %struct.vfe_cmd_frame_skip_config*, %struct.vfe_cmd_frame_skip_config** %2, align 8
  %11 = getelementptr inbounds %struct.vfe_cmd_frame_skip_config, %struct.vfe_cmd_frame_skip_config* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.vfe_frame_skip_cfg, %struct.vfe_frame_skip_cfg* %3, i32 0, i32 7
  store i32 %12, i32* %13, align 4
  %14 = load %struct.vfe_cmd_frame_skip_config*, %struct.vfe_cmd_frame_skip_config** %2, align 8
  %15 = getelementptr inbounds %struct.vfe_cmd_frame_skip_config, %struct.vfe_cmd_frame_skip_config* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.vfe_frame_skip_cfg, %struct.vfe_frame_skip_cfg* %3, i32 0, i32 6
  store i32 %16, i32* %17, align 4
  %18 = load %struct.vfe_cmd_frame_skip_config*, %struct.vfe_cmd_frame_skip_config** %2, align 8
  %19 = getelementptr inbounds %struct.vfe_cmd_frame_skip_config, %struct.vfe_cmd_frame_skip_config* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.vfe_frame_skip_cfg, %struct.vfe_frame_skip_cfg* %3, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load %struct.vfe_cmd_frame_skip_config*, %struct.vfe_cmd_frame_skip_config** %2, align 8
  %23 = getelementptr inbounds %struct.vfe_cmd_frame_skip_config, %struct.vfe_cmd_frame_skip_config* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.vfe_frame_skip_cfg, %struct.vfe_frame_skip_cfg* %3, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load %struct.vfe_cmd_frame_skip_config*, %struct.vfe_cmd_frame_skip_config** %2, align 8
  %27 = getelementptr inbounds %struct.vfe_cmd_frame_skip_config, %struct.vfe_cmd_frame_skip_config* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.vfe_frame_skip_cfg, %struct.vfe_frame_skip_cfg* %3, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.vfe_cmd_frame_skip_config*, %struct.vfe_cmd_frame_skip_config** %2, align 8
  %31 = getelementptr inbounds %struct.vfe_cmd_frame_skip_config, %struct.vfe_cmd_frame_skip_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.vfe_frame_skip_cfg, %struct.vfe_frame_skip_cfg* %3, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.vfe_cmd_frame_skip_config*, %struct.vfe_cmd_frame_skip_config** %2, align 8
  %35 = getelementptr inbounds %struct.vfe_cmd_frame_skip_config, %struct.vfe_cmd_frame_skip_config* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.vfe_frame_skip_cfg, %struct.vfe_frame_skip_cfg* %3, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.vfe_cmd_frame_skip_config*, %struct.vfe_cmd_frame_skip_config** %2, align 8
  %39 = getelementptr inbounds %struct.vfe_cmd_frame_skip_config, %struct.vfe_cmd_frame_skip_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.vfe_frame_skip_cfg, %struct.vfe_frame_skip_cfg* %3, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VFE_FRAMEDROP_ENC_Y_CFG, align 8
  %46 = add nsw i64 %44, %45
  %47 = bitcast %struct.vfe_frame_skip_cfg* %3 to i32*
  %48 = call i32 @vfe_prog_hw(i64 %46, i32* %47, i32 32)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_frame_skip_cfg*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
