; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr09.c_usb_stor_sddr09_dpcm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr09.c_usb_stor_sddr09_dpcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"sddr09_init: send_command fails\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SDDR09init: %02X %02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"sddr09_init: 2nd send_command fails\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @usb_stor_sddr09_dpcm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stor_sddr09_dpcm_init(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load %struct.us_data*, %struct.us_data** %3, align 8
  %11 = call i32 @sddr09_common_init(%struct.us_data* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.us_data*, %struct.us_data** %3, align 8
  %18 = load i32, i32* @USB_DIR_IN, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @sddr09_send_command(%struct.us_data* %17, i32 1, i32 %18, i8* %19, i32 2)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %84

26:                                               ; preds = %16
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load %struct.us_data*, %struct.us_data** %3, align 8
  %37 = load i32, i32* @USB_DIR_IN, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @sddr09_send_command(%struct.us_data* %36, i32 8, i32 %37, i8* %38, i32 2)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %84

45:                                               ; preds = %26
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load %struct.us_data*, %struct.us_data** %3, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @sddr09_request_sense(%struct.us_data* %55, i8* %56, i32 18)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %45
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %78, %66
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 18
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %67

81:                                               ; preds = %67
  %82 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %60, %45
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %42, %23, %14
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @sddr09_common_init(%struct.us_data*) #1

declare dso_local i32 @sddr09_send_command(%struct.us_data*, i32, i32, i8*, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @sddr09_request_sense(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
