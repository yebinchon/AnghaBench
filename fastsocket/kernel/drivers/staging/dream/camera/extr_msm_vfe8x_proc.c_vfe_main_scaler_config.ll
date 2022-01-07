; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_main_scaler_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_main_scaler_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.vfe_cmd_main_scaler_config = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.vfe_main_scaler_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_12__* null, align 8
@VFE_SCALE_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_main_scaler_config(%struct.vfe_cmd_main_scaler_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_main_scaler_config*, align 8
  %3 = alloca %struct.vfe_main_scaler_cfg, align 4
  store %struct.vfe_cmd_main_scaler_config* %0, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %4 = call i32 @memset(%struct.vfe_main_scaler_cfg* %3, i32 0, i32 56)
  %5 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %12 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 13
  store i32 %14, i32* %15, align 4
  %16 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %17 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 12
  store i32 %19, i32* %20, align 4
  %21 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %22 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 11
  store i32 %24, i32* %25, align 4
  %26 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %27 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 10
  store i32 %29, i32* %30, align 4
  %31 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %32 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 9
  store i32 %34, i32* %35, align 4
  %36 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %37 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %42 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 7
  store i32 %44, i32* %45, align 4
  %46 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %47 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 6
  store i32 %49, i32* %50, align 4
  %51 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %52 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %57 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 4
  store i32 %59, i32* %60, align 4
  %61 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %62 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %67 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %72 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.vfe_cmd_main_scaler_config*, %struct.vfe_cmd_main_scaler_config** %2, align 8
  %77 = getelementptr inbounds %struct.vfe_cmd_main_scaler_config, %struct.vfe_cmd_main_scaler_config* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.vfe_main_scaler_cfg, %struct.vfe_main_scaler_cfg* %3, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @VFE_SCALE_CFG, align 8
  %85 = add nsw i64 %83, %84
  %86 = bitcast %struct.vfe_main_scaler_cfg* %3 to i32*
  %87 = call i32 @vfe_prog_hw(i64 %85, i32* %86, i32 56)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_main_scaler_cfg*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
