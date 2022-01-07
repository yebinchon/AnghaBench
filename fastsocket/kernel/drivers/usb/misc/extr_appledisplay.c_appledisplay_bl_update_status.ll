; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_appledisplay.c_appledisplay_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_appledisplay.c_appledisplay_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.appledisplay = type { i32*, i32 }

@USB_REQ_SET_REPORT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ACD_USB_BRIGHTNESS = common dso_local global i32 0, align 4
@ACD_USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @appledisplay_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @appledisplay_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.appledisplay*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = call %struct.appledisplay* @bl_get_data(%struct.backlight_device* %5)
  store %struct.appledisplay* %6, %struct.appledisplay** %3, align 8
  %7 = load %struct.appledisplay*, %struct.appledisplay** %3, align 8
  %8 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 16, i32* %10, align 4
  %11 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %12 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.appledisplay*, %struct.appledisplay** %3, align 8
  %16 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %14, i32* %18, align 4
  %19 = load %struct.appledisplay*, %struct.appledisplay** %3, align 8
  %20 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.appledisplay*, %struct.appledisplay** %3, align 8
  %23 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_sndctrlpipe(i32 %24, i32 0)
  %26 = load i32, i32* @USB_REQ_SET_REPORT, align 4
  %27 = load i32, i32* @USB_DIR_OUT, align 4
  %28 = load i32, i32* @USB_TYPE_CLASS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ACD_USB_BRIGHTNESS, align 4
  %33 = load %struct.appledisplay*, %struct.appledisplay** %3, align 8
  %34 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @ACD_USB_TIMEOUT, align 4
  %37 = call i32 @usb_control_msg(i32 %21, i32 %25, i32 %26, i32 %31, i32 %32, i32 0, i32* %35, i32 2, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.appledisplay* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
