; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_demosaic_abf_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_demosaic_abf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.vfe_cmd_demosaic_abf_update = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_demosaic_cfg = type { i32, i32, i32 }
%struct.vfe_demosaic_abf_cfg = type { i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@VFE_DEMOSAIC_CFG = common dso_local global i64 0, align 8
@VFE_DEMOSAIC_ABF_CFG_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_demosaic_abf_update(%struct.vfe_cmd_demosaic_abf_update* %0) #0 {
  %2 = alloca %struct.vfe_cmd_demosaic_abf_update*, align 8
  %3 = alloca %struct.vfe_demosaic_cfg, align 4
  %4 = alloca %struct.vfe_demosaic_abf_cfg, align 4
  %5 = alloca i32, align 4
  store %struct.vfe_cmd_demosaic_abf_update* %0, %struct.vfe_cmd_demosaic_abf_update** %2, align 8
  %6 = call i32 @memset(%struct.vfe_demosaic_cfg* %3, i32 0, i32 12)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VFE_DEMOSAIC_CFG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = bitcast i32* %5 to %struct.vfe_demosaic_cfg*
  %14 = bitcast %struct.vfe_demosaic_cfg* %3 to i8*
  %15 = bitcast %struct.vfe_demosaic_cfg* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 12, i1 false)
  %16 = load %struct.vfe_cmd_demosaic_abf_update*, %struct.vfe_cmd_demosaic_abf_update** %2, align 8
  %17 = getelementptr inbounds %struct.vfe_cmd_demosaic_abf_update, %struct.vfe_cmd_demosaic_abf_update* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.vfe_demosaic_cfg, %struct.vfe_demosaic_cfg* %3, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.vfe_cmd_demosaic_abf_update*, %struct.vfe_cmd_demosaic_abf_update** %2, align 8
  %22 = getelementptr inbounds %struct.vfe_cmd_demosaic_abf_update, %struct.vfe_cmd_demosaic_abf_update* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.vfe_demosaic_cfg, %struct.vfe_demosaic_cfg* %3, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.vfe_cmd_demosaic_abf_update*, %struct.vfe_cmd_demosaic_abf_update** %2, align 8
  %27 = getelementptr inbounds %struct.vfe_cmd_demosaic_abf_update, %struct.vfe_cmd_demosaic_abf_update* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.vfe_demosaic_cfg, %struct.vfe_demosaic_cfg* %3, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VFE_DEMOSAIC_CFG, align 8
  %35 = add nsw i64 %33, %34
  %36 = bitcast %struct.vfe_demosaic_cfg* %3 to i32*
  %37 = call i32 @vfe_prog_hw(i64 %35, i32* %36, i32 12)
  %38 = load %struct.vfe_cmd_demosaic_abf_update*, %struct.vfe_cmd_demosaic_abf_update** %2, align 8
  %39 = getelementptr inbounds %struct.vfe_cmd_demosaic_abf_update, %struct.vfe_cmd_demosaic_abf_update* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.vfe_demosaic_abf_cfg, %struct.vfe_demosaic_abf_cfg* %4, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.vfe_cmd_demosaic_abf_update*, %struct.vfe_cmd_demosaic_abf_update** %2, align 8
  %44 = getelementptr inbounds %struct.vfe_cmd_demosaic_abf_update, %struct.vfe_cmd_demosaic_abf_update* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.vfe_demosaic_abf_cfg, %struct.vfe_demosaic_abf_cfg* %4, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.vfe_cmd_demosaic_abf_update*, %struct.vfe_cmd_demosaic_abf_update** %2, align 8
  %49 = getelementptr inbounds %struct.vfe_cmd_demosaic_abf_update, %struct.vfe_cmd_demosaic_abf_update* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.vfe_demosaic_abf_cfg, %struct.vfe_demosaic_abf_cfg* %4, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.vfe_cmd_demosaic_abf_update*, %struct.vfe_cmd_demosaic_abf_update** %2, align 8
  %54 = getelementptr inbounds %struct.vfe_cmd_demosaic_abf_update, %struct.vfe_cmd_demosaic_abf_update* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.vfe_demosaic_abf_cfg, %struct.vfe_demosaic_abf_cfg* %4, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VFE_DEMOSAIC_ABF_CFG_0, align 8
  %62 = add nsw i64 %60, %61
  %63 = bitcast %struct.vfe_demosaic_abf_cfg* %4 to i32*
  %64 = call i32 @vfe_prog_hw(i64 %62, i32* %63, i32 16)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_demosaic_cfg*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

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
