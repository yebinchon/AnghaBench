; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_handle_remote_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_handle_remote_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.usb_device* }
%struct.usb_device = type { i64, %struct.usb_device** }

@USB_PORT_STAT_C_SUSPEND = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_SUSPEND = common dso_local global i32 0, align 4
@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@USB_PORT_STAT_LINK_STATE = common dso_local global i32 0, align 4
@USB_SS_PORT_LS_U0 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"resume on port %d, status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32, i32, i32)* @hub_handle_remote_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_handle_remote_wakeup(%struct.usb_hub* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_hub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.usb_hub*, %struct.usb_hub** %6, align 8
  %15 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %14, i32 0, i32 1
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %10, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 1
  %19 = load %struct.usb_device**, %struct.usb_device*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sub i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %19, i64 %22
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  store %struct.usb_device* %24, %struct.usb_device** %11, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %26 = call i32 @hub_is_superspeed(%struct.usb_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @USB_PORT_STAT_C_SUSPEND, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %85

34:                                               ; preds = %28
  %35 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @USB_PORT_FEAT_C_SUSPEND, align 4
  %38 = call i32 @clear_port_feature(%struct.usb_device* %35, i32 %36, i32 %37)
  br label %56

39:                                               ; preds = %4
  %40 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %41 = icmp ne %struct.usb_device* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @USB_PORT_STAT_LINK_STATE, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @USB_SS_PORT_LS_U0, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %42, %39
  store i32 0, i32* %5, align 4
  br label %85

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %58 = icmp ne %struct.usb_device* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = call i32 @msleep(i32 10)
  %61 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %62 = call i32 @usb_lock_device(%struct.usb_device* %61)
  %63 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %64 = call i32 @remote_wakeup(%struct.usb_device* %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %66 = call i32 @usb_unlock_device(%struct.usb_device* %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 1, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %59
  br label %77

71:                                               ; preds = %56
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  %74 = load %struct.usb_hub*, %struct.usb_hub** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @hub_port_disable(%struct.usb_hub* %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %71, %70
  %78 = load %struct.usb_hub*, %struct.usb_hub** %6, align 8
  %79 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %77, %54, %33
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @hub_is_superspeed(%struct.usb_device*) #1

declare dso_local i32 @clear_port_feature(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local i32 @remote_wakeup(%struct.usb_device*) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

declare dso_local i32 @hub_port_disable(%struct.usb_hub*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
