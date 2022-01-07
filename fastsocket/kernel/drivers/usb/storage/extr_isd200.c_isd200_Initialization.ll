; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_isd200.c_isd200_Initialization.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_isd200.c_isd200_Initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ISD200 Initialization...\0A\00", align 1
@ISD200_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"ERROR Initializing ISD200 Info struct\0A\00", align 1
@ISD200_GOOD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"ISD200 Initialization Failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ISD200 Initialization complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @isd200_Initialization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isd200_Initialization(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %3 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.us_data*, %struct.us_data** %2, align 8
  %5 = call i64 @isd200_init_info(%struct.us_data* %4)
  %6 = load i64, i64* @ISD200_ERROR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.us_data*, %struct.us_data** %2, align 8
  %12 = call i64 @isd200_get_inquiry_data(%struct.us_data* %11)
  %13 = load i64, i64* @ISD200_GOOD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %19

17:                                               ; preds = %10
  %18 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %15
  br label %20

20:                                               ; preds = %19, %8
  ret i32 0
}

declare dso_local i32 @US_DEBUGP(i8*) #1

declare dso_local i64 @isd200_init_info(%struct.us_data*) #1

declare dso_local i64 @isd200_get_inquiry_data(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
