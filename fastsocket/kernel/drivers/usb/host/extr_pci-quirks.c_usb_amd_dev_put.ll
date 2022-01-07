; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_pci-quirks.c_usb_amd_dev_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_pci-quirks.c_usb_amd_dev_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, %struct.pci_dev*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@amd_lock = common dso_local global i32 0, align 4
@amd_chipset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_amd_dev_put() #0 {
  %1 = alloca %struct.pci_dev*, align 8
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @amd_lock, i64 %4)
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 0), align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 0), align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %11)
  br label %29

13:                                               ; preds = %0
  %14 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 6), align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %1, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 5), align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %2, align 8
  store %struct.pci_dev* null, %struct.pci_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 6), align 8
  store %struct.pci_dev* null, %struct.pci_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 1), align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %19 = icmp ne %struct.pci_dev* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %22 = call i32 @pci_dev_put(%struct.pci_dev* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = icmp ne %struct.pci_dev* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = call i32 @pci_dev_put(%struct.pci_dev* %27)
  br label %29

29:                                               ; preds = %10, %26, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
