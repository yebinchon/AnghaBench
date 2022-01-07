; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_atyfb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_atyfb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.atyfb_par = type { %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@CRTC_DBL_SCAN_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FB_ACTIVATE_VBL = common dso_local global i32 0, align 4
@CRTC_OFF_PITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @atyfb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atyfb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.atyfb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.atyfb_par*
  store %struct.atyfb_par* %14, %struct.atyfb_par** %6, align 8
  %15 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %16 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 %21, 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %24 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 2047
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %31 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CRTC_DBL_SCAN_EN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %2
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 7
  %45 = and i32 %44, -8
  store i32 %45, i32* %9, align 4
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %53 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %51, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %62 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %60, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57, %40
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %113

69:                                               ; preds = %57
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %79 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %113

83:                                               ; preds = %69
  %84 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %85 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %86 = call i32 @set_off_pitch(%struct.atyfb_par* %84, %struct.fb_info* %85)
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @FB_ACTIVATE_VBL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %95 = call i32 @aty_enable_irq(%struct.atyfb_par* %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %99 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %112

101:                                              ; preds = %93, %83
  %102 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %103 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load i32, i32* @CRTC_OFF_PITCH, align 4
  %106 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %107 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %111 = call i32 @aty_st_le32(i32 %105, i32 %109, %struct.atyfb_par* %110)
  br label %112

112:                                              ; preds = %101, %97
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %82, %66
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @set_off_pitch(%struct.atyfb_par*, %struct.fb_info*) #1

declare dso_local i32 @aty_enable_irq(%struct.atyfb_par*, i32) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
