; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_rx.c_vhci_recv_ret_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_rx.c_vhci_recv_ret_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.vhci_device = type { %struct.usbip_device }
%struct.usbip_device = type { i32 }
%struct.usbip_header = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"cannot find a urb of seqnum %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"max seqnum %d\0A\00", align 1
@the_controller = common dso_local global %struct.TYPE_5__* null, align 8
@VDEV_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@USBIP_RET_SUBMIT = common dso_local global i32 0, align 4
@usbip_dbg_flag_vhci_rx = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"now giveback urb %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhci_device*, %struct.usbip_header*)* @vhci_recv_ret_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhci_recv_ret_submit(%struct.vhci_device* %0, %struct.usbip_header* %1) #0 {
  %3 = alloca %struct.vhci_device*, align 8
  %4 = alloca %struct.usbip_header*, align 8
  %5 = alloca %struct.usbip_device*, align 8
  %6 = alloca %struct.urb*, align 8
  store %struct.vhci_device* %0, %struct.vhci_device** %3, align 8
  store %struct.usbip_header* %1, %struct.usbip_header** %4, align 8
  %7 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %8 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %7, i32 0, i32 0
  store %struct.usbip_device* %8, %struct.usbip_device** %5, align 8
  %9 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %10 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %11 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.urb* @pickup_urb_and_free_priv(%struct.vhci_device* %9, i32 %13)
  store %struct.urb* %14, %struct.urb** %6, align 8
  %15 = load %struct.urb*, %struct.urb** %6, align 8
  %16 = icmp ne %struct.urb* %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2
  %18 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %19 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usbip_uerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_controller, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i32 @atomic_read(i32* %24)
  %26 = call i32 @usbip_uinfo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.usbip_device*, %struct.usbip_device** %5, align 8
  %28 = load i32, i32* @VDEV_EVENT_ERROR_TCP, align 4
  %29 = call i32 @usbip_event_add(%struct.usbip_device* %27, i32 %28)
  br label %73

30:                                               ; preds = %2
  %31 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %32 = load %struct.urb*, %struct.urb** %6, align 8
  %33 = load i32, i32* @USBIP_RET_SUBMIT, align 4
  %34 = call i32 @usbip_pack_pdu(%struct.usbip_header* %31, %struct.urb* %32, i32 %33, i32 0)
  %35 = load %struct.usbip_device*, %struct.usbip_device** %5, align 8
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = call i64 @usbip_recv_xbuff(%struct.usbip_device* %35, %struct.urb* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %73

40:                                               ; preds = %30
  %41 = load %struct.usbip_device*, %struct.usbip_device** %5, align 8
  %42 = load %struct.urb*, %struct.urb** %6, align 8
  %43 = call i64 @usbip_recv_iso(%struct.usbip_device* %41, %struct.urb* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %73

46:                                               ; preds = %40
  %47 = load i64, i64* @usbip_dbg_flag_vhci_rx, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.urb*, %struct.urb** %6, align 8
  %51 = call i32 @usbip_dump_urb(%struct.urb* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = call i32 (i8*, ...) @usbip_dbg_vhci_rx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_controller, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_controller, align 8
  %59 = call i32 @vhci_to_hcd(%struct.TYPE_5__* %58)
  %60 = load %struct.urb*, %struct.urb** %6, align 8
  %61 = call i32 @usb_hcd_unlink_urb_from_ep(i32 %59, %struct.urb* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_controller, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_controller, align 8
  %66 = call i32 @vhci_to_hcd(%struct.TYPE_5__* %65)
  %67 = load %struct.urb*, %struct.urb** %6, align 8
  %68 = load %struct.urb*, %struct.urb** %6, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_hcd_giveback_urb(i32 %66, %struct.urb* %67, i32 %70)
  %72 = call i32 (i8*, ...) @usbip_dbg_vhci_rx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %52, %45, %39, %17
  ret void
}

declare dso_local %struct.urb* @pickup_urb_and_free_priv(%struct.vhci_device*, i32) #1

declare dso_local i32 @usbip_uerr(i8*, i32) #1

declare dso_local i32 @usbip_uinfo(i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @usbip_event_add(%struct.usbip_device*, i32) #1

declare dso_local i32 @usbip_pack_pdu(%struct.usbip_header*, %struct.urb*, i32, i32) #1

declare dso_local i64 @usbip_recv_xbuff(%struct.usbip_device*, %struct.urb*) #1

declare dso_local i64 @usbip_recv_iso(%struct.usbip_device*, %struct.urb*) #1

declare dso_local i32 @usbip_dump_urb(%struct.urb*) #1

declare dso_local i32 @usbip_dbg_vhci_rx(i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(i32, %struct.urb*) #1

declare dso_local i32 @vhci_to_hcd(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_hcd_giveback_urb(i32, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
