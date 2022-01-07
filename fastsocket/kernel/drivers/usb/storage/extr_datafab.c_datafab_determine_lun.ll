; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_datafab.c_datafab_determine_lun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_datafab.c_datafab_determine_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }
%struct.datafab_info = type { i32 }

@datafab_determine_lun.scommand = internal global [8 x i8] c"\00\01\00\00\00\A0\EC\01", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"datafab_determine_lun:  locating...\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.datafab_info*)* @datafab_determine_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datafab_determine_lun(%struct.us_data* %0, %struct.datafab_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.datafab_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.datafab_info* %1, %struct.datafab_info** %5, align 8
  %10 = load %struct.us_data*, %struct.us_data** %4, align 8
  %11 = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %14 = icmp ne %struct.datafab_info* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %16, i32* %3, align 4
  br label %84

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @memcpy(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @datafab_determine_lun.scommand, i64 0, i64 0), i32 8)
  %20 = load i32, i32* @GFP_NOIO, align 4
  %21 = call i8* @kmalloc(i32 512, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %25, i32* %3, align 4
  br label %84

26:                                               ; preds = %17
  %27 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %76, %26
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = icmp slt i32 %29, 3
  br i1 %31, label %32, label %78

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 5
  store i8 -96, i8* %34, align 1
  %35 = load %struct.us_data*, %struct.us_data** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @datafab_bulk_write(%struct.us_data* %35, i8* %36, i32 8)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %42, i32* %9, align 4
  br label %80

43:                                               ; preds = %32
  %44 = load %struct.us_data*, %struct.us_data** %4, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @datafab_bulk_read(%struct.us_data* %44, i8* %45, i32 512)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %52 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %53, i32* %9, align 4
  br label %80

54:                                               ; preds = %43
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 5
  store i8 -80, i8* %56, align 1
  %57 = load %struct.us_data*, %struct.us_data** %4, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @datafab_bulk_write(%struct.us_data* %57, i8* %58, i32 8)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %64, i32* %9, align 4
  br label %80

65:                                               ; preds = %54
  %66 = load %struct.us_data*, %struct.us_data** %4, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @datafab_bulk_read(%struct.us_data* %66, i8* %67, i32 512)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %74 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %75, i32* %9, align 4
  br label %80

76:                                               ; preds = %65
  %77 = call i32 @msleep(i32 20)
  br label %28

78:                                               ; preds = %28
  %79 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %72, %63, %50, %41
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %24, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @US_DEBUGP(i8*) #1

declare dso_local i32 @datafab_bulk_write(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @datafab_bulk_read(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
