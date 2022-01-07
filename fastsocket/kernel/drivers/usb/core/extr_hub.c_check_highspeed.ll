; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_check_highspeed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_check_highspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32*, i64 }
%struct.usb_device = type { i32 }
%struct.usb_qualifier_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_DT_DEVICE_QUALIFIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"not running at top speed; connect to a high speed hub\0A\00", align 1
@INDICATOR_GREEN_BLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, %struct.usb_device*, i32)* @check_highspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_highspeed(%struct.usb_hub* %0, %struct.usb_device* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_qualifier_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.usb_qualifier_descriptor* @kmalloc(i32 4, i32 %9)
  store %struct.usb_qualifier_descriptor* %10, %struct.usb_qualifier_descriptor** %7, align 8
  %11 = load %struct.usb_qualifier_descriptor*, %struct.usb_qualifier_descriptor** %7, align 8
  %12 = icmp eq %struct.usb_qualifier_descriptor* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %46

14:                                               ; preds = %3
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = load i32, i32* @USB_DT_DEVICE_QUALIFIER, align 4
  %17 = load %struct.usb_qualifier_descriptor*, %struct.usb_qualifier_descriptor** %7, align 8
  %18 = call i32 @usb_get_descriptor(%struct.usb_device* %15, i32 %16, i32 0, %struct.usb_qualifier_descriptor* %17, i32 4)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %43

22:                                               ; preds = %14
  %23 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 0
  %25 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %27 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load i32, i32* @INDICATOR_GREEN_BLINK, align 4
  %32 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %33 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %31, i32* %38, align 4
  %39 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %40 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %39, i32 0, i32 0
  %41 = call i32 @schedule_delayed_work(i32* %40, i32 0)
  br label %42

42:                                               ; preds = %30, %22
  br label %43

43:                                               ; preds = %42, %14
  %44 = load %struct.usb_qualifier_descriptor*, %struct.usb_qualifier_descriptor** %7, align 8
  %45 = call i32 @kfree(%struct.usb_qualifier_descriptor* %44)
  br label %46

46:                                               ; preds = %43, %13
  ret void
}

declare dso_local %struct.usb_qualifier_descriptor* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, %struct.usb_qualifier_descriptor*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @kfree(%struct.usb_qualifier_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
