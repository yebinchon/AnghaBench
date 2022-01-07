; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_usb.c_usb_pta_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_usb.c_usb_pta_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@AR9170_PTA_REG_DMA_MODE_CTRL = common dso_local global i32 0, align 4
@AR9170_PTA_DMA_MODE_CTRL_DISABLE_USB = common dso_local global i32 0, align 4
@AR9170_PTA_DMA_MODE_CTRL_RESET = common dso_local global i32 0, align 4
@usb_config_fullspeed = common dso_local global i32 0, align 4
@fw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@usb_config_highspeed = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_HIGH_SPEED = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_UP_PACKET_MODE = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_ENABLE_TO_DEVICE = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_ENABLE_FROM_DEVICE = common dso_local global i32 0, align 4
@AR9170_USB_REG_DMA_CTL = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_DOWN_STREAM = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_UP_STREAM_16K = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_UP_STREAM_32K = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_UP_STREAM_4K = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_UP_STREAM_8K = common dso_local global i32 0, align 4
@AR9170_USB_REG_MAX_AGG_UPLOAD = common dso_local global i32 0, align 4
@AR9170_USB_REG_UPLOAD_TIME_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usb_pta_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_pta_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @AR9170_PTA_REG_DMA_MODE_CTRL, align 4
  %3 = load i32, i32* @AR9170_PTA_DMA_MODE_CTRL_DISABLE_USB, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 @andl(i32 %2, i32 %4)
  %6 = load i32, i32* @AR9170_PTA_REG_DMA_MODE_CTRL, align 4
  %7 = load i32, i32* @AR9170_PTA_DMA_MODE_CTRL_RESET, align 4
  %8 = call i32 @orl(i32 %6, i32 %7)
  %9 = load i32, i32* @AR9170_PTA_REG_DMA_MODE_CTRL, align 4
  %10 = load i32, i32* @AR9170_PTA_DMA_MODE_CTRL_RESET, align 4
  %11 = xor i32 %10, -1
  %12 = call i32 @andl(i32 %9, i32 %11)
  %13 = call i64 (...) @usb_detect_highspeed()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  store i32* @usb_config_fullspeed, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 8
  store i32* @usb_config_highspeed, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 1), align 8
  %16 = load i32, i32* @AR9170_USB_DMA_CTL_HIGH_SPEED, align 4
  %17 = load i32, i32* %1, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %1, align 4
  br label %20

19:                                               ; preds = %0
  store i32* @usb_config_fullspeed, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 1), align 8
  store i32* @usb_config_highspeed, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, i32* @AR9170_USB_DMA_CTL_UP_PACKET_MODE, align 4
  %22 = load i32, i32* %1, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @AR9170_USB_DMA_CTL_ENABLE_TO_DEVICE, align 4
  %25 = load i32, i32* @AR9170_USB_DMA_CTL_ENABLE_FROM_DEVICE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %1, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @AR9170_USB_REG_DMA_CTL, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @set(i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @andl(i32, i32) #1

declare dso_local i32 @orl(i32, i32) #1

declare dso_local i64 @usb_detect_highspeed(...) #1

declare dso_local i32 @set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
