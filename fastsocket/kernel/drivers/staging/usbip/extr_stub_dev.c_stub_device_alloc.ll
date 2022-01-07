; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_dev.c_stub_device_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_dev.c_stub_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_device = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, %struct.usb_interface* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"allocating stub device\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no memory for stub_device\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"stub_rx\00", align 1
@stub_rx_loop = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"stub_tx\00", align 1
@stub_tx_loop = common dso_local global i32 0, align 4
@USBIP_STUB = common dso_local global i32 0, align 4
@SDEV_ST_AVAILABLE = common dso_local global i32 0, align 4
@stub_shutdown_connection = common dso_local global i32 0, align 4
@stub_device_reset = common dso_local global i32 0, align 4
@stub_device_unusable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"register new interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stub_device* (%struct.usb_interface*)* @stub_device_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stub_device* @stub_device_alloc(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.stub_device*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.stub_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = call i32 @interface_to_busnum(%struct.usb_interface* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %10 = call i32 @interface_to_devnum(%struct.usb_interface* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.stub_device* @kzalloc(i32 96, i32 %14)
  store %struct.stub_device* %15, %struct.stub_device** %4, align 8
  %16 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %17 = icmp ne %struct.stub_device* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store %struct.stub_device* null, %struct.stub_device** %2, align 8
  br label %98

22:                                               ; preds = %1
  %23 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %24 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %25 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %24, i32 0, i32 9
  store %struct.usb_interface* %23, %struct.usb_interface** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %31 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %33 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  %35 = load i32, i32* @stub_rx_loop, align 4
  %36 = call i32 @usbip_task_init(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %38 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = load i32, i32* @stub_tx_loop, align 4
  %41 = call i32 @usbip_task_init(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @USBIP_STUB, align 4
  %43 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %44 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @SDEV_ST_AVAILABLE, align 4
  %47 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %48 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %51 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %55 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %58 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %57, i32 0, i32 8
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %61 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %60, i32 0, i32 7
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %64 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %63, i32 0, i32 6
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %67 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %66, i32 0, i32 5
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %70 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %69, i32 0, i32 4
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %73 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %72, i32 0, i32 3
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %76 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %75, i32 0, i32 2
  %77 = call i32 @init_waitqueue_head(i32* %76)
  %78 = load i32, i32* @stub_shutdown_connection, align 4
  %79 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %80 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 8
  %83 = load i32, i32* @stub_device_reset, align 4
  %84 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %85 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* @stub_device_unusable, align 4
  %89 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %90 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %94 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %93, i32 0, i32 1
  %95 = call i32 @usbip_start_eh(%struct.TYPE_4__* %94)
  %96 = call i32 @usbip_udbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  store %struct.stub_device* %97, %struct.stub_device** %2, align 8
  br label %98

98:                                               ; preds = %22, %18
  %99 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  ret %struct.stub_device* %99
}

declare dso_local i32 @interface_to_busnum(%struct.usb_interface*) #1

declare dso_local i32 @interface_to_devnum(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.stub_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usbip_task_init(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usbip_start_eh(%struct.TYPE_4__*) #1

declare dso_local i32 @usbip_udbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
