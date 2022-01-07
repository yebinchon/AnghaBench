; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_video_gx.c_gx_configure_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_video_gx.c_gx_configure_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.gxfb_par* }
%struct.TYPE_2__ = type { i32 }
%struct.gxfb_par = type { i64 }

@VP_DCFG = common dso_local global i32 0, align 4
@VP_DCFG_VSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_HSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_CRT_SYNC_SKW = common dso_local global i32 0, align 4
@VP_DCFG_CRT_HSYNC_POL = common dso_local global i32 0, align 4
@VP_DCFG_CRT_VSYNC_POL = common dso_local global i32 0, align 4
@VP_DCFG_CRT_SYNC_SKW_DEFAULT = common dso_local global i32 0, align 4
@VP_MISC = common dso_local global i32 0, align 4
@VP_MISC_GAM_EN = common dso_local global i32 0, align 4
@VP_MISC_APWRDN = common dso_local global i32 0, align 4
@VP_MISC_DACPWRDN = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@VP_DCFG_CRT_EN = common dso_local global i32 0, align 4
@VP_DCFG_DAC_BL_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gx_configure_display(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.gxfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load %struct.gxfb_par*, %struct.gxfb_par** %7, align 8
  store %struct.gxfb_par* %8, %struct.gxfb_par** %3, align 8
  %9 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %10 = load i32, i32* @VP_DCFG, align 4
  %11 = call i32 @read_vp(%struct.gxfb_par* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @VP_DCFG_VSYNC_EN, align 4
  %13 = load i32, i32* @VP_DCFG_HSYNC_EN, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %19 = load i32, i32* @VP_DCFG, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @write_vp(%struct.gxfb_par* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @VP_DCFG_CRT_SYNC_SKW, align 4
  %23 = load i32, i32* @VP_DCFG_CRT_HSYNC_POL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @VP_DCFG_CRT_VSYNC_POL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @VP_DCFG_VSYNC_EN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @VP_DCFG_HSYNC_EN, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @VP_DCFG_CRT_SYNC_SKW_DEFAULT, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @VP_DCFG_HSYNC_EN, align 4
  %38 = load i32, i32* @VP_DCFG_VSYNC_EN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %43 = load i32, i32* @VP_MISC, align 4
  %44 = call i32 @read_vp(%struct.gxfb_par* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @VP_MISC_GAM_EN, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %49 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %1
  %53 = load i32, i32* @VP_MISC_APWRDN, align 4
  %54 = load i32, i32* @VP_MISC_DACPWRDN, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %60 = load i32, i32* @VP_MISC, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @write_vp(%struct.gxfb_par* %59, i32 %60, i32 %61)
  %63 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %52
  %71 = load i32, i32* @VP_DCFG_CRT_HSYNC_POL, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %52
  %75 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @VP_DCFG_CRT_VSYNC_POL, align 4
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %74
  br label %97

87:                                               ; preds = %1
  %88 = load i32, i32* @VP_MISC_APWRDN, align 4
  %89 = load i32, i32* @VP_MISC_DACPWRDN, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %94 = load i32, i32* @VP_MISC, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @write_vp(%struct.gxfb_par* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %87, %86
  %98 = load i32, i32* @VP_DCFG_CRT_EN, align 4
  %99 = load i32, i32* @VP_DCFG_DAC_BL_EN, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %104 = load i32, i32* @VP_DCFG, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @write_vp(%struct.gxfb_par* %103, i32 %104, i32 %105)
  %107 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %108 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %113 = call i32 @gx_configure_tft(%struct.fb_info* %112)
  br label %114

114:                                              ; preds = %111, %97
  ret void
}

declare dso_local i32 @read_vp(%struct.gxfb_par*, i32) #1

declare dso_local i32 @write_vp(%struct.gxfb_par*, i32, i32) #1

declare dso_local i32 @gx_configure_tft(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
