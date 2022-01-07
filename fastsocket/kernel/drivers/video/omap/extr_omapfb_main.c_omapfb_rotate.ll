; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_rotate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.omapfb_plane_struct* }
%struct.fb_var_screeninfo = type { i32 }
%struct.omapfb_plane_struct = type { %struct.omapfb_device* }
%struct.omapfb_device = type { %struct.fb_var_screeninfo }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @omapfb_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapfb_rotate(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omapfb_plane_struct*, align 8
  %6 = alloca %struct.omapfb_device*, align 8
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %9, align 8
  store %struct.omapfb_plane_struct* %10, %struct.omapfb_plane_struct** %5, align 8
  %11 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %12 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %11, i32 0, i32 0
  %13 = load %struct.omapfb_device*, %struct.omapfb_device** %12, align 8
  store %struct.omapfb_device* %13, %struct.omapfb_device** %6, align 8
  %14 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %15 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %16, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %24 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %23, i32 0, i32 0
  store %struct.fb_var_screeninfo* %24, %struct.fb_var_screeninfo** %7, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = call i32 @memcpy(%struct.fb_var_screeninfo* %25, %struct.fb_var_screeninfo* %27, i32 4)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %34 = call i64 @set_fb_var(%struct.fb_info* %32, %struct.fb_var_screeninfo* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %22
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = call i64 @memcmp(%struct.fb_var_screeninfo* %37, %struct.fb_var_screeninfo* %39, i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %46 = call i32 @memcpy(%struct.fb_var_screeninfo* %44, %struct.fb_var_screeninfo* %45, i32 4)
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = call i32 @ctrl_change_mode(%struct.fb_info* %47)
  br label %49

49:                                               ; preds = %42, %36, %22
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %52 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %51)
  ret void
}

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i32 @memcpy(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i32) #1

declare dso_local i64 @set_fb_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i64 @memcmp(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i32) #1

declare dso_local i32 @ctrl_change_mode(%struct.fb_info*) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
