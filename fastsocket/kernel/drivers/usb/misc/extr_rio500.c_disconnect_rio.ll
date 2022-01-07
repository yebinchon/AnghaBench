; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_rio500.c_disconnect_rio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_rio500.c_disconnect_rio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.rio_usb_data = type { i32, i64, i32, i32, i32*, i64 }

@usb_rio_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"USB Rio disconnected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @disconnect_rio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disconnect_rio(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.rio_usb_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.rio_usb_data* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.rio_usb_data* %5, %struct.rio_usb_data** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.rio_usb_data*, %struct.rio_usb_data** %3, align 8
  %9 = icmp ne %struct.rio_usb_data* %8, null
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = call i32 @usb_deregister_dev(%struct.usb_interface* %11, i32* @usb_rio_class)
  %13 = load %struct.rio_usb_data*, %struct.rio_usb_data** %3, align 8
  %14 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.rio_usb_data*, %struct.rio_usb_data** %3, align 8
  %17 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = load %struct.rio_usb_data*, %struct.rio_usb_data** %3, align 8
  %22 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.rio_usb_data*, %struct.rio_usb_data** %3, align 8
  %24 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.rio_usb_data*, %struct.rio_usb_data** %3, align 8
  %26 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %45

28:                                               ; preds = %10
  %29 = load %struct.rio_usb_data*, %struct.rio_usb_data** %3, align 8
  %30 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kfree(i32 %31)
  %33 = load %struct.rio_usb_data*, %struct.rio_usb_data** %3, align 8
  %34 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 0
  %39 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.rio_usb_data*, %struct.rio_usb_data** %3, align 8
  %41 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.rio_usb_data*, %struct.rio_usb_data** %3, align 8
  %43 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %45

45:                                               ; preds = %20, %28, %1
  ret void
}

declare dso_local %struct.rio_usb_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
