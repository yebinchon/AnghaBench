; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_rebind_intf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_rebind_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.usb_driver = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"forced unbind\0A\00", align 1
@DPM_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"rebind failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_rebind_intf(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_driver*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.usb_driver* @to_usb_driver(i32 %14)
  store %struct.usb_driver* %15, %struct.usb_driver** %4, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = call i32 @dev_dbg(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.usb_driver*, %struct.usb_driver** %4, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %21 = call i32 @usb_driver_release_interface(%struct.usb_driver* %19, %struct.usb_interface* %20)
  br label %22

22:                                               ; preds = %10, %1
  %23 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DPM_ON, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %34 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 0
  %35 = call i32 @device_attach(%struct.TYPE_6__* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %40 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %39, i32 0, i32 0
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @dev_warn(%struct.TYPE_6__* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %30
  br label %44

44:                                               ; preds = %43, %22
  ret void
}

declare dso_local %struct.usb_driver* @to_usb_driver(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

declare dso_local i32 @device_attach(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
