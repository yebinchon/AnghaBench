; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_init_usbat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_init_usbat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i64 }
%struct.usbat_info = type { i32 }

@USBAT_ATA_LBA_HI = common dso_local global i8 0, align 1
@USBAT_ATA_LBA_ME = common dso_local global i8 0, align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"init_usbat: Gah! Can't allocate storage for usbat info struct!\0A\00", align 1
@USBAT_UIO_OE1 = common dso_local global i32 0, align 4
@USBAT_UIO_OE0 = common dso_local global i32 0, align 4
@USBAT_UIO_EPAD = common dso_local global i32 0, align 4
@USBAT_UIO_1 = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"INIT 1\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"INIT 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"INIT 3\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"INIT 4\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"INIT 5\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"INIT 6\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"INIT 7\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"INIT 8\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"INIT 9\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"INIT 10\0A\00", align 1
@USBAT_DEV_FLASH = common dso_local global i64 0, align 8
@USBAT_FEAT_ETEN = common dso_local global i32 0, align 4
@USBAT_FEAT_ET2 = common dso_local global i32 0, align 4
@USBAT_FEAT_ET1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"INIT 11\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32)* @init_usbat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_usbat(%struct.us_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbat_info*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8, i8* @USBAT_ATA_LBA_HI, align 1
  store i8 %11, i8* %8, align 1
  %12 = load i8, i8* @USBAT_ATA_LBA_ME, align 1
  store i8 %12, i8* %9, align 1
  %13 = load %struct.us_data*, %struct.us_data** %4, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* @GFP_NOIO, align 4
  %17 = call i64 @kzalloc(i32 4, i32 %16)
  %18 = load %struct.us_data*, %struct.us_data** %4, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.us_data*, %struct.us_data** %4, align 8
  %21 = getelementptr inbounds %struct.us_data, %struct.us_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %166

26:                                               ; preds = %2
  %27 = load %struct.us_data*, %struct.us_data** %4, align 8
  %28 = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.usbat_info*
  store %struct.usbat_info* %30, %struct.usbat_info** %7, align 8
  %31 = load %struct.us_data*, %struct.us_data** %4, align 8
  %32 = load i32, i32* @USBAT_UIO_OE1, align 4
  %33 = load i32, i32* @USBAT_UIO_OE0, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @USBAT_UIO_EPAD, align 4
  %36 = load i32, i32* @USBAT_UIO_1, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @usbat_write_user_io(%struct.us_data* %31, i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %43, i32* %3, align 4
  br label %166

44:                                               ; preds = %26
  %45 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @msleep(i32 2000)
  %47 = load %struct.us_data*, %struct.us_data** %4, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @usbat_read_user_io(%struct.us_data* %47, i8* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %166

55:                                               ; preds = %44
  %56 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.us_data*, %struct.us_data** %4, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @usbat_read_user_io(%struct.us_data* %57, i8* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %64, i32* %3, align 4
  br label %166

65:                                               ; preds = %55
  %66 = load %struct.us_data*, %struct.us_data** %4, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @usbat_read_user_io(%struct.us_data* %66, i8* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %73, i32* %3, align 4
  br label %166

74:                                               ; preds = %65
  %75 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.us_data*, %struct.us_data** %4, align 8
  %77 = call i32 @usbat_select_and_test_registers(%struct.us_data* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %166

83:                                               ; preds = %74
  %84 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.us_data*, %struct.us_data** %4, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @usbat_read_user_io(%struct.us_data* %85, i8* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %92, i32* %3, align 4
  br label %166

93:                                               ; preds = %83
  %94 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %95 = load %struct.us_data*, %struct.us_data** %4, align 8
  %96 = call i32 @usbat_device_enable_cdt(%struct.us_data* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %166

102:                                              ; preds = %93
  %103 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %104 = load %struct.us_data*, %struct.us_data** %4, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @usbat_read_user_io(%struct.us_data* %104, i8* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %111, i32* %3, align 4
  br label %166

112:                                              ; preds = %102
  %113 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %114 = call i32 @msleep(i32 1400)
  %115 = load %struct.us_data*, %struct.us_data** %4, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @usbat_read_user_io(%struct.us_data* %115, i8* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %122, i32* %3, align 4
  br label %166

123:                                              ; preds = %112
  %124 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %125 = load %struct.us_data*, %struct.us_data** %4, align 8
  %126 = call i32 @usbat_select_and_test_registers(%struct.us_data* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %166

132:                                              ; preds = %123
  %133 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %134 = load %struct.us_data*, %struct.us_data** %4, align 8
  %135 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i64 @usbat_set_transport(%struct.us_data* %134, %struct.usbat_info* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %140, i32* %3, align 4
  br label %166

141:                                              ; preds = %132
  %142 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %143 = load %struct.us_data*, %struct.us_data** %4, align 8
  %144 = call i64 @usbat_get_device_type(%struct.us_data* %143)
  %145 = load i64, i64* @USBAT_DEV_FLASH, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i8 2, i8* %8, align 1
  store i8 0, i8* %9, align 1
  br label %148

148:                                              ; preds = %147, %141
  %149 = load %struct.us_data*, %struct.us_data** %4, align 8
  %150 = load i32, i32* @USBAT_FEAT_ETEN, align 4
  %151 = load i32, i32* @USBAT_FEAT_ET2, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @USBAT_FEAT_ET1, align 4
  %154 = or i32 %152, %153
  %155 = load i8, i8* %8, align 1
  %156 = load i8, i8* %9, align 1
  %157 = call i32 @usbat_set_shuttle_features(%struct.us_data* %149, i32 %154, i32 0, i32 136, i32 8, i8 zeroext %155, i8 zeroext %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %148
  %162 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %162, i32* %3, align 4
  br label %166

163:                                              ; preds = %148
  %164 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %165 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %163, %161, %139, %130, %121, %110, %100, %91, %81, %72, %63, %53, %42, %24
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @US_DEBUGP(i8*) #1

declare dso_local i32 @usbat_write_user_io(%struct.us_data*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usbat_read_user_io(%struct.us_data*, i8*) #1

declare dso_local i32 @usbat_select_and_test_registers(%struct.us_data*) #1

declare dso_local i32 @usbat_device_enable_cdt(%struct.us_data*) #1

declare dso_local i64 @usbat_set_transport(%struct.us_data*, %struct.usbat_info*, i32) #1

declare dso_local i64 @usbat_get_device_type(%struct.us_data*) #1

declare dso_local i32 @usbat_set_shuttle_features(%struct.us_data*, i32, i32, i32, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
