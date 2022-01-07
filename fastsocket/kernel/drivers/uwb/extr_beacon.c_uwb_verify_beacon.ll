; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_beacon.c_uwb_verify_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_beacon.c_uwb_verify_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_rc_evt_beacon = type { i32 }
%struct.uwb_beacon_frame = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"BEACON event: Not enough data to decode (%zu vs %zu bytes needed)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, %struct.uwb_event*, %struct.uwb_rc_evt_beacon*)* @uwb_verify_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_verify_beacon(%struct.uwb_rc* %0, %struct.uwb_event* %1, %struct.uwb_rc_evt_beacon* %2) #0 {
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_event*, align 8
  %6 = alloca %struct.uwb_rc_evt_beacon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uwb_beacon_frame*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_event* %1, %struct.uwb_event** %5, align 8
  store %struct.uwb_rc_evt_beacon* %2, %struct.uwb_rc_evt_beacon** %6, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %13 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.uwb_event*, %struct.uwb_event** %5, align 8
  %16 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 8
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %9, align 8
  %23 = load %struct.uwb_event*, %struct.uwb_event** %5, align 8
  %24 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %26, i32 8)
  br label %29

28:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
