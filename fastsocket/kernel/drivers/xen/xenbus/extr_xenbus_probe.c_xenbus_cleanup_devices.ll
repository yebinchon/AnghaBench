; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_cleanup_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_cleanup_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }
%struct.xb_find_info = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cleanup_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bus_type*)* @xenbus_cleanup_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenbus_cleanup_devices(i8* %0, %struct.bus_type* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca %struct.xb_find_info, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bus_type* %1, %struct.bus_type** %4, align 8
  %6 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 0
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %8, align 8
  br label %9

9:                                                ; preds = %27, %2
  %10 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %10, align 8
  %11 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %12 = load i32, i32* @cleanup_dev, align 4
  %13 = call i32 @bus_for_each_dev(%struct.bus_type* %11, i32* null, %struct.xb_find_info* %5, i32 %12)
  %14 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @device_unregister(i32* %20)
  %22 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @put_device(i32* %24)
  br label %26

26:                                               ; preds = %17, %9
  br label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %9, label %31

31:                                               ; preds = %27
  ret void
}

declare dso_local i32 @bus_for_each_dev(%struct.bus_type*, i32*, %struct.xb_find_info*, i32) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
