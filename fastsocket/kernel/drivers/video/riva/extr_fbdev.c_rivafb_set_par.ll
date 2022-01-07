; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_rivafb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_rivafb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.riva_par* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.riva_par = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32)* }

@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @rivafb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rivafb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.riva_par*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 4
  %7 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  store %struct.riva_par* %7, %struct.riva_par** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = call i32 (...) @NVTRACE_ENTER()
  %9 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %10 = call i32 @CRTCout(%struct.riva_par* %9, i32 17, i32 255)
  %11 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %12 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %13, align 8
  %15 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %16 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %15, i32 0, i32 1
  %17 = call i32 %14(%struct.TYPE_8__* %16, i32 0)
  %18 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %19 = call i32 @riva_load_video_mode(%struct.fb_info* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %78

23:                                               ; preds = %1
  %24 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %32 = call i32 @riva_setup_accel(%struct.fb_info* %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %35 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 3
  %45 = mul nsw i32 %39, %44
  %46 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %56

54:                                               ; preds = %33
  %55 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %58

56:                                               ; preds = %33
  %57 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %77

73:                                               ; preds = %58
  %74 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 4, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %22
  %79 = call i32 (...) @NVTRACE_LEAVE()
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i32 @CRTCout(%struct.riva_par*, i32, i32) #1

declare dso_local i32 @riva_load_video_mode(%struct.fb_info*) #1

declare dso_local i32 @riva_setup_accel(%struct.fb_info*) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
