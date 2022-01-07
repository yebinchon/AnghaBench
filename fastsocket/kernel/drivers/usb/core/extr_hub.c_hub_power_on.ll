; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_power_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HUB_CHAR_LPSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"enabling power on all ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"trying to enable port power on non-switchable hub\0A\00", align 1
@USB_PORT_FEAT_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32)* @hub_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_power_on(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %10 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %6, align 4
  %15 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %16 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @HUB_CHAR_LPSM, align 4
  %23 = and i32 %21, %22
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %27 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %32 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %25
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %39 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %37, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %46 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %50 = call i32 @set_port_feature(i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %36

54:                                               ; preds = %36
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @max(i32 %55, i32 100)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @msleep(i32 %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @set_port_feature(i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
