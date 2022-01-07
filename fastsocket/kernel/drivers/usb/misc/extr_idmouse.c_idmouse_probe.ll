; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_idmouse.c_idmouse_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_idmouse.c_idmouse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_idmouse = type { i32, i32, i64, i32, i32, %struct.usb_interface*, %struct.usb_device*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IMGSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate input buffer.\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to find bulk-in endpoint.\00", align 1
@idmouse_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unble to allocate minor number.\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s now attached\0A\00", align 1
@DRIVER_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @idmouse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmouse_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_idmouse*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 1
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %16 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %15, i64 0
  store %struct.usb_host_interface* %16, %struct.usb_host_interface** %8, align 8
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %124

25:                                               ; preds = %2
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.usb_idmouse* @kzalloc(i32 48, i32 %26)
  store %struct.usb_idmouse* %27, %struct.usb_idmouse** %7, align 8
  %28 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %29 = icmp eq %struct.usb_idmouse* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %124

33:                                               ; preds = %25
  %34 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %35 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %34, i32 0, i32 7
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %39 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %38, i32 0, i32 6
  store %struct.usb_device* %37, %struct.usb_device** %39, align 8
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %42 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %41, i32 0, i32 5
  store %struct.usb_interface* %40, %struct.usb_interface** %42, align 8
  %43 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %44 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %47, %struct.usb_endpoint_descriptor** %9, align 8
  %48 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %49 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %91, label %52

52:                                               ; preds = %33
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %54 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %52
  %57 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %58 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %62 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %64 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %63, i32 0, i32 0
  store i32 512, i32* %64, align 8
  %65 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %66 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %69 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* @IMGSIZE, align 8
  %71 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %72 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %70, %74
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32 @kmalloc(i64 %75, i32 %76)
  %78 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %79 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %81 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %56
  %85 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %87 = call i32 @idmouse_delete(%struct.usb_idmouse* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %124

90:                                               ; preds = %56
  br label %91

91:                                               ; preds = %90, %52, %33
  %92 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %93 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %99 = call i32 @idmouse_delete(%struct.usb_idmouse* %98)
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %124

102:                                              ; preds = %91
  %103 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %104 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %106 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %107 = call i32 @usb_set_intfdata(%struct.usb_interface* %105, %struct.usb_idmouse* %106)
  %108 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %109 = call i32 @usb_register_dev(%struct.usb_interface* %108, i32* @idmouse_class)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %115 = call i32 @usb_set_intfdata(%struct.usb_interface* %114, %struct.usb_idmouse* null)
  %116 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %117 = call i32 @idmouse_delete(%struct.usb_idmouse* %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %124

119:                                              ; preds = %102
  %120 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %121 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %120, i32 0, i32 0
  %122 = load i32, i32* @DRIVER_DESC, align 4
  %123 = call i32 @dev_info(i32* %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %112, %96, %84, %30, %22
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_idmouse* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @idmouse_delete(%struct.usb_idmouse*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_idmouse*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
