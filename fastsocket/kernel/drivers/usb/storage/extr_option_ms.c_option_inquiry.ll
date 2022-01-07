; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_option_ms.c_option_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_option_ms.c_option_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32 }

@__const.option_inquiry.inquiry_msg = private unnamed_addr constant <{ [20 x i8], [11 x i8] }> <{ [20 x i8] c"USBC\124Vx$\00\00\00\80\00\06\12\00\00\00$", [11 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [14 x i8] c"Option MS: %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"device inquiry for vendor name\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_XFER_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ZCOPTION\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @option_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_inquiry(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca [31 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %7 = bitcast [31 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds (<{ [20 x i8], [11 x i8] }>, <{ [20 x i8], [11 x i8] }>* @__const.option_inquiry.inquiry_msg, i32 0, i32 0, i32 0), i64 31, i1 false)
  %8 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 36, i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0
  %18 = call i32 @memcpy(i8* %16, i8* %17, i32 31)
  %19 = load %struct.us_data*, %struct.us_data** %3, align 8
  %20 = load %struct.us_data*, %struct.us_data** %3, align 8
  %21 = getelementptr inbounds %struct.us_data, %struct.us_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %19, i32 %22, i8* %23, i32 31, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @USB_STOR_XFER_ERROR, align 4
  store i32 %29, i32* %6, align 4
  br label %59

30:                                               ; preds = %15
  %31 = load %struct.us_data*, %struct.us_data** %3, align 8
  %32 = load %struct.us_data*, %struct.us_data** %3, align 8
  %33 = getelementptr inbounds %struct.us_data, %struct.us_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %31, i32 %34, i8* %35, i32 36, i32* null)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @USB_STOR_XFER_ERROR, align 4
  store i32 %41, i32* %6, align 4
  br label %59

42:                                               ; preds = %30
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 8
  %45 = call i32 @memcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  %51 = call i32 @memcmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.us_data*, %struct.us_data** %3, align 8
  %54 = load %struct.us_data*, %struct.us_data** %3, align 8
  %55 = getelementptr inbounds %struct.us_data, %struct.us_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %53, i32 %56, i8* %57, i32 13, i32* null)
  br label %59

59:                                               ; preds = %52, %40, %28
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @kfree(i8* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @US_DEBUGP(i8*, i8*) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
