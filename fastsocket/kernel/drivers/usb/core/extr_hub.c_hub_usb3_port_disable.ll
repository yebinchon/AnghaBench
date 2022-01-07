; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_usb3_port_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_usb3_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_SS_PORT_LS_SS_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot disable port %d (err = %d)\0A\00", align 1
@USB_PORT_STAT_LINK_STATE = common dso_local global i32 0, align 4
@HUB_DEBOUNCE_TIMEOUT = common dso_local global i32 0, align 4
@HUB_DEBOUNCE_STEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not disable port %d after %d ms\0A\00", align 1
@USB_SS_PORT_LS_RX_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32)* @hub_usb3_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_usb3_port_disable(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %11 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hub_is_superspeed(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @USB_SS_PORT_LS_SS_DISABLED, align 4
  %22 = call i32 @hub_set_port_link_state(%struct.usb_hub* %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %27 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %79

33:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @hub_port_status(%struct.usb_hub* %35, i32 %36, i32* %9, i32* %8)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %79

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @USB_PORT_STAT_LINK_STATE, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @USB_SS_PORT_LS_SS_DISABLED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %63

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @HUB_DEBOUNCE_TIMEOUT, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %63

54:                                               ; preds = %49
  %55 = load i64, i64* @HUB_DEBOUNCE_STEP, align 8
  %56 = call i32 @msleep(i64 %55)
  br label %57

57:                                               ; preds = %54
  %58 = load i64, i64* @HUB_DEBOUNCE_STEP, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %7, align 4
  br label %34

63:                                               ; preds = %53, %48
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @HUB_DEBOUNCE_TIMEOUT, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %69 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_warn(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %63
  %75 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @USB_SS_PORT_LS_RX_DETECT, align 4
  %78 = call i32 @hub_set_port_link_state(%struct.usb_hub* %75, i32 %76, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %40, %25, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @hub_is_superspeed(i32) #1

declare dso_local i32 @hub_set_port_link_state(%struct.usb_hub*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @hub_port_status(%struct.usb_hub*, i32, i32*, i32*) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
