; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_stroke_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_stroke_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i64, i32, i64 }

@UWB_MAX_LOST_BEACONS = common dso_local global i32 0, align 4
@UWB_RSV_STATE_O_INITIATED = common dso_local global i64 0, align 8
@UWB_RSV_STATE_O_MOVE_EXPANDING = common dso_local global i64 0, align 8
@UWB_RSV_STATE_O_MOVE_COMBINING = common dso_local global i64 0, align 8
@UWB_RSV_STATE_O_MOVE_REDUCING = common dso_local global i64 0, align 8
@UWB_RSV_STATE_O_ESTABLISHED = common dso_local global i64 0, align 8
@UWB_SUPERFRAME_LENGTH_US = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rsv*)* @uwb_rsv_stroke_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rsv_stroke_timer(%struct.uwb_rsv* %0) #0 {
  %2 = alloca %struct.uwb_rsv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %2, align 8
  %5 = load i32, i32* @UWB_MAX_LOST_BEACONS, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %7 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %12 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UWB_RSV_STATE_O_INITIATED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %18 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UWB_RSV_STATE_O_MOVE_EXPANDING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %24 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UWB_RSV_STATE_O_MOVE_COMBINING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %30 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UWB_RSV_STATE_O_MOVE_REDUCING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22, %16, %10
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %37 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UWB_RSV_STATE_O_ESTABLISHED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 2
  %49 = load i32, i32* @UWB_SUPERFRAME_LENGTH_US, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %4, align 4
  %51 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %52 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %51, i32 0, i32 1
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @usecs_to_jiffies(i32 %54)
  %56 = add nsw i64 %53, %55
  %57 = call i32 @mod_timer(i32* %52, i64 %56)
  br label %62

58:                                               ; preds = %43
  %59 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %60 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %59, i32 0, i32 1
  %61 = call i32 @del_timer(i32* %60)
  br label %62

62:                                               ; preds = %58, %46
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
