; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_isd200.c_isd200_srst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_isd200.c_isd200_srst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@ISD200_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Entering isd200_SRST\0A\00", align 1
@ACTION_RESET = common dso_local global i32 0, align 4
@ISD200_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"   Error issuing SRST\0A\00", align 1
@ISD200_ERROR = common dso_local global i32 0, align 4
@ACTION_REENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"   Error taking drive out of reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Leaving isd200_srst %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @isd200_srst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isd200_srst(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %5 = load i32, i32* @ISD200_GOOD, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.us_data*, %struct.us_data** %2, align 8
  %8 = load i32, i32* @ACTION_RESET, align 4
  %9 = call i32 @isd200_action(%struct.us_data* %7, i32 %8, i32* null, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ISD200_TRANSPORT_GOOD, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ISD200_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %1
  %17 = call i32 @msleep(i32 10)
  %18 = load %struct.us_data*, %struct.us_data** %2, align 8
  %19 = load i32, i32* @ACTION_REENABLE, align 4
  %20 = call i32 @isd200_action(%struct.us_data* %18, i32 %19, i32* null, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ISD200_TRANSPORT_GOOD, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @ISD200_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %16
  %28 = call i32 @msleep(i32 50)
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @isd200_action(%struct.us_data*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
