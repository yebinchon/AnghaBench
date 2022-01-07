; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_check_media.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_check_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }
%struct.usbat_info = type { i32, i32, i32 }

@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USBAT_FLASH_MEDIA_NONE = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@USBAT_FLASH_MEDIA_CHANGED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.usbat_info*)* @usbat_flash_check_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_flash_check_media(%struct.us_data* %0, %struct.usbat_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.usbat_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.usbat_info* %1, %struct.usbat_info** %5, align 8
  %8 = load %struct.us_data*, %struct.us_data** %4, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.us_data*, %struct.us_data** %4, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @usbat_read_user_io(%struct.us_data* %11, i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @usbat_flash_check_media_present(i8* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @USBAT_FLASH_MEDIA_NONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %27 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %26, i32 0, i32 0
  store i32 2, i32* %27, align 4
  %28 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %29 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %28, i32 0, i32 1
  store i32 58, i32* %29, align 4
  %30 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %31 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %32, i32* %3, align 4
  br label %76

33:                                               ; preds = %19
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @usbat_flash_check_media_changed(i8* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @USBAT_FLASH_MEDIA_CHANGED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %33
  %40 = load %struct.us_data*, %struct.us_data** %4, align 8
  %41 = call i32 @usbat_device_reset(%struct.us_data* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %76

47:                                               ; preds = %39
  %48 = load %struct.us_data*, %struct.us_data** %4, align 8
  %49 = call i32 @usbat_device_enable_cdt(%struct.us_data* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %76

55:                                               ; preds = %47
  %56 = call i32 @msleep(i32 50)
  %57 = load %struct.us_data*, %struct.us_data** %4, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @usbat_read_user_io(%struct.us_data* %57, i8* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %64, i32* %3, align 4
  br label %76

65:                                               ; preds = %55
  %66 = load i32, i32* @UNIT_ATTENTION, align 4
  %67 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %68 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %70 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %69, i32 0, i32 1
  store i32 40, i32* %70, align 4
  %71 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %72 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %71, i32 0, i32 2
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %33
  %75 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %65, %63, %53, %45, %25, %17
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @usbat_read_user_io(%struct.us_data*, i8*) #1

declare dso_local i32 @usbat_flash_check_media_present(i8*) #1

declare dso_local i32 @usbat_flash_check_media_changed(i8*) #1

declare dso_local i32 @usbat_device_reset(%struct.us_data*) #1

declare dso_local i32 @usbat_device_enable_cdt(%struct.us_data*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
