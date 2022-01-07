; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tdo24m.c_tdo24m_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tdo24m.c_tdo24m_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.fb_videomode = type { i32 }
%struct.tdo24m = type { i32, i32 (%struct.tdo24m*, i32)* }

@MODE_QVGA = common dso_local global i32 0, align 4
@MODE_VGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, %struct.fb_videomode*)* @tdo24m_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdo24m_set_mode(%struct.lcd_device* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcd_device*, align 8
  %5 = alloca %struct.fb_videomode*, align 8
  %6 = alloca %struct.tdo24m*, align 8
  %7 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %4, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %5, align 8
  %8 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %9 = call %struct.tdo24m* @lcd_get_data(%struct.lcd_device* %8)
  store %struct.tdo24m* %9, %struct.tdo24m** %6, align 8
  %10 = load i32, i32* @MODE_QVGA, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %12 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 640
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %17 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 480
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @MODE_VGA, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = load %struct.tdo24m*, %struct.tdo24m** %6, align 8
  %24 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %36

29:                                               ; preds = %22
  %30 = load %struct.tdo24m*, %struct.tdo24m** %6, align 8
  %31 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %30, i32 0, i32 1
  %32 = load i32 (%struct.tdo24m*, i32)*, i32 (%struct.tdo24m*, i32)** %31, align 8
  %33 = load %struct.tdo24m*, %struct.tdo24m** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 %32(%struct.tdo24m* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %28
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.tdo24m* @lcd_get_data(%struct.lcd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
