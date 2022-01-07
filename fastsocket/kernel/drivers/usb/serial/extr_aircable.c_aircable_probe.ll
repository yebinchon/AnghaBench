; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_aircable.c_aircable_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_aircable.c_aircable_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device_id = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"found bulk out on endpoint %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid interface, discarding\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_device_id*)* @aircable_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aircable_probe(%struct.usb_serial* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %11 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  store %struct.usb_host_interface* %14, %struct.usb_host_interface** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %39, %2
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %24 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %29, %struct.usb_endpoint_descriptor** %7, align 8
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %31 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %15

42:                                               ; preds = %15
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dbg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
