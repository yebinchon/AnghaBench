; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.sisusb_usb_data = type { i32, i32, i64, i64 }

@usb_sisusb_class = common dso_local global i32 0, align 4
@sisusb_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @sisusb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.sisusb_usb_data* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.sisusb_usb_data* %5, %struct.sisusb_usb_data** %3, align 8
  %6 = icmp ne %struct.sisusb_usb_data* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call i32 @usb_deregister_dev(%struct.usb_interface* %9, i32* @usb_sisusb_class)
  %11 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %12 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %15 = call i32 @sisusb_wait_all_out_complete(%struct.sisusb_usb_data* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %8
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %19 = call i32 @sisusb_kill_all_busy(%struct.sisusb_usb_data* %18)
  br label %20

20:                                               ; preds = %17, %8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %22 = call i32 @usb_set_intfdata(%struct.usb_interface* %21, i32* null)
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %24 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %26 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %28 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %31 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %30, i32 0, i32 0
  %32 = load i32, i32* @sisusb_delete, align 4
  %33 = call i32 @kref_put(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %20, %7
  ret void
}

declare dso_local %struct.sisusb_usb_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sisusb_wait_all_out_complete(%struct.sisusb_usb_data*) #1

declare dso_local i32 @sisusb_kill_all_busy(%struct.sisusb_usb_data*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
