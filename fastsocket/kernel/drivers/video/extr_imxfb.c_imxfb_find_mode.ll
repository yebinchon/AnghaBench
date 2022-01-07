; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imxfb.c_imxfb_find_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imxfb.c_imxfb_find_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_fb_videomode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.imxfb_info = type { i32, %struct.imx_fb_videomode* }

@fb_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imx_fb_videomode* (%struct.imxfb_info*)* @imxfb_find_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imx_fb_videomode* @imxfb_find_mode(%struct.imxfb_info* %0) #0 {
  %2 = alloca %struct.imx_fb_videomode*, align 8
  %3 = alloca %struct.imxfb_info*, align 8
  %4 = alloca %struct.imx_fb_videomode*, align 8
  %5 = alloca i32, align 4
  store %struct.imxfb_info* %0, %struct.imxfb_info** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %7 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %6, i32 0, i32 1
  %8 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %7, align 8
  %9 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %8, i64 0
  store %struct.imx_fb_videomode* %9, %struct.imx_fb_videomode** %4, align 8
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %13 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %4, align 8
  %18 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @fb_mode, align 4
  %22 = call i32 @strcmp(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %4, align 8
  store %struct.imx_fb_videomode* %25, %struct.imx_fb_videomode** %2, align 8
  br label %33

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %4, align 8
  %31 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %30, i32 1
  store %struct.imx_fb_videomode* %31, %struct.imx_fb_videomode** %4, align 8
  br label %10

32:                                               ; preds = %10
  store %struct.imx_fb_videomode* null, %struct.imx_fb_videomode** %2, align 8
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %2, align 8
  ret %struct.imx_fb_videomode* %34
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
