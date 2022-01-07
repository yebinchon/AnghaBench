; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_set_color_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_set_color_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_plane_struct = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAPFB_COLOR_CLUT_1BPP = common dso_local global i32 0, align 4
@OMAPFB_COLOR_CLUT_2BPP = common dso_local global i32 0, align 4
@OMAPFB_COLOR_CLUT_4BPP = common dso_local global i32 0, align 4
@OMAPFB_COLOR_CLUT_8BPP = common dso_local global i32 0, align 4
@OMAPFB_COLOR_RGB444 = common dso_local global i32 0, align 4
@OMAPFB_COLOR_RGB565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_plane_struct*, %struct.fb_var_screeninfo*)* @set_color_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_color_mode(%struct.omapfb_plane_struct* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omapfb_plane_struct*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.omapfb_plane_struct* %0, %struct.omapfb_plane_struct** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %34 [
    i32 0, label %9
    i32 129, label %10
    i32 130, label %18
    i32 128, label %26
  ]

9:                                                ; preds = %2
  br label %37

10:                                               ; preds = %2
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 1
  store i32 16, i32* %12, align 4
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %4, align 8
  %17 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 1
  store i32 12, i32* %20, align 4
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %4, align 8
  %25 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %70

26:                                               ; preds = %2
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 1
  store i32 16, i32* %28, align 4
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %4, align 8
  %33 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %70

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %70

37:                                               ; preds = %9
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %67 [
    i32 1, label %41
    i32 2, label %45
    i32 4, label %49
    i32 8, label %53
    i32 12, label %57
    i32 16, label %63
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @OMAPFB_COLOR_CLUT_1BPP, align 4
  %43 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %4, align 8
  %44 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %70

45:                                               ; preds = %37
  %46 = load i32, i32* @OMAPFB_COLOR_CLUT_2BPP, align 4
  %47 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %4, align 8
  %48 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %70

49:                                               ; preds = %37
  %50 = load i32, i32* @OMAPFB_COLOR_CLUT_4BPP, align 4
  %51 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %4, align 8
  %52 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %70

53:                                               ; preds = %37
  %54 = load i32, i32* @OMAPFB_COLOR_CLUT_8BPP, align 4
  %55 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %4, align 8
  %56 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %70

57:                                               ; preds = %37
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 1
  store i32 16, i32* %59, align 4
  %60 = load i32, i32* @OMAPFB_COLOR_RGB444, align 4
  %61 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %4, align 8
  %62 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %70

63:                                               ; preds = %37
  %64 = load i32, i32* @OMAPFB_COLOR_RGB565, align 4
  %65 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %4, align 8
  %66 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %70

67:                                               ; preds = %37
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %63, %57, %53, %49, %45, %41, %34, %26, %18, %10
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
