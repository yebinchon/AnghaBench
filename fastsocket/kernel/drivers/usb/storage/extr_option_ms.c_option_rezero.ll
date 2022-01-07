; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_option_ms.c_option_rezero.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_option_ms.c_option_rezero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32 }

@__const.option_rezero.rezero_msg = private unnamed_addr constant <{ [16 x i8], [15 x i8] }> <{ [16 x i8] c"USBCxV4\12\01\00\00\00\80\00\06\01", [15 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [14 x i8] c"Option MS: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"DEVICE MODE SWITCH\0A\00", align 1
@RESPONSE_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_XFER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @option_rezero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_rezero(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca [31 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %7 = bitcast [31 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds (<{ [16 x i8], [15 x i8] }>, <{ [16 x i8], [15 x i8] }>* @__const.option_rezero.rezero_msg, i32 0, i32 0, i32 0), i64 31, i1 false)
  %8 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @RESPONSE_LEN, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 %9, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0
  %19 = call i32 @memcpy(i8* %17, i8* %18, i32 31)
  %20 = load %struct.us_data*, %struct.us_data** %3, align 8
  %21 = load %struct.us_data*, %struct.us_data** %3, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %20, i32 %23, i8* %24, i32 31, i32* null)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* @USB_STOR_XFER_ERROR, align 4
  store i32 %30, i32* %6, align 4
  br label %46

31:                                               ; preds = %16
  %32 = load %struct.us_data*, %struct.us_data** %3, align 8
  %33 = load %struct.us_data*, %struct.us_data** %3, align 8
  %34 = getelementptr inbounds %struct.us_data, %struct.us_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @RESPONSE_LEN, align 4
  %38 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %32, i32 %35, i8* %36, i32 %37, i32* null)
  %39 = load %struct.us_data*, %struct.us_data** %3, align 8
  %40 = load %struct.us_data*, %struct.us_data** %3, align 8
  %41 = getelementptr inbounds %struct.us_data, %struct.us_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %39, i32 %42, i8* %43, i32 13, i32* null)
  %45 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %31, %29
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @kfree(i8* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @US_DEBUGP(i8*, i8*) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
