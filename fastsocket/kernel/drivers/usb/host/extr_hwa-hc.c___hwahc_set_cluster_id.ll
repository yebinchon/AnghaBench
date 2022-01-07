; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_hwa-hc.c___hwahc_set_cluster_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_hwa-hc.c___hwahc_set_cluster_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwahc = type { %struct.wahc, %struct.wusbhc }
%struct.wahc = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.device }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.wusbhc = type { i32 }

@WUSB_REQ_SET_CLUSTER_ID = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot set WUSB Cluster ID to 0x%02x: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Wireless USB Cluster ID set to 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwahc*, i32)* @__hwahc_set_cluster_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hwahc_set_cluster_id(%struct.hwahc* %0, i32 %1) #0 {
  %3 = alloca %struct.hwahc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wusbhc*, align 8
  %7 = alloca %struct.wahc*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.hwahc* %0, %struct.hwahc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hwahc*, %struct.hwahc** %3, align 8
  %10 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %9, i32 0, i32 1
  store %struct.wusbhc* %10, %struct.wusbhc** %6, align 8
  %11 = load %struct.hwahc*, %struct.hwahc** %3, align 8
  %12 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %11, i32 0, i32 0
  store %struct.wahc* %12, %struct.wahc** %7, align 8
  %13 = load %struct.wahc*, %struct.wahc** %7, align 8
  %14 = getelementptr inbounds %struct.wahc, %struct.wahc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.wahc*, %struct.wahc** %7, align 8
  %18 = getelementptr inbounds %struct.wahc, %struct.wahc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.wahc*, %struct.wahc** %7, align 8
  %21 = getelementptr inbounds %struct.wahc, %struct.wahc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @usb_sndctrlpipe(i32 %22, i32 0)
  %24 = load i32, i32* @WUSB_REQ_SET_CLUSTER_ID, align 4
  %25 = load i32, i32* @USB_DIR_OUT, align 4
  %26 = load i32, i32* @USB_TYPE_CLASS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.wahc*, %struct.wahc** %7, align 8
  %32 = getelementptr inbounds %struct.wahc, %struct.wahc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_control_msg(i32 %19, i32 %23, i32 %24, i32 %29, i32 %30, i32 %38, i32* null, i32 0, i32 1000)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %51

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %50 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @dev_info(%struct.device* %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
