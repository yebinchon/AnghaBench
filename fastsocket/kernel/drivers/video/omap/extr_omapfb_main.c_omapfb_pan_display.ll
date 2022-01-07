; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64 }
%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.omapfb_plane_struct* }
%struct.omapfb_plane_struct = type { %struct.omapfb_device* }
%struct.omapfb_device = type { %struct.fb_var_screeninfo }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @omapfb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.omapfb_plane_struct*, align 8
  %6 = alloca %struct.omapfb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %10, align 8
  store %struct.omapfb_plane_struct* %11, %struct.omapfb_plane_struct** %5, align 8
  %12 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %13 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %12, i32 0, i32 0
  %14 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  store %struct.omapfb_device* %14, %struct.omapfb_device** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %16 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %15)
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %25, %2
  %35 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %36 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %35, i32 0, i32 0
  store %struct.fb_var_screeninfo* %36, %struct.fb_var_screeninfo** %8, align 8
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %38 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = call i32 @memcpy(%struct.fb_var_screeninfo* %37, %struct.fb_var_screeninfo* %39, i32 16)
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %53 = call i64 @set_fb_var(%struct.fb_info* %51, %struct.fb_var_screeninfo* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %34
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %65

58:                                               ; preds = %34
  %59 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %62 = call i32 @memcpy(%struct.fb_var_screeninfo* %60, %struct.fb_var_screeninfo* %61, i32 16)
  %63 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %64 = call i32 @ctrl_change_mode(%struct.fb_info* %63)
  br label %65

65:                                               ; preds = %58, %55
  br label %66

66:                                               ; preds = %65, %25
  %67 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %68 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %67)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i32 @memcpy(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i32) #1

declare dso_local i64 @set_fb_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @ctrl_change_mode(%struct.fb_info*) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
