; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"udev %d, busnum %d, minor = %d\0A\00", align 1
@USB_DEVICE_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"can't device_add, error %d\0A\00", align 1
@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_new_device(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @usb_autoresume_device(i64 %12)
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 2
  %16 = call i32 @device_init_wakeup(%struct.TYPE_9__* %15, i32 0)
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 2
  %19 = call i32 @device_set_wakeup_enable(%struct.TYPE_9__* %18, i32 1)
  br label %20

20:                                               ; preds = %9, %1
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = call i32 @usb_detect_quirks(%struct.usb_device* %21)
  %23 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %24 = call i32 @usb_enumerate_device(%struct.usb_device* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %89

28:                                               ; preds = %20
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 2
  %31 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = mul nsw i32 %44, 128
  %46 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = add nsw i32 %45, %49
  %51 = call i32 @dev_dbg(%struct.TYPE_9__* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38, i32 %50)
  %52 = load i32, i32* @USB_DEVICE_MAJOR, align 4
  %53 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 3
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = mul nsw i32 %58, 128
  %60 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = add nsw i32 %59, %63
  %65 = call i32 @MKDEV(i32 %52, i32 %64)
  %66 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %67 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %70 = call i32 @announce_device(%struct.usb_device* %69)
  %71 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %72 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %71, i32 0, i32 2
  %73 = call i32 @device_add(%struct.TYPE_9__* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %28
  %77 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %78 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %77, i32 0, i32 2
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @dev_err(%struct.TYPE_9__* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %89

81:                                               ; preds = %28
  %82 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %83 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %82, i32 0, i32 2
  %84 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %85 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %84, i32 0, i32 1
  %86 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %87 = call i32 @usb_create_ep_devs(%struct.TYPE_9__* %83, i32* %85, %struct.usb_device* %86)
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %96

89:                                               ; preds = %76, %27
  %90 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %91 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %92 = call i32 @usb_set_device_state(%struct.usb_device* %90, i32 %91)
  %93 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %94 = call i32 @usb_stop_pm(%struct.usb_device* %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %89, %81
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @usb_autoresume_device(i64) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @device_set_wakeup_enable(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_detect_quirks(%struct.usb_device*) #1

declare dso_local i32 @usb_enumerate_device(%struct.usb_device*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*, i32, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @announce_device(%struct.usb_device*) #1

declare dso_local i32 @device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @usb_create_ep_devs(%struct.TYPE_9__*, i32*, %struct.usb_device*) #1

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_stop_pm(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
