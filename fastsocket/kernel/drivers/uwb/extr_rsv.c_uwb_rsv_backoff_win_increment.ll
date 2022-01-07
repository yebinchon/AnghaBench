; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_backoff_win_increment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_backoff_win_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__, %struct.uwb_drp_backoff_win }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_drp_backoff_win = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"backoff_win_increment: window=%d\0A\00", align 1
@UWB_DRP_BACKOFF_WIN_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"new_window=%d, n=%d\0A: \00", align 1
@UWB_SUPERFRAME_LENGTH_US = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rsv_backoff_win_increment(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  %3 = alloca %struct.uwb_drp_backoff_win*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %7 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %6, i32 0, i32 1
  store %struct.uwb_drp_backoff_win* %7, %struct.uwb_drp_backoff_win** %3, align 8
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %9 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %13 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %17 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %19 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 1
  %22 = load i32, i32* @UWB_DRP_BACKOFF_WIN_MAX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %60

25:                                               ; preds = %1
  %26 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %27 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = call i32 (...) @random32()
  %31 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %32 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %30, %34
  %36 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %37 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %40 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %43 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %47 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @UWB_SUPERFRAME_LENGTH_US, align 4
  %50 = mul i32 %48, %49
  store i32 %50, i32* %5, align 4
  %51 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %52 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %3, align 8
  %54 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %53, i32 0, i32 3
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @usecs_to_jiffies(i32 %56)
  %58 = add nsw i64 %55, %57
  %59 = call i32 @mod_timer(i32* %54, i64 %58)
  br label %60

60:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @random32(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
