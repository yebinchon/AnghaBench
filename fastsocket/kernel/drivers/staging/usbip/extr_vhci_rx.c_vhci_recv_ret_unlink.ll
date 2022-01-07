; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_rx.c_vhci_recv_ret_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_rx.c_vhci_recv_ret_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.vhci_device = type { i32 }
%struct.usbip_header = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vhci_unlink = type { i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"cannot find the pending unlink %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"the urb (seqnum %d) was already given backed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"now giveback urb %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@the_controller = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhci_device*, %struct.usbip_header*)* @vhci_recv_ret_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhci_recv_ret_unlink(%struct.vhci_device* %0, %struct.usbip_header* %1) #0 {
  %3 = alloca %struct.vhci_device*, align 8
  %4 = alloca %struct.usbip_header*, align 8
  %5 = alloca %struct.vhci_unlink*, align 8
  %6 = alloca %struct.urb*, align 8
  store %struct.vhci_device* %0, %struct.vhci_device** %3, align 8
  store %struct.usbip_header* %1, %struct.usbip_header** %4, align 8
  %7 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %8 = call i32 @usbip_dump_header(%struct.usbip_header* %7)
  %9 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %10 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %11 = call %struct.vhci_unlink* @dequeue_pending_unlink(%struct.vhci_device* %9, %struct.usbip_header* %10)
  store %struct.vhci_unlink* %11, %struct.vhci_unlink** %5, align 8
  %12 = load %struct.vhci_unlink*, %struct.vhci_unlink** %5, align 8
  %13 = icmp ne %struct.vhci_unlink* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %16 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usbip_uinfo(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %22 = load %struct.vhci_unlink*, %struct.vhci_unlink** %5, align 8
  %23 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.urb* @pickup_urb_and_free_priv(%struct.vhci_device* %21, i32 %24)
  store %struct.urb* %25, %struct.urb** %6, align 8
  %26 = load %struct.urb*, %struct.urb** %6, align 8
  %27 = icmp ne %struct.urb* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %30 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usbip_uinfo(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %65

34:                                               ; preds = %20
  %35 = load %struct.urb*, %struct.urb** %6, align 8
  %36 = call i32 @usbip_dbg_vhci_rx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %35)
  %37 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %38 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.urb*, %struct.urb** %6, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.urb*, %struct.urb** %6, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usbip_uinfo(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_controller, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_controller, align 8
  %52 = call i32 @vhci_to_hcd(%struct.TYPE_9__* %51)
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = call i32 @usb_hcd_unlink_urb_from_ep(i32 %52, %struct.urb* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_controller, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_controller, align 8
  %59 = call i32 @vhci_to_hcd(%struct.TYPE_9__* %58)
  %60 = load %struct.urb*, %struct.urb** %6, align 8
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_hcd_giveback_urb(i32 %59, %struct.urb* %60, i32 %63)
  br label %65

65:                                               ; preds = %34, %28
  %66 = load %struct.vhci_unlink*, %struct.vhci_unlink** %5, align 8
  %67 = call i32 @kfree(%struct.vhci_unlink* %66)
  br label %68

68:                                               ; preds = %65, %14
  ret void
}

declare dso_local i32 @usbip_dump_header(%struct.usbip_header*) #1

declare dso_local %struct.vhci_unlink* @dequeue_pending_unlink(%struct.vhci_device*, %struct.usbip_header*) #1

declare dso_local i32 @usbip_uinfo(i8*, i32) #1

declare dso_local %struct.urb* @pickup_urb_and_free_priv(%struct.vhci_device*, i32) #1

declare dso_local i32 @usbip_dbg_vhci_rx(i8*, %struct.urb*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(i32, %struct.urb*) #1

declare dso_local i32 @vhci_to_hcd(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_hcd_giveback_urb(i32, %struct.urb*, i32) #1

declare dso_local i32 @kfree(%struct.vhci_unlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
