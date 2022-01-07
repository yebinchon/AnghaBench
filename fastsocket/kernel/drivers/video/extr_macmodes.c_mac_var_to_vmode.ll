; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macmodes.c_mac_var_to_vmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macmodes.c_mac_var_to_vmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_map = type { i32, %struct.fb_videomode* }
%struct.fb_videomode = type { i64, i64, i64, i32 }
%struct.fb_var_screeninfo = type { i32, i64, i64, i64, i64, i64, i32 }

@CMODE_8 = common dso_local global i32 0, align 4
@CMODE_16 = common dso_local global i32 0, align 4
@CMODE_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mac_modes = common dso_local global %struct.mode_map* null, align 8
@FB_VMODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_var_to_vmode(%struct.fb_var_screeninfo* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fb_videomode*, align 8
  %9 = alloca %struct.mode_map*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.fb_videomode* null, %struct.fb_videomode** %8, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 8
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @CMODE_8, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %20, 16
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @CMODE_16, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %37

25:                                               ; preds = %17
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 32
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @CMODE_32, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %113

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %22
  br label %38

38:                                               ; preds = %37, %14
  %39 = load %struct.mode_map*, %struct.mode_map** @mac_modes, align 8
  store %struct.mode_map* %39, %struct.mode_map** %9, align 8
  br label %40

40:                                               ; preds = %107, %38
  %41 = load %struct.mode_map*, %struct.mode_map** %9, align 8
  %42 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %110

45:                                               ; preds = %40
  %46 = load %struct.mode_map*, %struct.mode_map** %9, align 8
  %47 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %46, i32 0, i32 1
  %48 = load %struct.fb_videomode*, %struct.fb_videomode** %47, align 8
  store %struct.fb_videomode* %48, %struct.fb_videomode** %8, align 8
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %53 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %45
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %61 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56, %45
  br label %107

65:                                               ; preds = %56
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %70 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %78 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73, %65
  br label %107

82:                                               ; preds = %73
  %83 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %87 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %107

91:                                               ; preds = %82
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FB_VMODE_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %98 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %107

102:                                              ; preds = %91
  %103 = load %struct.mode_map*, %struct.mode_map** %9, align 8
  %104 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  store i32 0, i32* %4, align 4
  br label %113

107:                                              ; preds = %101, %90, %81, %64
  %108 = load %struct.mode_map*, %struct.mode_map** %9, align 8
  %109 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %108, i32 1
  store %struct.mode_map* %109, %struct.mode_map** %9, align 8
  br label %40

110:                                              ; preds = %40
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %102, %33
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
