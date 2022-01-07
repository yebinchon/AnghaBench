; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i64 }
%struct.alauda_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ALAUDA_BULK_CMD = common dso_local global i32 0, align 4
@ALAUDA_BULK_WRITE_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"alauda_write_block: pba %d\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i8*)* @alauda_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_write_block(%struct.us_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.alauda_info*, align 8
  %10 = alloca [9 x i8], align 1
  %11 = alloca %struct.TYPE_2__, align 4
  %12 = alloca %struct.TYPE_2__, align 4
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.us_data*, %struct.us_data** %5, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.alauda_info*
  store %struct.alauda_info* %16, %struct.alauda_info** %9, align 8
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %18 = load i32, i32* @ALAUDA_BULK_CMD, align 4
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %17, align 1
  %20 = getelementptr inbounds i8, i8* %17, i64 1
  %21 = load i32, i32* @ALAUDA_BULK_WRITE_BLOCK, align 4
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds i8, i8* %20, i64 1
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @PBA_HI(i32 %24)
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds i8, i8* %23, i64 1
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @PBA_ZONE(i32 %28)
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %27, align 1
  %31 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @PBA_LO(i32 %33)
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %32, align 1
  %36 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 32, i8* %36, align 1
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load %struct.us_data*, %struct.us_data** %5, align 8
  %40 = call i32 @MEDIA_PORT(%struct.us_data* %39)
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %38, align 1
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.us_data*, %struct.us_data** %5, align 8
  %45 = load %struct.us_data*, %struct.us_data** %5, align 8
  %46 = getelementptr inbounds %struct.us_data, %struct.us_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %49 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %44, i32 %47, i8* %48, i32 9, i32* null)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %3
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %82

55:                                               ; preds = %3
  %56 = load %struct.us_data*, %struct.us_data** %5, align 8
  %57 = load %struct.alauda_info*, %struct.alauda_info** %9, align 8
  %58 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.us_data*, %struct.us_data** %5, align 8
  %62 = call i64 @MEDIA_INFO(%struct.us_data* %61)
  %63 = bitcast %struct.TYPE_2__* %11 to i64*
  store i64 %62, i64* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 64
  %67 = load %struct.us_data*, %struct.us_data** %5, align 8
  %68 = call i64 @MEDIA_INFO(%struct.us_data* %67)
  %69 = bitcast %struct.TYPE_2__* %12 to i64*
  store i64 %68, i64* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %66, %71
  %73 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %56, i32 %59, i8* %60, i32 %72, i32* null)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %55
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %82

79:                                               ; preds = %55
  %80 = load %struct.us_data*, %struct.us_data** %5, align 8
  %81 = call i32 @alauda_check_status2(%struct.us_data* %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %77, %53
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @PBA_HI(i32) #1

declare dso_local i32 @PBA_ZONE(i32) #1

declare dso_local i32 @PBA_LO(i32) #1

declare dso_local i32 @MEDIA_PORT(%struct.us_data*) #1

declare dso_local i32 @US_DEBUGP(i8*, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

declare dso_local i64 @MEDIA_INFO(%struct.us_data*) #1

declare dso_local i32 @alauda_check_status2(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
