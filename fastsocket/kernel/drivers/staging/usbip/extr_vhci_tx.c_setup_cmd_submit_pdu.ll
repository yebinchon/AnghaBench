; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_tx.c_setup_cmd_submit_pdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_tx.c_setup_cmd_submit_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_header = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.urb = type { i64, i32, i64 }
%struct.vhci_priv = type { i32, %struct.vhci_device* }
%struct.vhci_device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"URB, local devnum %u, remote devid %u\0A\00", align 1
@USBIP_CMD_SUBMIT = common dso_local global i32 0, align 4
@USBIP_DIR_IN = common dso_local global i32 0, align 4
@USBIP_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbip_header*, %struct.urb*)* @setup_cmd_submit_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_cmd_submit_pdu(%struct.usbip_header* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usbip_header*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.vhci_priv*, align 8
  %6 = alloca %struct.vhci_device*, align 8
  store %struct.usbip_header* %0, %struct.usbip_header** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %7 = load %struct.urb*, %struct.urb** %4, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.vhci_priv*
  store %struct.vhci_priv* %10, %struct.vhci_priv** %5, align 8
  %11 = load %struct.vhci_priv*, %struct.vhci_priv** %5, align 8
  %12 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %11, i32 0, i32 1
  %13 = load %struct.vhci_device*, %struct.vhci_device** %12, align 8
  store %struct.vhci_device* %13, %struct.vhci_device** %6, align 8
  %14 = load %struct.urb*, %struct.urb** %4, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @usb_pipedevice(i32 %16)
  %18 = load %struct.vhci_device*, %struct.vhci_device** %6, align 8
  %19 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usbip_dbg_vhci_tx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load i32, i32* @USBIP_CMD_SUBMIT, align 4
  %23 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %24 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 4
  %26 = load %struct.vhci_priv*, %struct.vhci_priv** %5, align 8
  %27 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %30 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load %struct.vhci_device*, %struct.vhci_device** %6, align 8
  %33 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %36 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load %struct.urb*, %struct.urb** %4, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @usb_pipein(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %2
  %44 = load i32, i32* @USBIP_DIR_IN, align 4
  %45 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %46 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  br label %53

48:                                               ; preds = %2
  %49 = load i32, i32* @USBIP_DIR_OUT, align 4
  %50 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %51 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.urb*, %struct.urb** %4, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @usb_pipeendpoint(i32 %56)
  %58 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %59 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %62 = load %struct.urb*, %struct.urb** %4, align 8
  %63 = load i32, i32* @USBIP_CMD_SUBMIT, align 4
  %64 = call i32 @usbip_pack_pdu(%struct.usbip_header* %61, %struct.urb* %62, i32 %63, i32 1)
  %65 = load %struct.urb*, %struct.urb** %4, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %53
  %70 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %71 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.urb*, %struct.urb** %4, align 8
  %76 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @memcpy(i32 %74, i64 %77, i32 8)
  br label %79

79:                                               ; preds = %69, %53
  ret void
}

declare dso_local i32 @usbip_dbg_vhci_tx(i8*, i32, i32) #1

declare dso_local i32 @usb_pipedevice(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @usbip_pack_pdu(%struct.usbip_header*, %struct.urb*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
