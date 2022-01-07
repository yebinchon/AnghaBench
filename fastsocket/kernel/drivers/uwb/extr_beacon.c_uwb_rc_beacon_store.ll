; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_beacon.c_uwb_rc_beacon_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_beacon.c_uwb_rc_beacon_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.uwb_dev = type { %struct.uwb_rc* }
%struct.uwb_rc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @uwb_rc_beacon_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rc_beacon_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uwb_dev*, align 8
  %10 = alloca %struct.uwb_rc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.uwb_dev* @to_uwb_dev(%struct.device* %13)
  store %struct.uwb_dev* %14, %struct.uwb_dev** %9, align 8
  %15 = load %struct.uwb_dev*, %struct.uwb_dev** %9, align 8
  %16 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %15, i32 0, i32 0
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %16, align 8
  store %struct.uwb_rc* %17, %struct.uwb_rc** %10, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sge i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.uwb_rc*, %struct.uwb_rc** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @uwb_radio_force_channel(%struct.uwb_rc* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  br label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i64 [ %33, %31 ], [ %35, %34 ]
  %38 = trunc i64 %37 to i32
  ret i32 %38
}

declare dso_local %struct.uwb_dev* @to_uwb_dev(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @uwb_radio_force_channel(%struct.uwb_rc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
