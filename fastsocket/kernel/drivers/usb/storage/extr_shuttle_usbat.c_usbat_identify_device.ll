; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_identify_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_identify_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.usbat_info = type { i32 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@USBAT_ATA = common dso_local global i32 0, align 4
@USBAT_ATA_CMD = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"usbat_identify_device: Detected HP8200 CDRW\0A\00", align 1
@USBAT_DEV_HP8200 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"usbat_identify_device: Detected Flash reader/writer\0A\00", align 1
@USBAT_DEV_FLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.usbat_info*)* @usbat_identify_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_identify_device(%struct.us_data* %0, %struct.usbat_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.usbat_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.usbat_info* %1, %struct.usbat_info** %5, align 8
  %8 = load %struct.us_data*, %struct.us_data** %4, align 8
  %9 = icmp ne %struct.us_data* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %12 = icmp ne %struct.usbat_info* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %14, i32* %3, align 4
  br label %63

15:                                               ; preds = %10
  %16 = load %struct.us_data*, %struct.us_data** %4, align 8
  %17 = call i32 @usbat_device_reset(%struct.us_data* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %15
  %24 = call i32 @msleep(i32 500)
  %25 = load %struct.us_data*, %struct.us_data** %4, align 8
  %26 = load i32, i32* @USBAT_ATA, align 4
  %27 = load i32, i32* @USBAT_ATA_CMD, align 4
  %28 = call i32 @usbat_write(%struct.us_data* %25, i32 %26, i32 %27, i32 161)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %23
  %35 = load %struct.us_data*, %struct.us_data** %4, align 8
  %36 = call i32 @usbat_get_status(%struct.us_data* %35, i8* %7)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %41, i32* %3, align 4
  br label %63

42:                                               ; preds = %34
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 161
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46, %42
  %52 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @USBAT_DEV_HP8200, align 4
  %54 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %55 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %61

56:                                               ; preds = %46
  %57 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @USBAT_DEV_FLASH, align 4
  %59 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %60 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %40, %32, %21, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @usbat_device_reset(%struct.us_data*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usbat_write(%struct.us_data*, i32, i32, i32) #1

declare dso_local i32 @usbat_get_status(%struct.us_data*, i8*) #1

declare dso_local i32 @US_DEBUGP(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
