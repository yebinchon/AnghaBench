; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_set_default_reg_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_set_default_reg_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_DEMUX_GAIN_0 = common dso_local global i64 0, align 8
@VFE_DEMUX_GAIN_1 = common dso_local global i64 0, align 8
@VFE_CGC_OVERRIDE = common dso_local global i64 0, align 8
@VFE_FRAMEDROP_ENC_Y_CFG = common dso_local global i64 0, align 8
@VFE_FRAMEDROP_ENC_CBCR_CFG = common dso_local global i64 0, align 8
@VFE_FRAMEDROP_ENC_Y_PATTERN = common dso_local global i64 0, align 8
@VFE_FRAMEDROP_ENC_CBCR_PATTERN = common dso_local global i64 0, align 8
@VFE_FRAMEDROP_VIEW_Y_CFG = common dso_local global i64 0, align 8
@VFE_FRAMEDROP_VIEW_CBCR_CFG = common dso_local global i64 0, align 8
@VFE_FRAMEDROP_VIEW_Y_PATTERN = common dso_local global i64 0, align 8
@VFE_FRAMEDROP_VIEW_CBCR_PATTERN = common dso_local global i64 0, align 8
@VFE_CLAMP_MIN_CFG = common dso_local global i64 0, align 8
@VFE_CLAMP_MAX_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vfe_set_default_reg_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_default_reg_values() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @VFE_DEMUX_GAIN_0, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @writel(i32 8388736, i64 %5)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VFE_DEMUX_GAIN_1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 8388736, i64 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VFE_CGC_OVERRIDE, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 1048575, i64 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VFE_FRAMEDROP_ENC_Y_CFG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 31, i64 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VFE_FRAMEDROP_ENC_CBCR_CFG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 31, i64 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VFE_FRAMEDROP_ENC_Y_PATTERN, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 -1, i64 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VFE_FRAMEDROP_ENC_CBCR_PATTERN, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 -1, i64 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VFE_FRAMEDROP_VIEW_Y_CFG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 31, i64 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VFE_FRAMEDROP_VIEW_CBCR_CFG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 31, i64 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VFE_FRAMEDROP_VIEW_Y_PATTERN, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 -1, i64 %59)
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VFE_FRAMEDROP_VIEW_CBCR_PATTERN, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 -1, i64 %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VFE_CLAMP_MIN_CFG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 0, i64 %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @VFE_CLAMP_MAX_CFG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 16777215, i64 %77)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
