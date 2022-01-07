; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_pxa27x_change_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_pxa27x_change_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { i32, i32, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }
%struct.usb_ctrlrequest = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"interface=%d, alternate setting=%d\0A\00", align 1
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_REQ_SET_INTERFACE = common dso_local global i32 0, align 4
@WAIT_ACK_SET_CONF_INTERF = common dso_local global i32 0, align 4
@UDCCSR0_AREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*, i32, i32)* @pxa27x_change_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa27x_change_interface(%struct.pxa_udc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pxa_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_ctrlrequest, align 8
  store %struct.pxa_udc* %0, %struct.pxa_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %9 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %16 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %19 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %7, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @USB_REQ_SET_INTERFACE, align 4
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %7, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %7, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %30 = load i32, i32* @WAIT_ACK_SET_CONF_INTERF, align 4
  %31 = call i32 @set_ep0state(%struct.pxa_udc* %29, i32 %30)
  %32 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %33 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %35, align 8
  %37 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %38 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %37, i32 0, i32 3
  %39 = call i32 %36(i32* %38, %struct.usb_ctrlrequest* %7)
  %40 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %41 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* @UDCCSR0_AREN, align 4
  %45 = call i32 @ep_write_UDCCSR(i32* %43, i32 %44)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @set_ep0state(%struct.pxa_udc*, i32) #1

declare dso_local i32 @ep_write_UDCCSR(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
