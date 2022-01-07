; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_roll_off_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_roll_off_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vfe_cmd_roll_off_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_rolloff_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@VFE_ROLLOFF_CFG_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_roll_off_config(%struct.vfe_cmd_roll_off_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_roll_off_config*, align 8
  %3 = alloca %struct.vfe_rolloff_cfg, align 4
  store %struct.vfe_cmd_roll_off_config* %0, %struct.vfe_cmd_roll_off_config** %2, align 8
  %4 = call i32 @memset(%struct.vfe_rolloff_cfg* %3, i32 0, i32 32)
  %5 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %12 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.vfe_rolloff_cfg, %struct.vfe_rolloff_cfg* %3, i32 0, i32 7
  store i32 %13, i32* %14, align 4
  %15 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %16 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.vfe_rolloff_cfg, %struct.vfe_rolloff_cfg* %3, i32 0, i32 6
  store i32 %17, i32* %18, align 4
  %19 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %20 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.vfe_rolloff_cfg, %struct.vfe_rolloff_cfg* %3, i32 0, i32 5
  store i32 %21, i32* %22, align 4
  %23 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %24 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.vfe_rolloff_cfg, %struct.vfe_rolloff_cfg* %3, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %28 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.vfe_rolloff_cfg, %struct.vfe_rolloff_cfg* %3, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %32 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.vfe_rolloff_cfg, %struct.vfe_rolloff_cfg* %3, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %36 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.vfe_rolloff_cfg, %struct.vfe_rolloff_cfg* %3, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %40 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.vfe_rolloff_cfg, %struct.vfe_rolloff_cfg* %3, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VFE_ROLLOFF_CFG_0, align 8
  %47 = add nsw i64 %45, %46
  %48 = bitcast %struct.vfe_rolloff_cfg* %3 to i32*
  %49 = call i32 @vfe_prog_hw(i64 %47, i32* %48, i32 32)
  %50 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %51 = call i32 @vfe_write_lens_roll_off_table(%struct.vfe_cmd_roll_off_config* %50)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_rolloff_cfg*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

declare dso_local i32 @vfe_write_lens_roll_off_table(%struct.vfe_cmd_roll_off_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
