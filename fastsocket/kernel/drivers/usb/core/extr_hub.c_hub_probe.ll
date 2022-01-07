; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i64, i64, i64 }
%struct.usb_hub = type { i32, i32, %struct.usb_device*, i32*, i32, i32 }

@MAX_TOPO_LEVEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Unsupported bus topology: hub nested too deep\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"bad descriptor, ignoring hub\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"USB hub found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't kmalloc hub struct\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@led_work = common dso_local global i32* null, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@highspeed_hubs = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @hub_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_hub*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 2
  %12 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  store %struct.usb_host_interface* %12, %struct.usb_host_interface** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX_TOPO_LEVEL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 1
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @E2BIG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %123

26:                                               ; preds = %2
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %28 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %34 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %61, %51, %38
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 1
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %123

45:                                               ; preds = %32, %26
  %46 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %47 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %39

52:                                               ; preds = %45
  %53 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %54 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %57, %struct.usb_endpoint_descriptor** %7, align 8
  %58 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %59 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %39

62:                                               ; preds = %52
  %63 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %64 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %63, i32 0, i32 1
  %65 = call i32 @dev_info(i32* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.usb_hub* @kzalloc(i32 32, i32 %66)
  store %struct.usb_hub* %67, %struct.usb_hub** %9, align 8
  %68 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %69 = icmp ne %struct.usb_hub* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %72 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %71, i32 0, i32 1
  %73 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %123

76:                                               ; preds = %62
  %77 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %78 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %77, i32 0, i32 5
  %79 = call i32 @kref_init(i32* %78)
  %80 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %81 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %80, i32 0, i32 4
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %84 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %83, i32 0, i32 1
  %85 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %86 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %85, i32 0, i32 3
  store i32* %84, i32** %86, align 8
  %87 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %88 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %89 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %88, i32 0, i32 2
  store %struct.usb_device* %87, %struct.usb_device** %89, align 8
  %90 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %91 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %90, i32 0, i32 1
  %92 = load i32*, i32** @led_work, align 8
  %93 = call i32 @INIT_DELAYED_WORK(i32* %91, i32* %92)
  %94 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %95 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %94, i32 0, i32 0
  %96 = call i32 @INIT_DELAYED_WORK(i32* %95, i32* null)
  %97 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %98 = call i32 @usb_get_intf(%struct.usb_interface* %97)
  %99 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %100 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %101 = call i32 @usb_set_intfdata(%struct.usb_interface* %99, %struct.usb_hub* %100)
  %102 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %103 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %105 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @USB_SPEED_HIGH, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %76
  %110 = load i32, i32* @highspeed_hubs, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @highspeed_hubs, align 4
  br label %112

112:                                              ; preds = %109, %76
  %113 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %114 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %115 = call i64 @hub_configure(%struct.usb_hub* %113, %struct.usb_endpoint_descriptor* %114)
  %116 = icmp sge i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %123

118:                                              ; preds = %112
  %119 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %120 = call i32 @hub_disconnect(%struct.usb_interface* %119)
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %117, %70, %39, %20
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.usb_hub* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_hub*) #1

declare dso_local i64 @hub_configure(%struct.usb_hub*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @hub_disconnect(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
