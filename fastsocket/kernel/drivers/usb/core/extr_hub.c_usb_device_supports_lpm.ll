; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_device_supports_lpm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_device_supports_lpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_LPM_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"No LPM exit latency info found.  Power management will be impacted.\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Parent hub missing LPM exit latency info.  Power management will be impacted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @usb_device_supports_lpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_device_supports_lpm(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %4 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USB_SPEED_HIGH, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  %17 = load i32, i32* @USB_LPM_SUPPORT, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = and i32 %17, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %53

29:                                               ; preds = %16, %9
  store i32 0, i32* %2, align 4
  br label %53

30:                                               ; preds = %1
  %31 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 1
  %40 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

41:                                               ; preds = %30
  %42 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 1
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %48, %37, %29, %28
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
