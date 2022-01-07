; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_handle_dn_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_handle_dn_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.wusb_dev = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"DN DISCONNECT: device 0x%02x going down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*, %struct.wusb_dev*)* @wusbhc_handle_dn_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wusbhc_handle_dn_disconnect(%struct.wusbhc* %0, %struct.wusb_dev* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_dev*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.wusb_dev* %1, %struct.wusb_dev** %4, align 8
  %6 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %7 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %6, i32 0, i32 1
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %11 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_info(%struct.device* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %15 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %18 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %19 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %20 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wusb_port_by_idx(%struct.wusbhc* %18, i32 %21)
  %23 = call i32 @__wusbhc_dev_disconnect(%struct.wusbhc* %17, i32 %22)
  %24 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %25 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__wusbhc_dev_disconnect(%struct.wusbhc*, i32) #1

declare dso_local i32 @wusb_port_by_idx(%struct.wusbhc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
