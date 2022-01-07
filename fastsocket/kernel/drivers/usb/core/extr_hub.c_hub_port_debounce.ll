; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_debounce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32 }

@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@HUB_DEBOUNCE_STEP = common dso_local global i64 0, align 8
@HUB_DEBOUNCE_STABLE = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_CONNECTION = common dso_local global i32 0, align 4
@HUB_DEBOUNCE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"debounce: port %d: total %dms stable %dms status 0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32)* @hub_port_debounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_port_debounce(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 65535, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %66, %2
  %13 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @hub_port_status(%struct.usb_hub* %13, i32 %14, i32* %10, i32* %9)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %89

20:                                               ; preds = %12
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load i64, i64* @HUB_DEBOUNCE_STEP, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @HUB_DEBOUNCE_STABLE, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %72

41:                                               ; preds = %31
  br label %46

42:                                               ; preds = %25, %20
  store i32 0, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %53 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @USB_PORT_FEAT_C_CONNECTION, align 4
  %57 = call i32 @clear_port_feature(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @HUB_DEBOUNCE_TIMEOUT, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %72

63:                                               ; preds = %58
  %64 = load i64, i64* @HUB_DEBOUNCE_STEP, align 8
  %65 = call i32 @msleep(i64 %64)
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @HUB_DEBOUNCE_STEP, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  br label %12

72:                                               ; preds = %62, %40
  %73 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %74 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @HUB_DEBOUNCE_STABLE, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %84, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @hub_port_status(%struct.usb_hub*, i32, i32*, i32*) #1

declare dso_local i32 @clear_port_feature(i32, i32, i32) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
