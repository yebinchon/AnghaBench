; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_planes_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_planes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { %struct.fb_info**, i32, %struct.TYPE_4__ }
%struct.fb_info = type { %struct.TYPE_6__, %struct.omapfb_plane_struct* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.omapfb_plane_struct = type { i32, %struct.TYPE_5__, %struct.omapfb_device* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"unable to allocate memory for plane info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@def_mirror = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*)* @planes_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @planes_init(%struct.omapfb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.omapfb_plane_struct*, align 8
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %77, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %11 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %80

15:                                               ; preds = %8
  %16 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %17 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.fb_info* @framebuffer_alloc(i32 24, i32 %18)
  store %struct.fb_info* %19, %struct.fb_info** %4, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = icmp eq %struct.fb_info* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %24 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %28 = call i32 @planes_cleanup(%struct.omapfb_device* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %15
  %32 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %33, align 8
  store %struct.omapfb_plane_struct* %34, %struct.omapfb_plane_struct** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %37 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %39 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %40 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %39, i32 0, i32 2
  store %struct.omapfb_device* %38, %struct.omapfb_device** %40, align 8
  %41 = load i32, i32* @def_mirror, align 4
  %42 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %43 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %46 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %47 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %46, i32 0, i32 0
  %48 = load %struct.fb_info**, %struct.fb_info*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %48, i64 %50
  store %struct.fb_info* %45, %struct.fb_info** %51, align 8
  %52 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %53 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %54 = call i32 @fbinfo_init(%struct.omapfb_device* %52, %struct.fb_info* %53)
  store i32 %54, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %31
  %57 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %58 = call i32 @framebuffer_release(%struct.fb_info* %57)
  %59 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %60 = call i32 @planes_cleanup(%struct.omapfb_device* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %81

62:                                               ; preds = %31
  %63 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %68 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %75 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %8

80:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %56, %22
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @planes_cleanup(%struct.omapfb_device*) #1

declare dso_local i32 @fbinfo_init(%struct.omapfb_device*, %struct.fb_info*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
