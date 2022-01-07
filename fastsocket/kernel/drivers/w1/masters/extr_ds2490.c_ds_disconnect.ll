; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds2490.c_ds_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds2490.c_ds_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ds_device = type { i32, i32 }

@ds_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ds_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ds_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.ds_device* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.ds_device* %5, %struct.ds_device** %3, align 8
  %6 = load %struct.ds_device*, %struct.ds_device** %3, align 8
  %7 = icmp ne %struct.ds_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = call i32 @mutex_lock(i32* @ds_mutex)
  %11 = load %struct.ds_device*, %struct.ds_device** %3, align 8
  %12 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %11, i32 0, i32 1
  %13 = call i32 @list_del(i32* %12)
  %14 = call i32 @mutex_unlock(i32* @ds_mutex)
  %15 = load %struct.ds_device*, %struct.ds_device** %3, align 8
  %16 = call i32 @ds_w1_fini(%struct.ds_device* %15)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %18 = call i32 @usb_set_intfdata(%struct.usb_interface* %17, i32* null)
  %19 = load %struct.ds_device*, %struct.ds_device** %3, align 8
  %20 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_put_dev(i32 %21)
  %23 = load %struct.ds_device*, %struct.ds_device** %3, align 8
  %24 = call i32 @kfree(%struct.ds_device* %23)
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.ds_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ds_w1_fini(%struct.ds_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(%struct.ds_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
