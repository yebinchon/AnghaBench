; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/tc/extr_tc-driver.c_tc_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/tc/extr_tc-driver.c_tc_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.tc_dev = type { i32 }
%struct.tc_driver = type { i32 }
%struct.tc_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @tc_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.tc_dev*, align 8
  %7 = alloca %struct.tc_driver*, align 8
  %8 = alloca %struct.tc_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.tc_dev* @to_tc_dev(%struct.device* %9)
  store %struct.tc_dev* %10, %struct.tc_dev** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.tc_driver* @to_tc_driver(%struct.device_driver* %11)
  store %struct.tc_driver* %12, %struct.tc_driver** %7, align 8
  %13 = load %struct.tc_driver*, %struct.tc_driver** %7, align 8
  %14 = load %struct.tc_dev*, %struct.tc_dev** %6, align 8
  %15 = call %struct.tc_device_id* @tc_match_device(%struct.tc_driver* %13, %struct.tc_dev* %14)
  store %struct.tc_device_id* %15, %struct.tc_device_id** %8, align 8
  %16 = load %struct.tc_device_id*, %struct.tc_device_id** %8, align 8
  %17 = icmp ne %struct.tc_device_id* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.tc_dev* @to_tc_dev(%struct.device*) #1

declare dso_local %struct.tc_driver* @to_tc_driver(%struct.device_driver*) #1

declare dso_local %struct.tc_device_id* @tc_match_device(%struct.tc_driver*, %struct.tc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
