; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_handle_dn_alive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_handle_dn_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.wusb_dev = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*, %struct.wusb_dev*)* @wusbhc_handle_dn_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wusbhc_handle_dn_alive(%struct.wusbhc* %0, %struct.wusb_dev* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_dev*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.wusb_dev* %1, %struct.wusb_dev** %4, align 8
  %5 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %6 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* @jiffies, align 4
  %9 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %10 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %12 = call i32 @__wusbhc_keep_alive(%struct.wusbhc* %11)
  %13 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %14 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__wusbhc_keep_alive(%struct.wusbhc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
