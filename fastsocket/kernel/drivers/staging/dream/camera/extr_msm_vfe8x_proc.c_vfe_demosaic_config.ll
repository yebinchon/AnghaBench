; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_demosaic_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_demosaic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vfe_cmd_demosaic_config = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_demosaic_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_demosaic_bpc_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_demosaic_abf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_8__* null, align 8
@VFE_DEMOSAIC_CFG = common dso_local global i64 0, align 8
@VFE_DEMOSAIC_ABF_CFG_0 = common dso_local global i64 0, align 8
@VFE_DEMOSAIC_BPC_CFG_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_demosaic_config(%struct.vfe_cmd_demosaic_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_demosaic_config*, align 8
  %3 = alloca %struct.vfe_demosaic_cfg, align 4
  %4 = alloca %struct.vfe_demosaic_bpc_cfg, align 4
  %5 = alloca %struct.vfe_demosaic_abf_cfg, align 4
  store %struct.vfe_cmd_demosaic_config* %0, %struct.vfe_cmd_demosaic_config** %2, align 8
  %6 = call i32 @memset(%struct.vfe_demosaic_cfg* %3, i32 0, i32 56)
  %7 = bitcast %struct.vfe_demosaic_bpc_cfg* %4 to %struct.vfe_demosaic_cfg*
  %8 = call i32 @memset(%struct.vfe_demosaic_cfg* %7, i32 0, i32 56)
  %9 = bitcast %struct.vfe_demosaic_abf_cfg* %5 to %struct.vfe_demosaic_cfg*
  %10 = call i32 @memset(%struct.vfe_demosaic_cfg* %9, i32 0, i32 56)
  %11 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %12 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %18 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.vfe_demosaic_cfg, %struct.vfe_demosaic_cfg* %3, i32 0, i32 13
  store i32 %20, i32* %21, align 4
  %22 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %23 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.vfe_demosaic_cfg, %struct.vfe_demosaic_cfg* %3, i32 0, i32 12
  store i32 %25, i32* %26, align 4
  %27 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %28 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.vfe_demosaic_cfg, %struct.vfe_demosaic_cfg* %3, i32 0, i32 11
  store i32 %30, i32* %31, align 4
  %32 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %33 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.vfe_demosaic_cfg, %struct.vfe_demosaic_cfg* %3, i32 0, i32 10
  store i32 %35, i32* %36, align 4
  %37 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %38 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.vfe_demosaic_cfg, %struct.vfe_demosaic_cfg* %3, i32 0, i32 9
  store i32 %40, i32* %41, align 4
  %42 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %43 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.vfe_demosaic_cfg, %struct.vfe_demosaic_cfg* %3, i32 0, i32 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %48 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.vfe_demosaic_cfg, %struct.vfe_demosaic_cfg* %3, i32 0, i32 7
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VFE_DEMOSAIC_CFG, align 8
  %55 = add nsw i64 %53, %54
  %56 = bitcast %struct.vfe_demosaic_cfg* %3 to i32*
  %57 = call i32 @vfe_prog_hw(i64 %55, i32* %56, i32 56)
  %58 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %59 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.vfe_demosaic_abf_cfg, %struct.vfe_demosaic_abf_cfg* %5, i32 0, i32 6
  store i32 %61, i32* %62, align 4
  %63 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %64 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.vfe_demosaic_abf_cfg, %struct.vfe_demosaic_abf_cfg* %5, i32 0, i32 5
  store i32 %66, i32* %67, align 4
  %68 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %69 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.vfe_demosaic_abf_cfg, %struct.vfe_demosaic_abf_cfg* %5, i32 0, i32 4
  store i32 %71, i32* %72, align 4
  %73 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %74 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.vfe_demosaic_abf_cfg, %struct.vfe_demosaic_abf_cfg* %5, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VFE_DEMOSAIC_ABF_CFG_0, align 8
  %82 = add nsw i64 %80, %81
  %83 = bitcast %struct.vfe_demosaic_abf_cfg* %5 to i32*
  %84 = call i32 @vfe_prog_hw(i64 %82, i32* %83, i32 56)
  %85 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %86 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.vfe_demosaic_bpc_cfg, %struct.vfe_demosaic_bpc_cfg* %4, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  %90 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %91 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.vfe_demosaic_bpc_cfg, %struct.vfe_demosaic_bpc_cfg* %4, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  %95 = load %struct.vfe_cmd_demosaic_config*, %struct.vfe_cmd_demosaic_config** %2, align 8
  %96 = getelementptr inbounds %struct.vfe_cmd_demosaic_config, %struct.vfe_cmd_demosaic_config* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.vfe_demosaic_bpc_cfg, %struct.vfe_demosaic_bpc_cfg* %4, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @VFE_DEMOSAIC_BPC_CFG_0, align 8
  %104 = add nsw i64 %102, %103
  %105 = bitcast %struct.vfe_demosaic_bpc_cfg* %4 to i32*
  %106 = call i32 @vfe_prog_hw(i64 %104, i32* %105, i32 56)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_demosaic_cfg*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
