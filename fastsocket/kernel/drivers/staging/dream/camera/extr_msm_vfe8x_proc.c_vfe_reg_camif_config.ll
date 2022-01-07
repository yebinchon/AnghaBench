; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_reg_camif_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_reg_camif_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.vfe_camif_cfg_data = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.VFE_CAMIFConfigType = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@CAMIF_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_camif_cfg_data*)* @vfe_reg_camif_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_reg_camif_config(%struct.vfe_camif_cfg_data* %0) #0 {
  %2 = alloca %struct.vfe_camif_cfg_data*, align 8
  %3 = alloca %struct.VFE_CAMIFConfigType, align 4
  store %struct.vfe_camif_cfg_data* %0, %struct.vfe_camif_cfg_data** %2, align 8
  %4 = call i32 @memset(%struct.VFE_CAMIFConfigType* %3, i32 0, i32 40)
  %5 = load %struct.vfe_camif_cfg_data*, %struct.vfe_camif_cfg_data** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_camif_cfg_data, %struct.vfe_camif_cfg_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.VFE_CAMIFConfigType, %struct.VFE_CAMIFConfigType* %3, i32 0, i32 9
  store i32 %8, i32* %9, align 4
  %10 = load %struct.vfe_camif_cfg_data*, %struct.vfe_camif_cfg_data** %2, align 8
  %11 = getelementptr inbounds %struct.vfe_camif_cfg_data, %struct.vfe_camif_cfg_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.VFE_CAMIFConfigType, %struct.VFE_CAMIFConfigType* %3, i32 0, i32 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.vfe_camif_cfg_data*, %struct.vfe_camif_cfg_data** %2, align 8
  %16 = getelementptr inbounds %struct.vfe_camif_cfg_data, %struct.vfe_camif_cfg_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.VFE_CAMIFConfigType, %struct.VFE_CAMIFConfigType* %3, i32 0, i32 7
  store i32 %18, i32* %19, align 4
  %20 = load %struct.vfe_camif_cfg_data*, %struct.vfe_camif_cfg_data** %2, align 8
  %21 = getelementptr inbounds %struct.vfe_camif_cfg_data, %struct.vfe_camif_cfg_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.VFE_CAMIFConfigType, %struct.VFE_CAMIFConfigType* %3, i32 0, i32 6
  store i32 %23, i32* %24, align 4
  %25 = load %struct.vfe_camif_cfg_data*, %struct.vfe_camif_cfg_data** %2, align 8
  %26 = getelementptr inbounds %struct.vfe_camif_cfg_data, %struct.vfe_camif_cfg_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.VFE_CAMIFConfigType, %struct.VFE_CAMIFConfigType* %3, i32 0, i32 5
  store i32 %28, i32* %29, align 4
  %30 = load %struct.vfe_camif_cfg_data*, %struct.vfe_camif_cfg_data** %2, align 8
  %31 = getelementptr inbounds %struct.vfe_camif_cfg_data, %struct.vfe_camif_cfg_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.VFE_CAMIFConfigType, %struct.VFE_CAMIFConfigType* %3, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  %34 = load %struct.vfe_camif_cfg_data*, %struct.vfe_camif_cfg_data** %2, align 8
  %35 = getelementptr inbounds %struct.vfe_camif_cfg_data, %struct.vfe_camif_cfg_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.VFE_CAMIFConfigType, %struct.VFE_CAMIFConfigType* %3, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load %struct.vfe_camif_cfg_data*, %struct.vfe_camif_cfg_data** %2, align 8
  %39 = getelementptr inbounds %struct.vfe_camif_cfg_data, %struct.vfe_camif_cfg_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.VFE_CAMIFConfigType, %struct.VFE_CAMIFConfigType* %3, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.vfe_camif_cfg_data*, %struct.vfe_camif_cfg_data** %2, align 8
  %44 = getelementptr inbounds %struct.vfe_camif_cfg_data, %struct.vfe_camif_cfg_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.VFE_CAMIFConfigType, %struct.VFE_CAMIFConfigType* %3, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.vfe_camif_cfg_data*, %struct.vfe_camif_cfg_data** %2, align 8
  %49 = getelementptr inbounds %struct.vfe_camif_cfg_data, %struct.vfe_camif_cfg_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.VFE_CAMIFConfigType, %struct.VFE_CAMIFConfigType* %3, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = bitcast %struct.VFE_CAMIFConfigType* %3 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CAMIF_CONFIG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  ret void
}

declare dso_local i32 @memset(%struct.VFE_CAMIFConfigType*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
