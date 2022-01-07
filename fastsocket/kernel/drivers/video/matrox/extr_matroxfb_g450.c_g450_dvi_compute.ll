; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_g450.c_g450_dvi_compute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_g450.c_g450_dvi_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_timming = type { i64, i32, i32 }
%struct.matrox_fb_info = type { i32 }

@MATROXFB_SRC_CRTC1 = common dso_local global i64 0, align 8
@M_PIXEL_PLL_C = common dso_local global i32 0, align 4
@M_VIDEO_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.my_timming*)* @g450_dvi_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g450_dvi_compute(i8* %0, %struct.my_timming* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.my_timming*, align 8
  %5 = alloca %struct.matrox_fb_info*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.my_timming* %1, %struct.my_timming** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.matrox_fb_info*
  store %struct.matrox_fb_info* %7, %struct.matrox_fb_info** %5, align 8
  %8 = load %struct.my_timming*, %struct.my_timming** %4, align 8
  %9 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %14 = load %struct.my_timming*, %struct.my_timming** %4, align 8
  %15 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.my_timming*, %struct.my_timming** %4, align 8
  %18 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MATROXFB_SRC_CRTC1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @M_PIXEL_PLL_C, align 4
  br label %26

24:                                               ; preds = %12
  %25 = load i32, i32* @M_VIDEO_PLL, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @matroxfb_g450_setclk(%struct.matrox_fb_info* %13, i32 %16, i32 %27)
  %29 = load %struct.my_timming*, %struct.my_timming** %4, align 8
  %30 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %32 = load %struct.my_timming*, %struct.my_timming** %4, align 8
  %33 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @g450_mnp2f(%struct.matrox_fb_info* %31, i32 %34)
  %36 = load %struct.my_timming*, %struct.my_timming** %4, align 8
  %37 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %26, %2
  ret i32 0
}

declare dso_local i32 @matroxfb_g450_setclk(%struct.matrox_fb_info*, i32, i32) #1

declare dso_local i32 @g450_mnp2f(%struct.matrox_fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
