; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusb_set_dev_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusb_set_dev_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 (%struct.wusbhc*, %struct.wusb_dev*)*, i32 }
%struct.wusb_dev = type opaque
%struct.wusb_dev.0 = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"device %d: failed to set device address\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"device %d: %s addr %u\0A\00", align 1
@WUSB_DEV_ADDR_UNAUTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"unauth\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"auth\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusb_set_dev_addr(%struct.wusbhc* %0, %struct.wusb_dev.0* %1, i32 %2) #0 {
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.wusb_dev.0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store %struct.wusb_dev.0* %1, %struct.wusb_dev.0** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.wusb_dev.0*, %struct.wusb_dev.0** %5, align 8
  %10 = getelementptr inbounds %struct.wusb_dev.0, %struct.wusb_dev.0* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %12 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %11, i32 0, i32 0
  %13 = load i32 (%struct.wusbhc*, %struct.wusb_dev*)*, i32 (%struct.wusbhc*, %struct.wusb_dev*)** %12, align 8
  %14 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %15 = load %struct.wusb_dev.0*, %struct.wusb_dev.0** %5, align 8
  %16 = bitcast %struct.wusb_dev.0* %15 to %struct.wusb_dev*
  %17 = call i32 %13(%struct.wusbhc* %14, %struct.wusb_dev* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %22 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.wusb_dev.0*, %struct.wusb_dev.0** %5, align 8
  %25 = getelementptr inbounds %struct.wusb_dev.0, %struct.wusb_dev.0* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %45

28:                                               ; preds = %3
  %29 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %30 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.wusb_dev.0*, %struct.wusb_dev.0** %5, align 8
  %33 = getelementptr inbounds %struct.wusb_dev.0, %struct.wusb_dev.0* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @WUSB_DEV_ADDR_UNAUTH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %41 = load %struct.wusb_dev.0*, %struct.wusb_dev.0** %5, align 8
  %42 = getelementptr inbounds %struct.wusb_dev.0, %struct.wusb_dev.0* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_info(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %40, i32 %43)
  br label %45

45:                                               ; preds = %28, %20
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
