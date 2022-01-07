; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_beacon.c_uwb_rc_start_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_beacon.c_uwb_rc_start_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_rc_cmd_start_beacon = type { %struct.TYPE_5__, i32, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.uwb_rc_evt_confirm = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UWB_RC_CET_GENERAL = common dso_local global i8* null, align 8
@UWB_RC_CMD_START_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"START-BEACON\00", align 1
@UWB_RC_RES_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"START-BEACON: command execution failed: %s (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, i32, i32)* @uwb_rc_start_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rc_start_beacon(%struct.uwb_rc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uwb_rc_cmd_start_beacon*, align 8
  %10 = alloca %struct.uwb_rc_evt_confirm, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.uwb_rc_cmd_start_beacon* @kzalloc(i32 32, i32 %11)
  store %struct.uwb_rc_cmd_start_beacon* %12, %struct.uwb_rc_cmd_start_beacon** %9, align 8
  %13 = load %struct.uwb_rc_cmd_start_beacon*, %struct.uwb_rc_cmd_start_beacon** %9, align 8
  %14 = icmp eq %struct.uwb_rc_cmd_start_beacon* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %71

18:                                               ; preds = %3
  %19 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %20 = load %struct.uwb_rc_cmd_start_beacon*, %struct.uwb_rc_cmd_start_beacon** %9, align 8
  %21 = getelementptr inbounds %struct.uwb_rc_cmd_start_beacon, %struct.uwb_rc_cmd_start_beacon* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @UWB_RC_CMD_START_BEACON, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.uwb_rc_cmd_start_beacon*, %struct.uwb_rc_cmd_start_beacon** %9, align 8
  %26 = getelementptr inbounds %struct.uwb_rc_cmd_start_beacon, %struct.uwb_rc_cmd_start_beacon* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.uwb_rc_cmd_start_beacon*, %struct.uwb_rc_cmd_start_beacon** %9, align 8
  %31 = getelementptr inbounds %struct.uwb_rc_cmd_start_beacon, %struct.uwb_rc_cmd_start_beacon* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.uwb_rc_cmd_start_beacon*, %struct.uwb_rc_cmd_start_beacon** %9, align 8
  %34 = getelementptr inbounds %struct.uwb_rc_cmd_start_beacon, %struct.uwb_rc_cmd_start_beacon* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %36 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %10, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @UWB_RC_CMD_START_BEACON, align 4
  %39 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %10, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %42 = load %struct.uwb_rc_cmd_start_beacon*, %struct.uwb_rc_cmd_start_beacon** %9, align 8
  %43 = getelementptr inbounds %struct.uwb_rc_cmd_start_beacon, %struct.uwb_rc_cmd_start_beacon* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %10, i32 0, i32 1
  %45 = call i32 @uwb_rc_cmd(%struct.uwb_rc* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %43, i32 32, %struct.TYPE_6__* %44, i32 24)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %18
  br label %67

49:                                               ; preds = %18
  %50 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %10, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UWB_RC_RES_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %56 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %10, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @uwb_rc_strerror(i64 %59)
  %61 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %10, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %54, %49
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.uwb_rc_cmd_start_beacon*, %struct.uwb_rc_cmd_start_beacon** %9, align 8
  %69 = call i32 @kfree(%struct.uwb_rc_cmd_start_beacon* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.uwb_rc_cmd_start_beacon* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @uwb_rc_cmd(%struct.uwb_rc*, i8*, %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #1

declare dso_local i32 @uwb_rc_strerror(i64) #1

declare dso_local i32 @kfree(%struct.uwb_rc_cmd_start_beacon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
