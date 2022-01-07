; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @rtl8180_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8180_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call i32 @netif_running(%struct.net_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %16, align 8
  %18 = icmp ne i32 (%struct.net_device*)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %23, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 %24(%struct.net_device* %25)
  br label %27

27:                                               ; preds = %19, %12
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 @netif_device_detach(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %27, %11
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = call i32 @pci_save_state(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = call i32 @pci_disable_device(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @pci_choose_state(%struct.pci_dev* %36, i32 %37)
  %39 = call i32 @pci_set_power_state(%struct.pci_dev* %35, i32 %38)
  ret i32 0
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
