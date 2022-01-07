; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_video_gx.c_gx_configure_tft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_video_gx.c_gx_configure_tft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.gxfb_par* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.gxfb_par = type { i32 }

@MSR_GX_MSR_PADSEL = common dso_local global i32 0, align 4
@MSR_GX_MSR_PADSEL_MASK = common dso_local global i64 0, align 8
@MSR_GX_MSR_PADSEL_TFT = common dso_local global i64 0, align 8
@FP_PM = common dso_local global i32 0, align 4
@FP_PM_P = common dso_local global i64 0, align 8
@FP_PT1 = common dso_local global i32 0, align 4
@FP_PT1_VSIZE_MASK = common dso_local global i64 0, align 8
@FP_PT1_VSIZE_SHIFT = common dso_local global i64 0, align 8
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FP_PT2_VSP = common dso_local global i64 0, align 8
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FP_PT2_HSP = common dso_local global i64 0, align 8
@FP_PT2 = common dso_local global i32 0, align 4
@FP_DFC = common dso_local global i32 0, align 4
@FP_DFC_NFI = common dso_local global i64 0, align 8
@VP_DCFG = common dso_local global i32 0, align 4
@VP_DCFG_FP_PWR_EN = common dso_local global i64 0, align 8
@VP_DCFG_FP_DATA_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @gx_configure_tft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gx_configure_tft(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.gxfb_par*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load %struct.gxfb_par*, %struct.gxfb_par** %7, align 8
  store %struct.gxfb_par* %8, %struct.gxfb_par** %3, align 8
  %9 = load i32, i32* @MSR_GX_MSR_PADSEL, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @rdmsrl(i32 %9, i64 %10)
  %12 = load i64, i64* @MSR_GX_MSR_PADSEL_MASK, align 8
  %13 = xor i64 %12, -1
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* @MSR_GX_MSR_PADSEL_TFT, align 8
  %17 = load i64, i64* %4, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load i32, i32* @MSR_GX_MSR_PADSEL, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @wrmsrl(i32 %19, i64 %20)
  %22 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %23 = load i32, i32* @FP_PM, align 4
  %24 = call i64 @read_fp(%struct.gxfb_par* %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* @FP_PM_P, align 8
  %26 = xor i64 %25, -1
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %30 = load i32, i32* @FP_PM, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @write_fp(%struct.gxfb_par* %29, i32 %30, i64 %31)
  %33 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %34 = load i32, i32* @FP_PT1, align 4
  %35 = call i64 @read_fp(%struct.gxfb_par* %33, i32 %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* @FP_PT1_VSIZE_MASK, align 8
  %37 = load i64, i64* %5, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FP_PT1_VSIZE_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = load i64, i64* %5, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %5, align 8
  %47 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %48 = load i32, i32* @FP_PT1, align 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @write_fp(%struct.gxfb_par* %47, i32 %48, i64 %49)
  store i64 252706816, i64* %5, align 8
  %51 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %1
  %59 = load i64, i64* @FP_PT2_VSP, align 8
  %60 = load i64, i64* %5, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %58, %1
  %63 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = load i64, i64* @FP_PT2_HSP, align 8
  %72 = load i64, i64* %5, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %70, %62
  %75 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %76 = load i32, i32* @FP_PT2, align 4
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @write_fp(%struct.gxfb_par* %75, i32 %76, i64 %77)
  %79 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %80 = load i32, i32* @FP_DFC, align 4
  %81 = load i64, i64* @FP_DFC_NFI, align 8
  %82 = call i32 @write_fp(%struct.gxfb_par* %79, i32 %80, i64 %81)
  %83 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %84 = load i32, i32* @VP_DCFG, align 4
  %85 = call i64 @read_vp(%struct.gxfb_par* %83, i32 %84)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* @VP_DCFG_FP_PWR_EN, align 8
  %87 = load i64, i64* @VP_DCFG_FP_DATA_EN, align 8
  %88 = or i64 %86, %87
  %89 = load i64, i64* %5, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %5, align 8
  %91 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %92 = load i32, i32* @VP_DCFG, align 4
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @write_vp(%struct.gxfb_par* %91, i32 %92, i64 %93)
  %95 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %96 = load i32, i32* @FP_PM, align 4
  %97 = call i64 @read_fp(%struct.gxfb_par* %95, i32 %96)
  store i64 %97, i64* %5, align 8
  %98 = load i64, i64* @FP_PM_P, align 8
  %99 = load i64, i64* %5, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %5, align 8
  %101 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %102 = load i32, i32* @FP_PM, align 4
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @write_fp(%struct.gxfb_par* %101, i32 %102, i64 %103)
  ret void
}

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

declare dso_local i64 @read_fp(%struct.gxfb_par*, i32) #1

declare dso_local i32 @write_fp(%struct.gxfb_par*, i32, i64) #1

declare dso_local i64 @read_vp(%struct.gxfb_par*, i32) #1

declare dso_local i32 @write_vp(%struct.gxfb_par*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
