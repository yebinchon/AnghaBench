; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_quirks.c_snd_usb_cm106_write_int_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_quirks.c_snd_usb_cm106_write_int_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@USB_REQ_SET_CONFIGURATION = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32)* @snd_usb_cm106_write_int_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_cm106_write_int_reg(%struct.usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 32, i32* %8, align 16
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 255
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %16, i32* %17, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = call i32 @usb_sndctrlpipe(%struct.usb_device* %19, i32 0)
  %21 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %22 = load i32, i32* @USB_DIR_OUT, align 4
  %23 = load i32, i32* @USB_TYPE_CLASS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %26 = or i32 %24, %25
  %27 = bitcast [4 x i32]* %7 to i32**
  %28 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %18, i32 %20, i32 %21, i32 %26, i32 0, i32 0, i32** %27, i32 4)
  ret i32 %28
}

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32**, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
