; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_option_ms.c_option_ms_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_option_ms.c_option_ms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Option MS: option_ms_init called\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Option MS: vendor is not Option or not determinable, no action taken\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Option MS: this is a genuine Option device, proceeding\0A\00", align 1
@option_zero_cd = common dso_local global i64 0, align 8
@ZCD_FORCE_MODEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Option MS: %s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Forcing Modem Mode\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Option MS: Failed to switch to modem mode.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ZCD_ALLOW_MS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"Allowing Mass Storage Mode if device requests it\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @option_ms_init(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %5 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.us_data*, %struct.us_data** %3, align 8
  %7 = call i32 @option_inquiry(%struct.us_data* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12
  %15 = load i64, i64* @option_zero_cd, align 8
  %16 = load i64, i64* @ZCD_FORCE_MODEM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %20 = load %struct.us_data*, %struct.us_data** %3, align 8
  %21 = call i32 @option_rezero(%struct.us_data* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %38

30:                                               ; preds = %14
  %31 = load i64, i64* @option_zero_cd, align 8
  %32 = load i64, i64* @ZCD_ALLOW_MS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %27, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @option_inquiry(%struct.us_data*) #1

declare dso_local i32 @option_rezero(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
