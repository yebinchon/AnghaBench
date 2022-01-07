; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_ep0_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_ep0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280 = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CLEAR_EP_HIDE_STATUS_PHASE = common dso_local global i32 0, align 4
@CLEAR_NAK_OUT_PACKETS = common dso_local global i32 0, align 4
@CLEAR_CONTROL_STATUS_PHASE_HANDSHAKE = common dso_local global i32 0, align 4
@SET_TEST_MODE = common dso_local global i32 0, align 4
@SET_ADDRESS = common dso_local global i32 0, align 4
@DEVICE_SET_CLEAR_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@GET_DEVICE_STATUS = common dso_local global i32 0, align 4
@GET_INTERFACE_STATUS = common dso_local global i32 0, align 4
@USB_ROOT_PORT_WAKEUP_ENABLE = common dso_local global i32 0, align 4
@SELF_POWERED_USB_DEVICE = common dso_local global i32 0, align 4
@REMOTE_WAKEUP_SUPPORT = common dso_local global i32 0, align 4
@USB_DETECT_ENABLE = common dso_local global i32 0, align 4
@SELF_POWERED_STATUS = common dso_local global i32 0, align 4
@SETUP_PACKET_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@ENDPOINT_0_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@PCI_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@PCI_MASTER_ABORT_RECEIVED_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@PCI_TARGET_ABORT_RECEIVED_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@PCI_RETRY_ABORT_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@VBUS_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@ROOT_PORT_RESET_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280*)* @ep0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep0_start(%struct.net2280* %0) #0 {
  %2 = alloca %struct.net2280*, align 8
  store %struct.net2280* %0, %struct.net2280** %2, align 8
  %3 = load i32, i32* @CLEAR_EP_HIDE_STATUS_PHASE, align 4
  %4 = shl i32 1, %3
  %5 = load i32, i32* @CLEAR_NAK_OUT_PACKETS, align 4
  %6 = shl i32 1, %5
  %7 = or i32 %4, %6
  %8 = load i32, i32* @CLEAR_CONTROL_STATUS_PHASE_HANDSHAKE, align 4
  %9 = shl i32 1, %8
  %10 = or i32 %7, %9
  %11 = load %struct.net2280*, %struct.net2280** %2, align 8
  %12 = getelementptr inbounds %struct.net2280, %struct.net2280* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @writel(i32 %10, i32* %15)
  %17 = load i32, i32* @SET_TEST_MODE, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* @SET_ADDRESS, align 4
  %20 = shl i32 1, %19
  %21 = or i32 %18, %20
  %22 = load i32, i32* @DEVICE_SET_CLEAR_DEVICE_REMOTE_WAKEUP, align 4
  %23 = shl i32 1, %22
  %24 = or i32 %21, %23
  %25 = load i32, i32* @GET_DEVICE_STATUS, align 4
  %26 = shl i32 1, %25
  %27 = or i32 %24, %26
  %28 = load i32, i32* @GET_INTERFACE_STATUS, align 4
  %29 = shl i32 1, %28
  %30 = or i32 %27, %29
  %31 = load %struct.net2280*, %struct.net2280** %2, align 8
  %32 = getelementptr inbounds %struct.net2280, %struct.net2280* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @writel(i32 %30, i32* %34)
  %36 = load i32, i32* @USB_ROOT_PORT_WAKEUP_ENABLE, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @SELF_POWERED_USB_DEVICE, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load i32, i32* @REMOTE_WAKEUP_SUPPORT, align 4
  %42 = shl i32 1, %41
  %43 = or i32 %40, %42
  %44 = load %struct.net2280*, %struct.net2280** %2, align 8
  %45 = getelementptr inbounds %struct.net2280, %struct.net2280* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @USB_DETECT_ENABLE, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %43, %48
  %50 = load i32, i32* @SELF_POWERED_STATUS, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load %struct.net2280*, %struct.net2280** %2, align 8
  %54 = getelementptr inbounds %struct.net2280, %struct.net2280* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @writel(i32 %52, i32* %56)
  %58 = load i32, i32* @SETUP_PACKET_INTERRUPT_ENABLE, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* @ENDPOINT_0_INTERRUPT_ENABLE, align 4
  %61 = shl i32 1, %60
  %62 = or i32 %59, %61
  %63 = load %struct.net2280*, %struct.net2280** %2, align 8
  %64 = getelementptr inbounds %struct.net2280, %struct.net2280* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = call i32 @writel(i32 %62, i32* %66)
  %68 = load i32, i32* @PCI_INTERRUPT_ENABLE, align 4
  %69 = shl i32 1, %68
  %70 = load i32, i32* @PCI_MASTER_ABORT_RECEIVED_INTERRUPT_ENABLE, align 4
  %71 = shl i32 1, %70
  %72 = or i32 %69, %71
  %73 = load i32, i32* @PCI_TARGET_ABORT_RECEIVED_INTERRUPT_ENABLE, align 4
  %74 = shl i32 1, %73
  %75 = or i32 %72, %74
  %76 = load i32, i32* @PCI_RETRY_ABORT_INTERRUPT_ENABLE, align 4
  %77 = shl i32 1, %76
  %78 = or i32 %75, %77
  %79 = load i32, i32* @VBUS_INTERRUPT_ENABLE, align 4
  %80 = shl i32 1, %79
  %81 = or i32 %78, %80
  %82 = load i32, i32* @ROOT_PORT_RESET_INTERRUPT_ENABLE, align 4
  %83 = shl i32 1, %82
  %84 = or i32 %81, %83
  %85 = load i32, i32* @SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE, align 4
  %86 = shl i32 1, %85
  %87 = or i32 %84, %86
  %88 = load %struct.net2280*, %struct.net2280** %2, align 8
  %89 = getelementptr inbounds %struct.net2280, %struct.net2280* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i32 @writel(i32 %87, i32* %91)
  %93 = load %struct.net2280*, %struct.net2280** %2, align 8
  %94 = getelementptr inbounds %struct.net2280, %struct.net2280* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = call i32 @readl(i32* %96)
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
