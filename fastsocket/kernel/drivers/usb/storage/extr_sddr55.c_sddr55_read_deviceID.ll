; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr55.c_sddr55_read_deviceID.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr55.c_sddr55_read_deviceID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Result of send_control for device ID is %d\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8*, i8*)* @sddr55_read_deviceID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr55_read_deviceID(%struct.us_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.us_data*, %struct.us_data** %5, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.us_data*, %struct.us_data** %5, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @memset(i8* %17, i32 0, i32 8)
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 5
  store i8 -80, i8* %20, align 1
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 7
  store i8 -124, i8* %22, align 1
  %23 = load %struct.us_data*, %struct.us_data** %5, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @sddr55_bulk_transport(%struct.us_data* %23, i32 %24, i8* %25, i32 8)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %65

34:                                               ; preds = %3
  %35 = load %struct.us_data*, %struct.us_data** %5, align 8
  %36 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @sddr55_bulk_transport(%struct.us_data* %35, i32 %36, i8* %37, i32 4)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %65

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %6, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %7, align 8
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 255
  br i1 %57, label %58, label %63

58:                                               ; preds = %44
  %59 = load %struct.us_data*, %struct.us_data** %5, align 8
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @sddr55_bulk_transport(%struct.us_data* %59, i32 %60, i8* %61, i32 2)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %44
  %64 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %42, %32
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sddr55_bulk_transport(%struct.us_data*, i32, i8*, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
