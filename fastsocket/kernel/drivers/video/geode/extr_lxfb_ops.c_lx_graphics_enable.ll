; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_lxfb_ops.c_lx_graphics_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_lxfb_ops.c_lx_graphics_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.lxfb_par* }
%struct.TYPE_2__ = type { i32 }
%struct.lxfb_par = type { i32 }

@VP_VRR = common dso_local global i32 0, align 4
@VP_DCFG = common dso_local global i32 0, align 4
@VP_DCFG_CRT_SYNC_SKW = common dso_local global i32 0, align 4
@VP_DCFG_PWR_SEQ_DELAY = common dso_local global i32 0, align 4
@VP_DCFG_CRT_HSYNC_POL = common dso_local global i32 0, align 4
@VP_DCFG_CRT_VSYNC_POL = common dso_local global i32 0, align 4
@VP_DCFG_CRT_SYNC_SKW_DEFAULT = common dso_local global i32 0, align 4
@VP_DCFG_PWR_SEQ_DELAY_DEFAULT = common dso_local global i32 0, align 4
@VP_DCFG_GV_GAM = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@OUTPUT_PANEL = common dso_local global i32 0, align 4
@FP_PT1 = common dso_local global i32 0, align 4
@FP_PT2 = common dso_local global i32 0, align 4
@FP_PT2_SCRC = common dso_local global i32 0, align 4
@FP_DFC = common dso_local global i32 0, align 4
@FP_DFC_BC = common dso_local global i32 0, align 4
@MSR_LX_MSR_PADSEL_TFT_SEL_LOW = common dso_local global i32 0, align 4
@MSR_LX_MSR_PADSEL_TFT_SEL_HIGH = common dso_local global i32 0, align 4
@MSR_LX_MSR_PADSEL = common dso_local global i32 0, align 4
@OUTPUT_CRT = common dso_local global i32 0, align 4
@VP_DCFG_CRT_EN = common dso_local global i32 0, align 4
@VP_DCFG_HSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_VSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_DAC_BL_EN = common dso_local global i32 0, align 4
@VP_MISC = common dso_local global i32 0, align 4
@VP_MISC_DACPWRDN = common dso_local global i32 0, align 4
@VP_MISC_APWRDN = common dso_local global i32 0, align 4
@FP_PM = common dso_local global i32 0, align 4
@FP_PM_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @lx_graphics_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lx_graphics_enable(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.lxfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.lxfb_par*, %struct.lxfb_par** %9, align 8
  store %struct.lxfb_par* %10, %struct.lxfb_par** %3, align 8
  %11 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %12 = load i32, i32* @VP_VRR, align 4
  %13 = call i32 @write_vp(%struct.lxfb_par* %11, i32 %12, i32 0)
  %14 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %15 = load i32, i32* @VP_DCFG, align 4
  %16 = call i32 @read_vp(%struct.lxfb_par* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @VP_DCFG_CRT_SYNC_SKW, align 4
  %18 = load i32, i32* @VP_DCFG_PWR_SEQ_DELAY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VP_DCFG_CRT_HSYNC_POL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VP_DCFG_CRT_VSYNC_POL, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @VP_DCFG_CRT_SYNC_SKW_DEFAULT, align 4
  %28 = load i32, i32* @VP_DCFG_PWR_SEQ_DELAY_DEFAULT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @VP_DCFG_GV_GAM, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* @VP_DCFG_CRT_HSYNC_POL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %1
  %46 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @VP_DCFG_CRT_VSYNC_POL, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %45
  %58 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %59 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @OUTPUT_PANEL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %57
  %65 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %66 = load i32, i32* @FP_PT1, align 4
  %67 = call i32 @write_fp(%struct.lxfb_par* %65, i32 %66, i32 0)
  %68 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %69 = load i32, i32* @FP_PT2, align 4
  %70 = load i32, i32* @FP_PT2_SCRC, align 4
  %71 = call i32 @write_fp(%struct.lxfb_par* %68, i32 %69, i32 %70)
  %72 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %73 = load i32, i32* @FP_DFC, align 4
  %74 = load i32, i32* @FP_DFC_BC, align 4
  %75 = call i32 @write_fp(%struct.lxfb_par* %72, i32 %73, i32 %74)
  %76 = load i32, i32* @MSR_LX_MSR_PADSEL_TFT_SEL_LOW, align 4
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @MSR_LX_MSR_PADSEL_TFT_SEL_HIGH, align 4
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @MSR_LX_MSR_PADSEL, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @wrmsr(i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %64, %57
  %83 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %84 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @OUTPUT_CRT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = load i32, i32* @VP_DCFG_CRT_EN, align 4
  %91 = load i32, i32* @VP_DCFG_HSYNC_EN, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @VP_DCFG_VSYNC_EN, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @VP_DCFG_DAC_BL_EN, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %89, %82
  %100 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %101 = load i32, i32* @VP_DCFG, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @write_vp(%struct.lxfb_par* %100, i32 %101, i32 %102)
  %104 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %105 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @OUTPUT_CRT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %99
  %111 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %112 = load i32, i32* @VP_MISC, align 4
  %113 = call i32 @read_vp(%struct.lxfb_par* %111, i32 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* @VP_MISC_DACPWRDN, align 4
  %115 = load i32, i32* @VP_MISC_APWRDN, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %4, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %4, align 4
  %120 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %121 = load i32, i32* @VP_MISC, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @write_vp(%struct.lxfb_par* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %110, %99
  %125 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %126 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @OUTPUT_PANEL, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %133 = load i32, i32* @FP_PM, align 4
  %134 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %135 = load i32, i32* @FP_PM, align 4
  %136 = call i32 @read_fp(%struct.lxfb_par* %134, i32 %135)
  %137 = load i32, i32* @FP_PM_P, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @write_fp(%struct.lxfb_par* %132, i32 %133, i32 %138)
  br label %140

140:                                              ; preds = %131, %124
  ret void
}

declare dso_local i32 @write_vp(%struct.lxfb_par*, i32, i32) #1

declare dso_local i32 @read_vp(%struct.lxfb_par*, i32) #1

declare dso_local i32 @write_fp(%struct.lxfb_par*, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @read_fp(%struct.lxfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
