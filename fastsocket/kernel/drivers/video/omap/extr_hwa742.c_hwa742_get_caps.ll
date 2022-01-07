; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_hwa742_get_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_hwa742_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.omapfb_caps*)* }
%struct.omapfb_caps = type { i32, i32 }

@hwa742 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OMAPFB_CAPS_MANUAL_UPDATE = common dso_local global i32 0, align 4
@OMAPFB_CAPS_WINDOW_PIXEL_DOUBLE = common dso_local global i32 0, align 4
@OMAPFB_CAPS_TEARSYNC = common dso_local global i32 0, align 4
@OMAPFB_COLOR_RGB565 = common dso_local global i32 0, align 4
@OMAPFB_COLOR_YUV420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.omapfb_caps*)* @hwa742_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwa742_get_caps(i32 %0, %struct.omapfb_caps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omapfb_caps*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.omapfb_caps* %1, %struct.omapfb_caps** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 1), align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32 (i32, %struct.omapfb_caps*)*, i32 (i32, %struct.omapfb_caps*)** %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.omapfb_caps*, %struct.omapfb_caps** %4, align 8
  %10 = call i32 %7(i32 %8, %struct.omapfb_caps* %9)
  %11 = load i32, i32* @OMAPFB_CAPS_MANUAL_UPDATE, align 4
  %12 = load i32, i32* @OMAPFB_CAPS_WINDOW_PIXEL_DOUBLE, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.omapfb_caps*, %struct.omapfb_caps** %4, align 8
  %15 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @OMAPFB_CAPS_TEARSYNC, align 4
  %22 = load %struct.omapfb_caps*, %struct.omapfb_caps** %4, align 8
  %23 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @OMAPFB_COLOR_RGB565, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* @OMAPFB_COLOR_YUV420, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load %struct.omapfb_caps*, %struct.omapfb_caps** %4, align 8
  %33 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
