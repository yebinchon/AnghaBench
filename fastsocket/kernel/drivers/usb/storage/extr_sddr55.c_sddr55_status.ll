; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr55.c_sddr55_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr55.c_sddr55_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i64 }
%struct.sddr55_card_info = type { i8, i64, i64, i32*, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Result for send_command in status %d\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@USB_STOR_XFER_SHORT = common dso_local global i32 0, align 4
@USB_STOR_XFER_STALLED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @sddr55_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr55_status(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sddr55_card_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %8 = load %struct.us_data*, %struct.us_data** %3, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.us_data*, %struct.us_data** %3, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.us_data*, %struct.us_data** %3, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.sddr55_card_info*
  store %struct.sddr55_card_info* %17, %struct.sddr55_card_info** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @memset(i8* %18, i32 0, i32 8)
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 5
  store i8 -80, i8* %21, align 1
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 7
  store i8 -128, i8* %23, align 1
  %24 = load %struct.us_data*, %struct.us_data** %3, align 8
  %25 = load i32, i32* @DMA_TO_DEVICE, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @sddr55_bulk_transport(%struct.us_data* %24, i32 %25, i8* %26, i32 8)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = call i32 @set_sense_info(i32 4, i32 0, i32 0)
  %35 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %35, i32* %2, align 4
  br label %102

36:                                               ; preds = %1
  %37 = load %struct.us_data*, %struct.us_data** %3, align 8
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @sddr55_bulk_transport(%struct.us_data* %37, i32 %38, i8* %39, i32 4)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @USB_STOR_XFER_SHORT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @USB_STOR_XFER_STALLED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44, %36
  %49 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %50 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %54 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @kfree(i32* %55)
  %57 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %58 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %57, i32 0, i32 4
  store i32* null, i32** %58, align 8
  %59 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %60 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %62 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %64 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = call i32 @set_sense_info(i32 2, i32 58, i32 0)
  %66 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %66, i32* %2, align 4
  br label %102

67:                                               ; preds = %44
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = call i32 @set_sense_info(i32 4, i32 0, i32 0)
  %73 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %73, i32* %2, align 4
  br label %102

74:                                               ; preds = %67
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 32
  %80 = trunc i32 %79 to i8
  %81 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %82 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %81, i32 0, i32 0
  store i8 %80, i8* %82, align 8
  %83 = load %struct.us_data*, %struct.us_data** %3, align 8
  %84 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @sddr55_bulk_transport(%struct.us_data* %83, i32 %84, i8* %85, i32 2)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %74
  %91 = call i32 @set_sense_info(i32 4, i32 0, i32 0)
  br label %92

92:                                               ; preds = %90, %74
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  br label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %71, %48, %33
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sddr55_bulk_transport(%struct.us_data*, i32, i8*, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, i32) #1

declare dso_local i32 @set_sense_info(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
