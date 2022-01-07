; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_dev_to_uea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_dev_to_uea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i32 }
%struct.device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usbatm_data = type { %struct.uea_softc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uea_softc* (%struct.device*)* @dev_to_uea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uea_softc* @dev_to_uea(%struct.device* %0) #0 {
  %2 = alloca %struct.uea_softc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usbatm_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.usb_interface* @to_usb_interface(%struct.device* %6)
  store %struct.usb_interface* %7, %struct.usb_interface** %4, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %9 = icmp ne %struct.usb_interface* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.uea_softc* null, %struct.uea_softc** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usbatm_data* @usb_get_intfdata(%struct.usb_interface* %12)
  store %struct.usbatm_data* %13, %struct.usbatm_data** %5, align 8
  %14 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %15 = icmp ne %struct.usbatm_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.uea_softc* null, %struct.uea_softc** %2, align 8
  br label %21

17:                                               ; preds = %11
  %18 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %19 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %18, i32 0, i32 0
  %20 = load %struct.uea_softc*, %struct.uea_softc** %19, align 8
  store %struct.uea_softc* %20, %struct.uea_softc** %2, align 8
  br label %21

21:                                               ; preds = %17, %16, %10
  %22 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  ret %struct.uea_softc* %22
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usbatm_data* @usb_get_intfdata(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
