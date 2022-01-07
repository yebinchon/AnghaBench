; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_update_full_screen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_update_full_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_3__, %struct.omapfb_plane_struct* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.omapfb_plane_struct = type { %struct.omapfb_device* }
%struct.omapfb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*, %struct.omapfb_update_window*, i32*, i32*)*, i64 (...)* }
%struct.omapfb_update_window = type { i64, i32, i32, i64, i64, i32, i32, i64, i64 }

@OMAPFB_MANUAL_UPDATE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @omapfb_update_full_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_update_full_screen(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.omapfb_plane_struct*, align 8
  %5 = alloca %struct.omapfb_device*, align 8
  %6 = alloca %struct.omapfb_update_window, align 8
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %9, align 8
  store %struct.omapfb_plane_struct* %10, %struct.omapfb_plane_struct** %4, align 8
  %11 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %4, align 8
  %12 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %11, i32 0, i32 0
  %13 = load %struct.omapfb_device*, %struct.omapfb_device** %12, align 8
  store %struct.omapfb_device* %13, %struct.omapfb_device** %5, align 8
  %14 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %15 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.fb_info*, %struct.omapfb_update_window*, i32*, i32*)*, i32 (%struct.fb_info*, %struct.omapfb_update_window*, i32*, i32*)** %17, align 8
  %19 = icmp ne i32 (%struct.fb_info*, %struct.omapfb_update_window*, i32*, i32*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %22 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64 (...)*, i64 (...)** %24, align 8
  %26 = call i64 (...) %25()
  %27 = load i64, i64* @OMAPFB_MANUAL_UPDATE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20, %1
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %70

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %6, i32 0, i32 8
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %6, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %6, i32 0, i32 6
  store i32 %38, i32* %39, align 4
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %6, i32 0, i32 5
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %6, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %6, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %6, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %6, i32 0, i32 1
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %6, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %59 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %58)
  %60 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %61 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.fb_info*, %struct.omapfb_update_window*, i32*, i32*)*, i32 (%struct.fb_info*, %struct.omapfb_update_window*, i32*, i32*)** %63, align 8
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = call i32 %64(%struct.fb_info* %65, %struct.omapfb_update_window* %6, i32* null, i32* null)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %68 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %32, %29
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
