; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_check_status2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_check_status2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32 }

@ALAUDA_BULK_CMD = common dso_local global i32 0, align 4
@ALAUDA_BULK_GET_STATUS2 = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"alauda_check_status2: %02X %02X %02X\0A\00", align 1
@ALAUDA_STATUS_ERROR = common dso_local global i8 0, align 1
@USB_STOR_XFER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @alauda_check_status2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_check_status2(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [9 x i8], align 1
  %6 = alloca [3 x i8], align 1
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %7 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %8 = load i32, i32* @ALAUDA_BULK_CMD, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %7, align 1
  %10 = getelementptr inbounds i8, i8* %7, i64 1
  %11 = load i32, i32* @ALAUDA_BULK_GET_STATUS2, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %10, align 1
  %13 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 3, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load %struct.us_data*, %struct.us_data** %3, align 8
  %21 = call i32 @MEDIA_PORT(%struct.us_data* %20)
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %19, align 1
  %23 = load %struct.us_data*, %struct.us_data** %3, align 8
  %24 = load %struct.us_data*, %struct.us_data** %3, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %28 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %23, i32 %26, i8* %27, i32 9, i32* null)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %65

34:                                               ; preds = %1
  %35 = load %struct.us_data*, %struct.us_data** %3, align 8
  %36 = load %struct.us_data*, %struct.us_data** %3, align 8
  %37 = getelementptr inbounds %struct.us_data, %struct.us_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %40 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %35, i32 %38, i8* %39, i32 3, i32* null)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %65

46:                                               ; preds = %34
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 zeroext %48, i8 zeroext %50, i8 zeroext %52)
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @ALAUDA_STATUS_ERROR, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* @USB_STOR_XFER_ERROR, align 4
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %46
  %64 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %61, %44, %32
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @MEDIA_PORT(%struct.us_data*) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

declare dso_local i32 @US_DEBUGP(i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
