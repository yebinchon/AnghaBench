; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_rio500.c_probe_rio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_rio500.c_probe_rio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_usb_data = type { i32, i32, i8*, i8*, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }

@rio_instance = common dso_local global %struct.rio_usb_data zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"USB Rio found at address %d\0A\00", align 1
@usb_rio_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Not able to get a minor for this device.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OBUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"probe_rio: Not enough memory for the output buffer\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"probe_rio: obuf address:%p\00", align 1
@IBUF_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"probe_rio: Not enough memory for the input buffer\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"probe_rio: ibuf address:%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @probe_rio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_rio(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.rio_usb_data*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  store %struct.rio_usb_data* @rio_instance, %struct.rio_usb_data** %7, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_info(i32* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = call i32 @usb_register_dev(%struct.usb_interface* %17, i32* @usb_rio_class)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = call i32 @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %75

25:                                               ; preds = %2
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = load %struct.rio_usb_data*, %struct.rio_usb_data** %7, align 8
  %28 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %27, i32 0, i32 4
  store %struct.usb_device* %26, %struct.usb_device** %28, align 8
  %29 = load i32, i32* @OBUF_SIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  %32 = load %struct.rio_usb_data*, %struct.rio_usb_data** %7, align 8
  %33 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = icmp ne i8* %31, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = call i32 @err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = call i32 @usb_deregister_dev(%struct.usb_interface* %37, i32* @usb_rio_class)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %75

41:                                               ; preds = %25
  %42 = load %struct.rio_usb_data*, %struct.rio_usb_data** %7, align 8
  %43 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @IBUF_SIZE, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kmalloc(i32 %46, i32 %47)
  %49 = load %struct.rio_usb_data*, %struct.rio_usb_data** %7, align 8
  %50 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = icmp ne i8* %48, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %41
  %53 = call i32 @err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = call i32 @usb_deregister_dev(%struct.usb_interface* %54, i32* @usb_rio_class)
  %56 = load %struct.rio_usb_data*, %struct.rio_usb_data** %7, align 8
  %57 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %75

62:                                               ; preds = %41
  %63 = load %struct.rio_usb_data*, %struct.rio_usb_data** %7, align 8
  %64 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  %67 = load %struct.rio_usb_data*, %struct.rio_usb_data** %7, align 8
  %68 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %67, i32 0, i32 1
  %69 = call i32 @mutex_init(i32* %68)
  %70 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %71 = load %struct.rio_usb_data*, %struct.rio_usb_data** %7, align 8
  %72 = call i32 @usb_set_intfdata(%struct.usb_interface* %70, %struct.rio_usb_data* %71)
  %73 = load %struct.rio_usb_data*, %struct.rio_usb_data** %7, align 8
  %74 = getelementptr inbounds %struct.rio_usb_data, %struct.rio_usb_data* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %62, %52, %35, %21
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dbg(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.rio_usb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
