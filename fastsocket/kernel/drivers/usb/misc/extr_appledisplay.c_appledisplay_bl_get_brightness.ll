; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_appledisplay.c_appledisplay_bl_get_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_appledisplay.c_appledisplay_bl_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.appledisplay = type { i32*, i32 }

@USB_REQ_GET_REPORT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ACD_USB_BRIGHTNESS = common dso_local global i32 0, align 4
@ACD_USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @appledisplay_bl_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @appledisplay_bl_get_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.appledisplay*, align 8
  %5 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %7 = call %struct.appledisplay* @bl_get_data(%struct.backlight_device* %6)
  store %struct.appledisplay* %7, %struct.appledisplay** %4, align 8
  %8 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %9 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %12 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @usb_rcvctrlpipe(i32 %13, i32 0)
  %15 = load i32, i32* @USB_REQ_GET_REPORT, align 4
  %16 = load i32, i32* @USB_DIR_IN, align 4
  %17 = load i32, i32* @USB_TYPE_CLASS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ACD_USB_BRIGHTNESS, align 4
  %22 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %23 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @ACD_USB_TIMEOUT, align 4
  %26 = call i32 @usb_control_msg(i32 %10, i32 %14, i32 %15, i32 %20, i32 %21, i32 0, i32* %24, i32 2, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %33 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.appledisplay* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
