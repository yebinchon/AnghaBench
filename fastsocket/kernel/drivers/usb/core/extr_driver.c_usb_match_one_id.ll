; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_match_one_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_match_one_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.usb_device_id = type { i32, i64, i64, i64 }
%struct.usb_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@USB_DEVICE_ID_MATCH_VENDOR = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_CLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_SUBCLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_match_one_id(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %9 = icmp eq %struct.usb_device_id* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

11:                                               ; preds = %2
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  store %struct.usb_host_interface* %14, %struct.usb_host_interface** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %7, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %18 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %19 = call i32 @usb_match_device(%struct.usb_device* %17, %struct.usb_device_id* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %100

22:                                               ; preds = %11
  %23 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @USB_DEVICE_ID_MATCH_VENDOR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %29
  %37 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %38 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_CLASS, align 4
  %41 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_SUBCLASS, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_PROTOCOL, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %100

48:                                               ; preds = %36, %29, %22
  %49 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_CLASS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %57 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %60 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %100

65:                                               ; preds = %55, %48
  %66 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %67 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_SUBCLASS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %74 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %77 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %100

82:                                               ; preds = %72, %65
  %83 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %84 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_PROTOCOL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %91 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %94 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %100

99:                                               ; preds = %89, %82
  store i32 1, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %98, %81, %64, %47, %21, %10
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_match_device(%struct.usb_device*, %struct.usb_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
