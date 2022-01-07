; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_video_gx.c_gx_blank_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_video_gx.c_gx_blank_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.gxfb_par* }
%struct.gxfb_par = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@VP_DCFG = common dso_local global i32 0, align 4
@VP_DCFG_DAC_BL_EN = common dso_local global i32 0, align 4
@VP_DCFG_HSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_VSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_CRT_EN = common dso_local global i32 0, align 4
@FP_PM = common dso_local global i32 0, align 4
@FP_PM_P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gx_blank_display(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gxfb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = load %struct.gxfb_par*, %struct.gxfb_par** %14, align 8
  store %struct.gxfb_par* %15, %struct.gxfb_par** %6, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %22 [
    i32 129, label %17
    i32 131, label %18
    i32 128, label %19
    i32 132, label %20
    i32 130, label %21
  ]

17:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %25

18:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %25

19:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %25

20:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %25

21:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %96

25:                                               ; preds = %21, %20, %19, %18, %17
  %26 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %27 = load i32, i32* @VP_DCFG, align 4
  %28 = call i32 @read_vp(%struct.gxfb_par* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @VP_DCFG_DAC_BL_EN, align 4
  %30 = load i32, i32* @VP_DCFG_HSYNC_EN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VP_DCFG_VSYNC_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VP_DCFG_CRT_EN, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* @VP_DCFG_DAC_BL_EN, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %25
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @VP_DCFG_HSYNC_EN, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @VP_DCFG_VSYNC_EN, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @VP_DCFG_CRT_EN, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %68 = load i32, i32* @VP_DCFG, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @write_vp(%struct.gxfb_par* %67, i32 %68, i32 %69)
  %71 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %72 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %66
  %76 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %77 = load i32, i32* @FP_PM, align 4
  %78 = call i32 @read_fp(%struct.gxfb_par* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 130
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* @FP_PM_P, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %90

86:                                               ; preds = %75
  %87 = load i32, i32* @FP_PM_P, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %92 = load i32, i32* @FP_PM, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @write_fp(%struct.gxfb_par* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %66
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %22
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @read_vp(%struct.gxfb_par*, i32) #1

declare dso_local i32 @write_vp(%struct.gxfb_par*, i32, i32) #1

declare dso_local i32 @read_fp(%struct.gxfb_par*, i32) #1

declare dso_local i32 @write_fp(%struct.gxfb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
