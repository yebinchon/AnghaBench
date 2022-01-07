; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_initializers.c_usb_stor_ucr61s2b_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_initializers.c_usb_stor_ucr61s2b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i64 }
%struct.bulk_cb_wrap = type { i32, i32, i64, i64, i8*, i64, i8* }
%struct.bulk_cs_wrap = type { i32, i32, i64, i64, i8*, i64, i8* }

@usb_stor_ucr61s2b_init.init_string = internal global [13 x i8] c"\EC\0A\06\00$PCCHIPS\00", align 1
@.str = private unnamed_addr constant [44 x i8] c"Sending UCR-61S2B initialization packet...\0A\00", align 1
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@US_BULK_CB_WRAP_LEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Getting status packet...\0A\00", align 1
@US_BULK_CS_WRAP_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_ucr61s2b_init(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.bulk_cb_wrap*, align 8
  %5 = alloca %struct.bulk_cs_wrap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %8 = load %struct.us_data*, %struct.us_data** %3, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %11, %struct.bulk_cb_wrap** %4, align 8
  %12 = load %struct.us_data*, %struct.us_data** %3, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.bulk_cs_wrap*
  store %struct.bulk_cs_wrap* %15, %struct.bulk_cs_wrap** %5, align 8
  %16 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %20 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %22 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = call i8* @cpu_to_le32(i32 0)
  %24 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %25 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %27 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %29 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %31 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %30, i32 0, i32 0
  store i32 12, i32* %31, align 8
  %32 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %33 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memset(i32 %34, i32 0, i32 4)
  %36 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %37 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @usb_stor_ucr61s2b_init.init_string, i64 0, i64 0), i32 12)
  %40 = load %struct.us_data*, %struct.us_data** %3, align 8
  %41 = load %struct.us_data*, %struct.us_data** %3, align 8
  %42 = getelementptr inbounds %struct.us_data, %struct.us_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %45 = bitcast %struct.bulk_cb_wrap* %44 to %struct.bulk_cs_wrap*
  %46 = load i32, i32* @US_BULK_CB_WRAP_LEN, align 4
  %47 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %40, i32 %43, %struct.bulk_cs_wrap* %45, i32 %46, i32* %7)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %68

53:                                               ; preds = %1
  %54 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.us_data*, %struct.us_data** %3, align 8
  %56 = load %struct.us_data*, %struct.us_data** %3, align 8
  %57 = getelementptr inbounds %struct.us_data, %struct.us_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %5, align 8
  %60 = load i32, i32* @US_BULK_CS_WRAP_LEN, align 4
  %61 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %55, i32 %58, %struct.bulk_cs_wrap* %59, i32 %60, i32* %7)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64, %50
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @US_DEBUGP(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, %struct.bulk_cs_wrap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
