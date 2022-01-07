; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbsevseg.c_sevseg_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbsevseg.c_sevseg_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_sevsegdev = type { i32 }

@dev_attr_grp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"USB 7 Segment now disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @sevseg_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sevseg_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_sevsegdev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.usb_sevsegdev* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.usb_sevsegdev* %5, %struct.usb_sevsegdev** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @sysfs_remove_group(i32* %8, i32* @dev_attr_grp)
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call i32 @usb_set_intfdata(%struct.usb_interface* %10, i32* null)
  %12 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %13 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_put_dev(i32 %14)
  %16 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %17 = call i32 @kfree(%struct.usb_sevsegdev* %16)
  %18 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 0
  %20 = call i32 @dev_info(%struct.TYPE_2__* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.usb_sevsegdev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(%struct.usb_sevsegdev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
