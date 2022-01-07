; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_multiple_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_multiple_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@US_IOBUF_SIZE = common dso_local global i32 0, align 4
@USBAT_ATA = common dso_local global i8 0, align 1
@USBAT_CMD_WRITE_REGS = common dso_local global i8 0, align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USBAT_DEV_HP8200 = common dso_local global i64 0, align 8
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8*, i8*, i16)* @usbat_multiple_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_multiple_write(%struct.us_data* %0, i8* %1, i8* %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  %14 = load %struct.us_data*, %struct.us_data** %6, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %12, align 8
  %17 = load %struct.us_data*, %struct.us_data** %6, align 8
  %18 = getelementptr inbounds %struct.us_data, %struct.us_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %13, align 8
  %20 = load i16, i16* %9, align 2
  %21 = zext i16 %20 to i32
  %22 = load i32, i32* @US_IOBUF_SIZE, align 4
  %23 = sdiv i32 %22, 2
  %24 = icmp sgt i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i8*, i8** %13, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 64, i8* %28, align 1
  %29 = load i8, i8* @USBAT_ATA, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @USBAT_CMD_WRITE_REGS, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %30, %32
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %13, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %34, i8* %36, align 1
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  store i8 0, i8* %44, align 1
  %45 = load i16, i16* %9, align 2
  %46 = zext i16 %45 to i32
  %47 = mul nsw i32 %46, 2
  %48 = trunc i32 %47 to i16
  %49 = call zeroext i8 @LSB_of(i16 zeroext %48)
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 6
  store i8 %49, i8* %51, align 1
  %52 = load i16, i16* %9, align 2
  %53 = zext i16 %52 to i32
  %54 = mul nsw i32 %53, 2
  %55 = trunc i32 %54 to i16
  %56 = call zeroext i8 @MSB_of(i16 zeroext %55)
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 7
  store i8 %56, i8* %58, align 1
  %59 = load %struct.us_data*, %struct.us_data** %6, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @usbat_execute_command(%struct.us_data* %59, i8* %60, i32 8)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %4
  %66 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %66, i32* %5, align 4
  br label %121

67:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %95, %67
  %69 = load i32, i32* %10, align 4
  %70 = load i16, i16* %9, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 %78, i8* %83, align 1
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 %90, 1
  %92 = add nsw i32 1, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  store i8 %88, i8* %94, align 1
  br label %95

95:                                               ; preds = %73
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %68

98:                                               ; preds = %68
  %99 = load %struct.us_data*, %struct.us_data** %6, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i16, i16* %9, align 2
  %102 = zext i16 %101 to i32
  %103 = mul nsw i32 %102, 2
  %104 = trunc i32 %103 to i16
  %105 = call i32 @usbat_bulk_write(%struct.us_data* %99, i8* %100, i16 zeroext %104, i32 0)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %110, i32* %5, align 4
  br label %121

111:                                              ; preds = %98
  %112 = load %struct.us_data*, %struct.us_data** %6, align 8
  %113 = call i64 @usbat_get_device_type(%struct.us_data* %112)
  %114 = load i64, i64* @USBAT_DEV_HP8200, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.us_data*, %struct.us_data** %6, align 8
  %118 = call i32 @usbat_wait_not_busy(%struct.us_data* %117, i32 0)
  store i32 %118, i32* %5, align 4
  br label %121

119:                                              ; preds = %111
  %120 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %116, %109, %65
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local zeroext i8 @LSB_of(i16 zeroext) #1

declare dso_local zeroext i8 @MSB_of(i16 zeroext) #1

declare dso_local i32 @usbat_execute_command(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usbat_bulk_write(%struct.us_data*, i8*, i16 zeroext, i32) #1

declare dso_local i64 @usbat_get_device_type(%struct.us_data*) #1

declare dso_local i32 @usbat_wait_not_busy(%struct.us_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
