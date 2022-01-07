; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_vstusb.c_vstusb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_vstusb.c_vstusb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.vstusb_device = type { i32, i32, i32, i64 }

@usb_vstusb_class = common dso_local global i32 0, align 4
@vstusb_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @vstusb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vstusb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.vstusb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.vstusb_device* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.vstusb_device* %5, %struct.vstusb_device** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_deregister_dev(%struct.usb_interface* %6, i32* @usb_vstusb_class)
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call i32 @usb_set_intfdata(%struct.usb_interface* %8, i32* null)
  %10 = load %struct.vstusb_device*, %struct.vstusb_device** %3, align 8
  %11 = icmp ne %struct.vstusb_device* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.vstusb_device*, %struct.vstusb_device** %3, align 8
  %14 = getelementptr inbounds %struct.vstusb_device, %struct.vstusb_device* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.vstusb_device*, %struct.vstusb_device** %3, align 8
  %17 = getelementptr inbounds %struct.vstusb_device, %struct.vstusb_device* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.vstusb_device*, %struct.vstusb_device** %3, align 8
  %19 = getelementptr inbounds %struct.vstusb_device, %struct.vstusb_device* %18, i32 0, i32 2
  %20 = call i32 @usb_kill_anchored_urbs(i32* %19)
  %21 = load %struct.vstusb_device*, %struct.vstusb_device** %3, align 8
  %22 = getelementptr inbounds %struct.vstusb_device, %struct.vstusb_device* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.vstusb_device*, %struct.vstusb_device** %3, align 8
  %25 = getelementptr inbounds %struct.vstusb_device, %struct.vstusb_device* %24, i32 0, i32 0
  %26 = load i32, i32* @vstusb_delete, align 4
  %27 = call i32 @kref_put(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.vstusb_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
