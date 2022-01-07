; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_video_cs5530.c_cs5530_blank_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_video_cs5530.c_cs5530_blank_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.geodefb_par* }
%struct.geodefb_par = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CS5530_DISPLAY_CONFIG = common dso_local global i64 0, align 8
@CS5530_DCFG_DAC_BL_EN = common dso_local global i32 0, align 4
@CS5530_DCFG_DAC_PWR_EN = common dso_local global i32 0, align 4
@CS5530_DCFG_HSYNC_EN = common dso_local global i32 0, align 4
@CS5530_DCFG_VSYNC_EN = common dso_local global i32 0, align 4
@CS5530_DCFG_FP_DATA_EN = common dso_local global i32 0, align 4
@CS5530_DCFG_FP_PWR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @cs5530_blank_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs5530_blank_display(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.geodefb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.geodefb_par*, %struct.geodefb_par** %12, align 8
  store %struct.geodefb_par* %13, %struct.geodefb_par** %6, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %20 [
    i32 129, label %15
    i32 131, label %16
    i32 128, label %17
    i32 132, label %18
    i32 130, label %19
  ]

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %23

16:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %23

17:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %23

18:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %23

19:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %103

23:                                               ; preds = %19, %18, %17, %16, %15
  %24 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %25 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CS5530_DISPLAY_CONFIG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @CS5530_DCFG_DAC_BL_EN, align 4
  %31 = load i32, i32* @CS5530_DCFG_DAC_PWR_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CS5530_DCFG_HSYNC_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CS5530_DCFG_VSYNC_EN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CS5530_DCFG_FP_DATA_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CS5530_DCFG_FP_PWR_EN, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %45 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %23
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @CS5530_DCFG_DAC_BL_EN, align 4
  %53 = load i32, i32* @CS5530_DCFG_DAC_PWR_EN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @CS5530_DCFG_HSYNC_EN, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* @CS5530_DCFG_VSYNC_EN, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %23
  %73 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %74 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @CS5530_DCFG_FP_DATA_EN, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @CS5530_DCFG_FP_PWR_EN, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %90, %87, %84
  br label %95

95:                                               ; preds = %94, %72
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %98 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CS5530_DISPLAY_CONFIG, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 %96, i64 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %95, %20
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
