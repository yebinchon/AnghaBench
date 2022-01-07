; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_get_sector_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_get_sector_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.usbat_info = type { i32 }

@USBAT_ATA_SECCNT = common dso_local global i8 0, align 1
@USBAT_ATA_DEVICE = common dso_local global i8 0, align 1
@USBAT_ATA_CMD = common dso_local global i8 0, align 1
@__const.usbat_flash_get_sector_count.command = private unnamed_addr constant [3 x i8] c"\01\A0\EC", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"usbat_flash_get_sector_count: Gah! identify_device failed\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.usbat_info*)* @usbat_flash_get_sector_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_flash_get_sector_count(%struct.us_data* %0, %struct.usbat_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.usbat_info*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca [3 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.usbat_info* %1, %struct.usbat_info** %5, align 8
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %12 = load i8, i8* @USBAT_ATA_SECCNT, align 1
  store i8 %12, i8* %11, align 1
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  %14 = load i8, i8* @USBAT_ATA_DEVICE, align 1
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds i8, i8* %13, i64 1
  %16 = load i8, i8* @USBAT_ATA_CMD, align 1
  store i8 %16, i8* %15, align 1
  %17 = bitcast [3 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.usbat_flash_get_sector_count.command, i32 0, i32 0), i64 3, i1 false)
  %18 = load %struct.us_data*, %struct.us_data** %4, align 8
  %19 = icmp ne %struct.us_data* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %22 = icmp ne %struct.usbat_info* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %89

25:                                               ; preds = %20
  %26 = load i32, i32* @GFP_NOIO, align 4
  %27 = call i8* @kmalloc(i32 512, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %31, i32* %3, align 4
  br label %89

32:                                               ; preds = %25
  %33 = load %struct.us_data*, %struct.us_data** %4, align 8
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %36 = call i32 @usbat_multiple_write(%struct.us_data* %33, i8* %34, i8* %35, i32 3)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %42, i32* %10, align 4
  br label %85

43:                                               ; preds = %32
  %44 = load %struct.us_data*, %struct.us_data** %4, align 8
  %45 = call i32 @usbat_get_status(%struct.us_data* %44, i8* %9)
  %46 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %49, i32* %10, align 4
  br label %85

50:                                               ; preds = %43
  %51 = call i32 @msleep(i32 100)
  %52 = load %struct.us_data*, %struct.us_data** %4, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @usbat_read_block(%struct.us_data* %52, i8* %53, i32 512, i32 0)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %85

59:                                               ; preds = %50
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 117
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 24
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 116
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 16
  %70 = or i32 %64, %69
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 115
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 8
  %76 = or i32 %70, %75
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 114
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = or i32 %76, %80
  %82 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %83 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %59, %58, %48, %40
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @kfree(i8* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %30, %23
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i32 @usbat_multiple_write(%struct.us_data*, i8*, i8*, i32) #2

declare dso_local i32 @US_DEBUGP(i8*) #2

declare dso_local i32 @usbat_get_status(%struct.us_data*, i8*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @usbat_read_block(%struct.us_data*, i8*, i32, i32) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
