; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_heavy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_heavy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { %struct.uea_softc* }
%struct.uea_softc = type { i32 }
%struct.usb_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbatm_data*, %struct.usb_interface*)* @uea_heavy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_heavy(%struct.usbatm_data* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbatm_data*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.uea_softc*, align 8
  store %struct.usbatm_data* %0, %struct.usbatm_data** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %6 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %7 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %6, i32 0, i32 0
  %8 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  store %struct.uea_softc* %8, %struct.uea_softc** %5, align 8
  %9 = load %struct.uea_softc*, %struct.uea_softc** %5, align 8
  %10 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.uea_softc*, %struct.uea_softc** %5, align 8
  %13 = call i32 @IS_OPERATIONAL(%struct.uea_softc* %12)
  %14 = call i32 @wait_event_interruptible(i32 %11, i32 %13)
  ret i32 0
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @IS_OPERATIONAL(%struct.uea_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
