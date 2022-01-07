; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_bus_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vme_bridge = type { i32 }
%struct.vme_driver = type { i32 (%struct.device.0*, i32, i32)* }
%struct.device.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vme_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vme_bus_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.vme_bridge*, align 8
  %4 = alloca %struct.vme_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.vme_driver* @dev_to_vme_driver(%struct.device* %8)
  store %struct.vme_driver* %9, %struct.vme_driver** %4, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.vme_bridge* @dev_to_bridge(%struct.device* %10)
  store %struct.vme_bridge* %11, %struct.vme_bridge** %3, align 8
  %12 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %13 = getelementptr inbounds %struct.vme_driver, %struct.vme_driver* %12, i32 0, i32 0
  %14 = load i32 (%struct.device.0*, i32, i32)*, i32 (%struct.device.0*, i32, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.device.0*, i32, i32)* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %18 = getelementptr inbounds %struct.vme_driver, %struct.vme_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.device.0*, i32, i32)*, i32 (%struct.device.0*, i32, i32)** %18, align 8
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = bitcast %struct.device* %20 to %struct.device.0*
  %22 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %23 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call i32 @vme_calc_slot(%struct.device* %25)
  %27 = call i32 %19(%struct.device.0* %21, i32 %24, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %16, %1
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.vme_driver* @dev_to_vme_driver(%struct.device*) #1

declare dso_local %struct.vme_bridge* @dev_to_bridge(%struct.device*) #1

declare dso_local i32 @vme_calc_slot(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
