; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_dev_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.xenbus_device = type { i32 }
%struct.xenbus_driver = type { i32 (%struct.xenbus_device.0*)* }
%struct.xenbus_device.0 = type opaque

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@XenbusStateClosed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_dev_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.xenbus_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %5)
  store %struct.xenbus_device* %6, %struct.xenbus_device** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.xenbus_driver* @to_xenbus_driver(i32 %9)
  store %struct.xenbus_driver* %10, %struct.xenbus_driver** %4, align 8
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %12 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DPRINTK(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %16 = call i32 @free_otherend_watch(%struct.xenbus_device* %15)
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %18 = call i32 @free_otherend_details(%struct.xenbus_device* %17)
  %19 = load %struct.xenbus_driver*, %struct.xenbus_driver** %4, align 8
  %20 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %19, i32 0, i32 0
  %21 = load i32 (%struct.xenbus_device.0*)*, i32 (%struct.xenbus_device.0*)** %20, align 8
  %22 = icmp ne i32 (%struct.xenbus_device.0*)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.xenbus_driver*, %struct.xenbus_driver** %4, align 8
  %25 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.xenbus_device.0*)*, i32 (%struct.xenbus_device.0*)** %25, align 8
  %27 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %28 = bitcast %struct.xenbus_device* %27 to %struct.xenbus_device.0*
  %29 = call i32 %26(%struct.xenbus_device.0* %28)
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %32 = load i32, i32* @XenbusStateClosed, align 4
  %33 = call i32 @xenbus_switch_state(%struct.xenbus_device* %31, i32 %32)
  ret i32 0
}

declare dso_local %struct.xenbus_device* @to_xenbus_device(%struct.device*) #1

declare dso_local %struct.xenbus_driver* @to_xenbus_driver(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @free_otherend_watch(%struct.xenbus_device*) #1

declare dso_local i32 @free_otherend_details(%struct.xenbus_device*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
