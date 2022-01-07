; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_udc_stop_activity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_udc_stop_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_udc_struct = type { %struct.TYPE_2__, i64, i64, i64, %struct.imx_ep_struct* }
%struct.TYPE_2__ = type { i64 }
%struct.imx_ep_struct = type { i32 }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_2__*)* }

@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@IMX_USB_NB_EP = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_udc_struct*, %struct.usb_gadget_driver*)* @udc_stop_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_stop_activity(%struct.imx_udc_struct* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.imx_udc_struct*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca %struct.imx_ep_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.imx_udc_struct* %0, %struct.imx_udc_struct** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %7 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %3, align 8
  %8 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %4, align 8
  br label %14

14:                                               ; preds = %13, %2
  store i32 1, i32* %6, align 4
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IMX_USB_NB_EP, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %3, align 8
  %21 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %20, i32 0, i32 4
  %22 = load %struct.imx_ep_struct*, %struct.imx_ep_struct** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.imx_ep_struct, %struct.imx_ep_struct* %22, i64 %24
  store %struct.imx_ep_struct* %25, %struct.imx_ep_struct** %5, align 8
  %26 = load %struct.imx_ep_struct*, %struct.imx_ep_struct** %5, align 8
  %27 = call i32 @imx_flush(%struct.imx_ep_struct* %26)
  %28 = load %struct.imx_ep_struct*, %struct.imx_ep_struct** %5, align 8
  %29 = getelementptr inbounds %struct.imx_ep_struct, %struct.imx_ep_struct* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.imx_ep_struct*, %struct.imx_ep_struct** %5, align 8
  %31 = call i32 @imx_ep_irq_disable(%struct.imx_ep_struct* %30)
  %32 = load %struct.imx_ep_struct*, %struct.imx_ep_struct** %5, align 8
  %33 = load i32, i32* @ESHUTDOWN, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @nuke(%struct.imx_ep_struct* %32, i32 %34)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %3, align 8
  %41 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %3, align 8
  %43 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %3, align 8
  %45 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %47 = icmp ne %struct.usb_gadget_driver* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %50 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %50, align 8
  %52 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %3, align 8
  %53 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %52, i32 0, i32 0
  %54 = call i32 %51(%struct.TYPE_2__* %53)
  br label %55

55:                                               ; preds = %48, %39
  ret void
}

declare dso_local i32 @imx_flush(%struct.imx_ep_struct*) #1

declare dso_local i32 @imx_ep_irq_disable(%struct.imx_ep_struct*) #1

declare dso_local i32 @nuke(%struct.imx_ep_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
