; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usbtmc_device_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"usbtmc_disconnect called\0A\00", align 1
@usbtmc_class = common dso_local global i32 0, align 4
@capability_attr_grp = common dso_local global i32 0, align 4
@data_attr_grp = common dso_local global i32 0, align 4
@usbtmc_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usbtmc_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbtmc_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usbtmc_device_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 0
  %6 = call i32 @dev_dbg(%struct.TYPE_2__* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.usbtmc_device_data* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.usbtmc_device_data* %8, %struct.usbtmc_device_data** %3, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call i32 @usb_deregister_dev(%struct.usb_interface* %9, i32* @usbtmc_class)
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @sysfs_remove_group(i32* %13, i32* @capability_attr_grp)
  %15 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @sysfs_remove_group(i32* %17, i32* @data_attr_grp)
  %19 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %20 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %23 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %25 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %24, i32 0, i32 2
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %28 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %27, i32 0, i32 1
  %29 = load i32, i32* @usbtmc_delete, align 4
  %30 = call i32 @kref_put(i32* %28, i32 %29)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.usbtmc_device_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
