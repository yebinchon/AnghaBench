; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_dev.c_stub_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_dev.c_stub_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.stub_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c" could not get device from inteface data\00", align 1
@SDEV_EVENT_REMOVED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bye\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @stub_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stub_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.stub_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.stub_device* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.stub_device* %5, %struct.stub_device** %3, align 8
  %6 = call i32 @usbip_udbg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %8 = icmp ne %struct.stub_device* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %13 = call i32 @usb_set_intfdata(%struct.usb_interface* %12, i32* null)
  %14 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = call i32 @stub_remove_files(i32* %15)
  %17 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %18 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %17, i32 0, i32 0
  %19 = load i32, i32* @SDEV_EVENT_REMOVED, align 4
  %20 = call i32 @usbip_event_add(i32* %18, i32 %19)
  %21 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %22 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %21, i32 0, i32 0
  %23 = call i32 @usbip_stop_eh(i32* %22)
  %24 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %25 = call i32 @stub_device_free(%struct.stub_device* %24)
  %26 = call i32 @usbip_udbg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %11, %9
  ret void
}

declare dso_local %struct.stub_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbip_udbg(i8*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @stub_remove_files(i32*) #1

declare dso_local i32 @usbip_event_add(i32*, i32) #1

declare dso_local i32 @usbip_stop_eh(i32*) #1

declare dso_local i32 @stub_device_free(%struct.stub_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
