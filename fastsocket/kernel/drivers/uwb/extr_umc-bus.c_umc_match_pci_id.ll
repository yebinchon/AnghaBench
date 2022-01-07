; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-bus.c_umc_match_pci_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-bus.c_umc_match_pci_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_driver = type { %struct.pci_device_id* }
%struct.pci_device_id = type { i32 }
%struct.umc_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.pci_dev = type { i32 }

@pci_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umc_match_pci_id(%struct.umc_driver* %0, %struct.umc_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.umc_driver*, align 8
  %5 = alloca %struct.umc_dev*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.umc_driver* %0, %struct.umc_driver** %4, align 8
  store %struct.umc_dev* %1, %struct.umc_dev** %5, align 8
  %8 = load %struct.umc_driver*, %struct.umc_driver** %4, align 8
  %9 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %8, i32 0, i32 0
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  store %struct.pci_device_id* %10, %struct.pci_device_id** %6, align 8
  %11 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %12 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, @pci_bus_type
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %21 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call %struct.pci_dev* @to_pci_dev(%struct.TYPE_4__* %23)
  store %struct.pci_dev* %24, %struct.pci_dev** %7, align 8
  %25 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = call i32* @pci_match_id(%struct.pci_device_id* %25, %struct.pci_dev* %26)
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %19, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.TYPE_4__*) #1

declare dso_local i32* @pci_match_id(%struct.pci_device_id*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
