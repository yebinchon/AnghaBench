; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.usb_device*, i32 }
%struct.usb_device = type { i64* }

@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4
@USB_PORT_FEAT_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot disable port %d (err = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32, i32)* @hub_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_port_disable(%struct.usb_hub* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %10 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %9, i32 0, i32 1
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %34 = call i32 @usb_set_device_state(i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %24, %21, %3
  %36 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %37 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %35
  %41 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %42 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %41, i32 0, i32 1
  %43 = load %struct.usb_device*, %struct.usb_device** %42, align 8
  %44 = call i64 @hub_is_superspeed(%struct.usb_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @hub_usb3_port_disable(%struct.usb_hub* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %55

50:                                               ; preds = %40
  %51 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @USB_PORT_FEAT_ENABLE, align 4
  %54 = call i32 @clear_port_feature(%struct.usb_device* %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %46
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %61 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @usb_set_device_state(i64, i32) #1

declare dso_local i64 @hub_is_superspeed(%struct.usb_device*) #1

declare dso_local i32 @hub_usb3_port_disable(%struct.usb_hub*, i32) #1

declare dso_local i32 @clear_port_feature(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
