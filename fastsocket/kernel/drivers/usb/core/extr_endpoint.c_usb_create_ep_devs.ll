; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_endpoint.c_usb_create_ep_devs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_endpoint.c_usb_create_ep_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_host_endpoint = type { %struct.ep_device*, %struct.TYPE_4__ }
%struct.ep_device = type { %struct.TYPE_5__, %struct.usb_device*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.device*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ep_dev_groups = common dso_local global i32 0, align 4
@usb_ep_device_type = common dso_local global i32 0, align 4
@ep_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ep_%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_create_ep_devs(%struct.device* %0, %struct.usb_host_endpoint* %1, %struct.usb_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.ep_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %6, align 8
  store %struct.usb_device* %2, %struct.usb_device** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ep_device* @kzalloc(i32 48, i32 %10)
  store %struct.ep_device* %11, %struct.ep_device** %8, align 8
  %12 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %13 = icmp ne %struct.ep_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %19 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %18, i32 0, i32 1
  %20 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %21 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %20, i32 0, i32 2
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %21, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %23 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %24 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %23, i32 0, i32 1
  store %struct.usb_device* %22, %struct.usb_device** %24, align 8
  %25 = load i32, i32* @ep_dev_groups, align 4
  %26 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %27 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %30 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32* @usb_ep_device_type, i32** %31, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %34 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store %struct.device* %32, %struct.device** %35, align 8
  %36 = load i32, i32* @ep_device_release, align 4
  %37 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %38 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %41 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %40, i32 0, i32 0
  %42 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %43 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_set_name(%struct.TYPE_5__* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %48 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %47, i32 0, i32 0
  %49 = call i32 @device_register(%struct.TYPE_5__* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %17
  br label %58

53:                                               ; preds = %17
  %54 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %55 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %56 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %55, i32 0, i32 0
  store %struct.ep_device* %54, %struct.ep_device** %56, align 8
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %52
  %59 = load %struct.ep_device*, %struct.ep_device** %8, align 8
  %60 = call i32 @kfree(%struct.ep_device* %59)
  br label %61

61:                                               ; preds = %58, %14
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %53
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.ep_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.ep_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
