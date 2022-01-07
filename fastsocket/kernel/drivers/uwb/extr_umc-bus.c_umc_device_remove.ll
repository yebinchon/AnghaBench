; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-bus.c_umc_device_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-bus.c_umc_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.umc_dev = type { i32 }
%struct.umc_driver = type { i32 (%struct.umc_dev.0*)* }
%struct.umc_dev.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @umc_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umc_device_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.umc_dev*, align 8
  %4 = alloca %struct.umc_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.umc_driver* @to_umc_driver(i32 %7)
  store %struct.umc_driver* %8, %struct.umc_driver** %4, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.umc_dev* @to_umc_dev(%struct.device* %9)
  store %struct.umc_dev* %10, %struct.umc_dev** %3, align 8
  %11 = load %struct.umc_driver*, %struct.umc_driver** %4, align 8
  %12 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.umc_dev.0*)*, i32 (%struct.umc_dev.0*)** %12, align 8
  %14 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %15 = bitcast %struct.umc_dev* %14 to %struct.umc_dev.0*
  %16 = call i32 %13(%struct.umc_dev.0* %15)
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = call i32 @put_device(%struct.device* %17)
  ret i32 0
}

declare dso_local %struct.umc_driver* @to_umc_driver(i32) #1

declare dso_local %struct.umc_dev* @to_umc_dev(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
