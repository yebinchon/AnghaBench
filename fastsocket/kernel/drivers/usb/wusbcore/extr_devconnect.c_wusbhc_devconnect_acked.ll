; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_devconnect_acked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_devconnect_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.wusb_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*, %struct.wusb_dev*)* @wusbhc_devconnect_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wusbhc_devconnect_acked(%struct.wusbhc* %0, %struct.wusb_dev* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_dev*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.wusb_dev* %1, %struct.wusb_dev** %4, align 8
  %5 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %6 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %7 = call i32 @wusbhc_cack_rm(%struct.wusbhc* %5, %struct.wusb_dev* %6)
  %8 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %9 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %14 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %15 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @wusbhc_mmcie_set(%struct.wusbhc* %13, i32 0, i32 0, i32* %16)
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %20 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %21 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @wusbhc_mmcie_rm(%struct.wusbhc* %19, i32* %22)
  br label %24

24:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @wusbhc_cack_rm(%struct.wusbhc*, %struct.wusb_dev*) #1

declare dso_local i32 @wusbhc_mmcie_set(%struct.wusbhc*, i32, i32, i32*) #1

declare dso_local i32 @wusbhc_mmcie_rm(%struct.wusbhc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
