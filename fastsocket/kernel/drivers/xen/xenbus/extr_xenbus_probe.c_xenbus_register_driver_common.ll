; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_register_driver_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_register_driver_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, %struct.module*, i32*, i32 }
%struct.xen_bus_type = type { i32 }
%struct.module = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_register_driver_common(%struct.xenbus_driver* %0, %struct.xen_bus_type* %1, %struct.module* %2, i8* %3) #0 {
  %5 = alloca %struct.xenbus_driver*, align 8
  %6 = alloca %struct.xen_bus_type*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i8*, align 8
  store %struct.xenbus_driver* %0, %struct.xenbus_driver** %5, align 8
  store %struct.xen_bus_type* %1, %struct.xen_bus_type** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %10 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %13 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 8
  %15 = load %struct.xen_bus_type*, %struct.xen_bus_type** %6, align 8
  %16 = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %15, i32 0, i32 0
  %17 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %18 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32* %16, i32** %19, align 8
  %20 = load %struct.module*, %struct.module** %7, align 8
  %21 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %22 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store %struct.module* %20, %struct.module** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %26 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %29 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %28, i32 0, i32 0
  %30 = call i32 @driver_register(%struct.TYPE_2__* %29)
  ret i32 %30
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
