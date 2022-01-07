; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-sa1111.c_ohci_hcd_sa1111_drv_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-sa1111.c_ohci_hcd_sa1111_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ohci_sa1111_hc_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa1111_dev*)* @ohci_hcd_sa1111_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hcd_sa1111_drv_probe(%struct.sa1111_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sa1111_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %3, align 8
  %5 = call i64 (...) @usb_disabled()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %12 = call i32 @usb_hcd_sa1111_probe(i32* @ohci_sa1111_hc_driver, %struct.sa1111_dev* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local i32 @usb_hcd_sa1111_probe(i32*, %struct.sa1111_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
