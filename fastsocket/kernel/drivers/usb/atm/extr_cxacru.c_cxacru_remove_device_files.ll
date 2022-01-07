; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_remove_device_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_remove_device_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.atm_dev = type { i32 }

@REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbatm_data*, %struct.atm_dev*)* @cxacru_remove_device_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxacru_remove_device_files(%struct.usbatm_data* %0, %struct.atm_dev* %1) #0 {
  %3 = alloca %struct.usbatm_data*, align 8
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  store %struct.usbatm_data* %0, %struct.usbatm_data** %3, align 8
  store %struct.atm_dev* %1, %struct.atm_dev** %4, align 8
  %6 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %7 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %6, i32 0, i32 0
  %8 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  store %struct.usb_interface* %8, %struct.usb_interface** %5, align 8
  %9 = load i32, i32* @REMOVE, align 4
  %10 = call i32 @CXACRU_ALL_FILES(i32 %9)
  ret void
}

declare dso_local i32 @CXACRU_ALL_FILES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
