; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-bus.c_umc_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-bus.c_umc_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.umc_dev = type { i64 }
%struct.umc_driver = type { i64, i32 (%struct.umc_driver*, %struct.umc_dev.0*)* }
%struct.umc_dev.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @umc_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umc_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.umc_dev*, align 8
  %7 = alloca %struct.umc_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.umc_dev* @to_umc_dev(%struct.device* %8)
  store %struct.umc_dev* %9, %struct.umc_dev** %6, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %11 = call %struct.umc_driver* @to_umc_driver(%struct.device_driver* %10)
  store %struct.umc_driver* %11, %struct.umc_driver** %7, align 8
  %12 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %13 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.umc_driver*, %struct.umc_driver** %7, align 8
  %16 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.umc_driver*, %struct.umc_driver** %7, align 8
  %21 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %20, i32 0, i32 1
  %22 = load i32 (%struct.umc_driver*, %struct.umc_dev.0*)*, i32 (%struct.umc_driver*, %struct.umc_dev.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.umc_driver*, %struct.umc_dev.0*)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.umc_driver*, %struct.umc_driver** %7, align 8
  %26 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %25, i32 0, i32 1
  %27 = load i32 (%struct.umc_driver*, %struct.umc_dev.0*)*, i32 (%struct.umc_driver*, %struct.umc_dev.0*)** %26, align 8
  %28 = load %struct.umc_driver*, %struct.umc_driver** %7, align 8
  %29 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %30 = bitcast %struct.umc_dev* %29 to %struct.umc_dev.0*
  %31 = call i32 %27(%struct.umc_driver* %28, %struct.umc_dev.0* %30)
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %24
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.umc_dev* @to_umc_dev(%struct.device*) #1

declare dso_local %struct.umc_driver* @to_umc_driver(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
