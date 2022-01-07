; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_try_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_try_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { %struct.TYPE_6__, %struct.uwb_rsv_move, %struct.uwb_rc* }
%struct.TYPE_6__ = type { i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.uwb_rc = type { %struct.TYPE_5__, %struct.uwb_drp_backoff_win }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_drp_backoff_win = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@UWB_RSV_ALLOC_FOUND = common dso_local global i64 0, align 8
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@UWB_RSV_STATE_O_MOVE_EXPANDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"new allocation not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rsv_try_move(%struct.uwb_rsv* %0, %struct.uwb_mas_bm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwb_rsv*, align 8
  %5 = alloca %struct.uwb_mas_bm*, align 8
  %6 = alloca %struct.uwb_rc*, align 8
  %7 = alloca %struct.uwb_drp_backoff_win*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.uwb_rsv_move*, align 8
  %10 = alloca i32, align 4
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %4, align 8
  store %struct.uwb_mas_bm* %1, %struct.uwb_mas_bm** %5, align 8
  %11 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %12 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %11, i32 0, i32 2
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %12, align 8
  store %struct.uwb_rc* %13, %struct.uwb_rc** %6, align 8
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %15 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %14, i32 0, i32 1
  store %struct.uwb_drp_backoff_win* %15, %struct.uwb_drp_backoff_win** %7, align 8
  %16 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %17 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %7, align 8
  %20 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %2
  %27 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %28 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %27, i32 0, i32 1
  store %struct.uwb_rsv_move* %28, %struct.uwb_rsv_move** %9, align 8
  %29 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %30 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %5, align 8
  %31 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %9, align 8
  %32 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %31, i32 0, i32 1
  %33 = call i64 @uwb_rsv_find_best_allocation(%struct.uwb_rsv* %29, %struct.uwb_mas_bm* %30, %struct.TYPE_7__* %32)
  %34 = load i64, i64* @UWB_RSV_ALLOC_FOUND, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %26
  %37 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %38 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %9, align 8
  %42 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UWB_NUM_MAS, align 4
  %46 = call i32 @bitmap_equal(i32 %40, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %36
  %49 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %9, align 8
  %50 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %9, align 8
  %54 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %58 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @UWB_NUM_MAS, align 4
  %62 = call i32 @bitmap_andnot(i32 %52, i32 %56, i32 %60, i32 %61)
  %63 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %64 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %9, align 8
  %65 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %64, i32 0, i32 0
  %66 = call i32 @uwb_drp_avail_reserve_pending(%struct.uwb_rc* %63, %struct.TYPE_8__* %65)
  %67 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %68 = load i32, i32* @UWB_RSV_STATE_O_MOVE_EXPANDING, align 4
  %69 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %67, i32 %68)
  br label %70

70:                                               ; preds = %48, %36
  br label %74

71:                                               ; preds = %26
  %72 = load %struct.device*, %struct.device** %8, align 8
  %73 = call i32 @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %70
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %23
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @uwb_rsv_find_best_allocation(%struct.uwb_rsv*, %struct.uwb_mas_bm*, %struct.TYPE_7__*) #1

declare dso_local i32 @bitmap_equal(i32, i32, i32) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

declare dso_local i32 @uwb_drp_avail_reserve_pending(%struct.uwb_rc*, %struct.TYPE_8__*) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
