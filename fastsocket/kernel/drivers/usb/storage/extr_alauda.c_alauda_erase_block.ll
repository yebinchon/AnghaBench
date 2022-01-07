; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_erase_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32 }

@ALAUDA_BULK_CMD = common dso_local global i32 0, align 4
@ALAUDA_BULK_ERASE_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"alauda_erase_block: Erasing PBA %d\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"alauda_erase_block: Erase result: %02X %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32)* @alauda_erase_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_erase_block(%struct.us_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [9 x i8], align 1
  %8 = alloca [2 x i8], align 1
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %10 = load i32, i32* @ALAUDA_BULK_CMD, align 4
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %9, align 1
  %12 = getelementptr inbounds i8, i8* %9, i64 1
  %13 = load i32, i32* @ALAUDA_BULK_ERASE_BLOCK, align 4
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %12, align 1
  %15 = getelementptr inbounds i8, i8* %12, i64 1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PBA_HI(i32 %16)
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %15, align 1
  %19 = getelementptr inbounds i8, i8* %15, i64 1
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @PBA_ZONE(i32 %20)
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %19, align 1
  %23 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @PBA_LO(i32 %25)
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 2, i8* %28, align 1
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load %struct.us_data*, %struct.us_data** %4, align 8
  %32 = call i32 @MEDIA_PORT(%struct.us_data* %31)
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %30, align 1
  %34 = load i32, i32* %5, align 4
  %35 = trunc i32 %34 to i8
  %36 = call i32 (i8*, i8, ...) @US_DEBUGP(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 zeroext %35)
  %37 = load %struct.us_data*, %struct.us_data** %4, align 8
  %38 = load %struct.us_data*, %struct.us_data** %4, align 8
  %39 = getelementptr inbounds %struct.us_data, %struct.us_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %42 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %37, i32 %40, i8* %41, i32 9, i32* null)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %68

48:                                               ; preds = %2
  %49 = load %struct.us_data*, %struct.us_data** %4, align 8
  %50 = load %struct.us_data*, %struct.us_data** %4, align 8
  %51 = getelementptr inbounds %struct.us_data, %struct.us_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %54 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %49, i32 %52, i8* %53, i32 2, i32* null)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %68

60:                                               ; preds = %48
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = call i32 (i8*, i8, ...) @US_DEBUGP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %62, i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %58, %46
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @PBA_HI(i32) #1

declare dso_local i32 @PBA_ZONE(i32) #1

declare dso_local i32 @PBA_LO(i32) #1

declare dso_local i32 @MEDIA_PORT(%struct.us_data*) #1

declare dso_local i32 @US_DEBUGP(i8*, i8 zeroext, ...) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
