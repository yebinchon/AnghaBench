; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbduxsub = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"comedi_: disconnect called with null pointer.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"comedi_: BUG! called with wrong ptr!!!\0A\00", align 1
@start_stop_sem = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"comedi_: disconnected from the usb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usbduxsub_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbduxsub_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usbduxsub*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.usbduxsub* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.usbduxsub* %6, %struct.usbduxsub** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %7)
  store %struct.usb_device* %8, %struct.usb_device** %4, align 8
  %9 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %10 = icmp ne %struct.usbduxsub* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %17 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %16, i32 0, i32 1
  %18 = load %struct.usb_device*, %struct.usb_device** %17, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = icmp ne %struct.usb_device* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %41

25:                                               ; preds = %15
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = call i32 @comedi_usb_auto_unconfig(%struct.usb_device* %26)
  %28 = call i32 @down(i32* @start_stop_sem)
  %29 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %30 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %29, i32 0, i32 0
  %31 = call i32 @down(i32* %30)
  %32 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %33 = call i32 @tidy_up(%struct.usbduxsub* %32)
  %34 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %35 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %34, i32 0, i32 0
  %36 = call i32 @up(i32* %35)
  %37 = call i32 @up(i32* @start_stop_sem)
  %38 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %25, %21, %11
  ret void
}

declare dso_local %struct.usbduxsub* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @comedi_usb_auto_unconfig(%struct.usb_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @tidy_up(%struct.usbduxsub*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
