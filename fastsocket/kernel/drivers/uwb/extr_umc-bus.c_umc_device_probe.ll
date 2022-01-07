; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-bus.c_umc_device_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-bus.c_umc_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32 }
%struct.umc_dev = type { i32 }
%struct.umc_driver = type { i32 (%struct.umc_dev.0*)* }
%struct.umc_dev.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @umc_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umc_device_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.umc_dev*, align 8
  %4 = alloca %struct.umc_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.umc_driver* @to_umc_driver(i32 %8)
  store %struct.umc_driver* %9, %struct.umc_driver** %4, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.umc_dev* @to_umc_dev(%struct.device* %10)
  store %struct.umc_dev* %11, %struct.umc_dev** %3, align 8
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call i32 @get_device(%struct.device* %12)
  %14 = load %struct.umc_driver*, %struct.umc_driver** %4, align 8
  %15 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %14, i32 0, i32 0
  %16 = load i32 (%struct.umc_dev.0*)*, i32 (%struct.umc_dev.0*)** %15, align 8
  %17 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %18 = bitcast %struct.umc_dev* %17 to %struct.umc_dev.0*
  %19 = call i32 %16(%struct.umc_dev.0* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %2, align 8
  %24 = call i32 @put_device(%struct.device* %23)
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %2, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @umc_bus_rescan(i32 %28)
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.umc_driver* @to_umc_driver(i32) #1

declare dso_local %struct.umc_dev* @to_umc_dev(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @umc_bus_rescan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
