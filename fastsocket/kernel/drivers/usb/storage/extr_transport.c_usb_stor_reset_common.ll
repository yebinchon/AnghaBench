; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_transport.c_usb_stor_reset_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_transport.c_usb_stor_reset_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i32, i32, i32 }

@US_FLIDX_DISCONNECTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No reset during disconnect\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Soft reset failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Reset interrupted by disconnect\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Soft reset: clearing bulk-in endpoint halt\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Soft reset: clearing bulk-out endpoint halt\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Soft reset failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Soft reset done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i32, i32, i32, i8*, i32)* @usb_stor_reset_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stor_reset_common(%struct.us_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.us_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @US_FLIDX_DISCONNECTING, align 4
  %19 = load %struct.us_data*, %struct.us_data** %9, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %93

27:                                               ; preds = %7
  %28 = load %struct.us_data*, %struct.us_data** %9, align 8
  %29 = load %struct.us_data*, %struct.us_data** %9, align 8
  %30 = getelementptr inbounds %struct.us_data, %struct.us_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i8*, i8** %14, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @HZ, align 4
  %39 = mul nsw i32 5, %38
  %40 = call i32 @usb_stor_control_msg(%struct.us_data* %28, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i8* %36, i32 %37, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load i32, i32* %16, align 4
  %45 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %8, align 4
  br label %93

47:                                               ; preds = %27
  %48 = load %struct.us_data*, %struct.us_data** %9, align 8
  %49 = getelementptr inbounds %struct.us_data, %struct.us_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @US_FLIDX_DISCONNECTING, align 4
  %52 = load %struct.us_data*, %struct.us_data** %9, align 8
  %53 = getelementptr inbounds %struct.us_data, %struct.us_data* %52, i32 0, i32 2
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 %55, 6
  %57 = call i32 @wait_event_interruptible_timeout(i32 %50, i64 %54, i32 %56)
  %58 = load i32, i32* @US_FLIDX_DISCONNECTING, align 4
  %59 = load %struct.us_data*, %struct.us_data** %9, align 8
  %60 = getelementptr inbounds %struct.us_data, %struct.us_data* %59, i32 0, i32 2
  %61 = call i64 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %93

67:                                               ; preds = %47
  %68 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.us_data*, %struct.us_data** %9, align 8
  %70 = load %struct.us_data*, %struct.us_data** %9, align 8
  %71 = getelementptr inbounds %struct.us_data, %struct.us_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @usb_stor_clear_halt(%struct.us_data* %69, i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.us_data*, %struct.us_data** %9, align 8
  %76 = load %struct.us_data*, %struct.us_data** %9, align 8
  %77 = getelementptr inbounds %struct.us_data, %struct.us_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usb_stor_clear_halt(%struct.us_data* %75, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %82, %67
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %91

89:                                               ; preds = %84
  %90 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %87
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %91, %63, %43, %23
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @usb_stor_control_msg(%struct.us_data*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

declare dso_local i32 @usb_stor_clear_halt(%struct.us_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
