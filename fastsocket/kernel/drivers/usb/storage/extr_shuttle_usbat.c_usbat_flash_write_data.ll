; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_write_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.usbat_info = type { i32 }
%struct.scatterlist = type { i32 }

@USBAT_ATA_FEATURES = common dso_local global i8 0, align 1
@USBAT_ATA_SECCNT = common dso_local global i8 0, align 1
@USBAT_ATA_SECNUM = common dso_local global i8 0, align 1
@USBAT_ATA_LBA_ME = common dso_local global i8 0, align 1
@USBAT_ATA_LBA_HI = common dso_local global i8 0, align 1
@USBAT_ATA_DEVICE = common dso_local global i8 0, align 1
@USBAT_ATA_STATUS = common dso_local global i8 0, align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@FROM_XFER_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.usbat_info*, i32, i32)* @usbat_flash_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_flash_write_data(%struct.us_data* %0, %struct.usbat_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca %struct.usbat_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [7 x i8], align 1
  %11 = alloca [7 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scatterlist*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store %struct.usbat_info* %1, %struct.usbat_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %10, i64 0, i64 0
  %21 = load i8, i8* @USBAT_ATA_FEATURES, align 1
  store i8 %21, i8* %20, align 1
  %22 = getelementptr inbounds i8, i8* %20, i64 1
  %23 = load i8, i8* @USBAT_ATA_SECCNT, align 1
  store i8 %23, i8* %22, align 1
  %24 = getelementptr inbounds i8, i8* %22, i64 1
  %25 = load i8, i8* @USBAT_ATA_SECNUM, align 1
  store i8 %25, i8* %24, align 1
  %26 = getelementptr inbounds i8, i8* %24, i64 1
  %27 = load i8, i8* @USBAT_ATA_LBA_ME, align 1
  store i8 %27, i8* %26, align 1
  %28 = getelementptr inbounds i8, i8* %26, i64 1
  %29 = load i8, i8* @USBAT_ATA_LBA_HI, align 1
  store i8 %29, i8* %28, align 1
  %30 = getelementptr inbounds i8, i8* %28, i64 1
  %31 = load i8, i8* @USBAT_ATA_DEVICE, align 1
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds i8, i8* %30, i64 1
  %33 = load i8, i8* @USBAT_ATA_STATUS, align 1
  store i8 %33, i8* %32, align 1
  store i32 0, i32* %18, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %19, align 8
  %34 = load %struct.us_data*, %struct.us_data** %6, align 8
  %35 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %36 = call i32 @usbat_flash_check_media(%struct.us_data* %34, %struct.usbat_info* %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %17, align 4
  store i32 %41, i32* %5, align 4
  br label %123

42:                                               ; preds = %4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 268435455
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %46, i32* %5, align 4
  br label %123

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %50 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i8* @min(i32 %53, i32 65536)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @GFP_NOIO, align 4
  %58 = call i8* @kmalloc(i32 %56, i32 %57)
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %62, i32* %5, align 4
  br label %123

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %112, %63
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i8* @min(i32 %65, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %71 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %69, %72
  %74 = and i32 %73, 255
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %13, align 1
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.us_data*, %struct.us_data** %6, align 8
  %79 = getelementptr inbounds %struct.us_data, %struct.us_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @FROM_XFER_BUF, align 4
  %82 = call i32 @usb_stor_access_xfer_buf(i8* %76, i32 %77, i32 %80, %struct.scatterlist** %19, i32* %18, i32 %81)
  %83 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %84 = load i8, i8* %13, align 1
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @usbat_pack_ata_sector_cmd(i8* %83, i8 zeroext %84, i32 %85, i32 48)
  %87 = load %struct.us_data*, %struct.us_data** %6, align 8
  %88 = getelementptr inbounds [7 x i8], [7 x i8]* %10, i64 0, i64 0
  %89 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %90 = call i32 @usbat_multiple_write(%struct.us_data* %87, i8* %88, i8* %89, i32 7)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %64
  br label %119

95:                                               ; preds = %64
  %96 = load %struct.us_data*, %struct.us_data** %6, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @usbat_write_blocks(%struct.us_data* %96, i8* %97, i32 %98, i32 0)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %119

104:                                              ; preds = %95
  %105 = load i8, i8* %13, align 1
  %106 = zext i8 %105 to i32
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %14, align 4
  %111 = sub i32 %110, %109
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %14, align 4
  %114 = icmp ugt i32 %113, 0
  br i1 %114, label %64, label %115

115:                                              ; preds = %112
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @kfree(i8* %116)
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %5, align 4
  br label %123

119:                                              ; preds = %103, %94
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @kfree(i8* %120)
  %122 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %119, %115, %61, %45, %40
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @usbat_flash_check_media(%struct.us_data*, %struct.usbat_info*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, i32, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @usbat_pack_ata_sector_cmd(i8*, i8 zeroext, i32, i32) #1

declare dso_local i32 @usbat_multiple_write(%struct.us_data*, i8*, i8*, i32) #1

declare dso_local i32 @usbat_write_blocks(%struct.us_data*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
