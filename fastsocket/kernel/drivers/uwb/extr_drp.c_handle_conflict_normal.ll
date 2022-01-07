; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_handle_conflict_normal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_handle_conflict_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_ie_drp = type { i32 }
%struct.uwb_rsv = type { %struct.TYPE_4__, %struct.uwb_rsv_move, %struct.uwb_rc* }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uwb_rc = type { %struct.uwb_drp_backoff_win }
%struct.uwb_drp_backoff_win = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@UWB_RSV_STATE_O_TO_BE_MOVED = common dso_local global i32 0, align 4
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@UWB_RSV_STATE_O_MODIFIED = common dso_local global i32 0, align 4
@UWB_RSV_STATE_T_CONFLICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_ie_drp*, i32, %struct.uwb_rsv*, %struct.uwb_mas_bm*)* @handle_conflict_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_conflict_normal(%struct.uwb_ie_drp* %0, i32 %1, %struct.uwb_rsv* %2, %struct.uwb_mas_bm* %3) #0 {
  %5 = alloca %struct.uwb_ie_drp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uwb_rsv*, align 8
  %8 = alloca %struct.uwb_mas_bm*, align 8
  %9 = alloca %struct.uwb_rc*, align 8
  %10 = alloca %struct.uwb_rsv_move*, align 8
  %11 = alloca %struct.uwb_drp_backoff_win*, align 8
  %12 = alloca i32, align 4
  store %struct.uwb_ie_drp* %0, %struct.uwb_ie_drp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uwb_rsv* %2, %struct.uwb_rsv** %7, align 8
  store %struct.uwb_mas_bm* %3, %struct.uwb_mas_bm** %8, align 8
  %13 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %14 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %13, i32 0, i32 2
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %14, align 8
  store %struct.uwb_rc* %15, %struct.uwb_rc** %9, align 8
  %16 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %17 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %16, i32 0, i32 1
  store %struct.uwb_rsv_move* %17, %struct.uwb_rsv_move** %10, align 8
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %9, align 8
  %19 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %18, i32 0, i32 0
  store %struct.uwb_drp_backoff_win* %19, %struct.uwb_drp_backoff_win** %11, align 8
  %20 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %23 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %24 = call i32 @uwb_rsv_status(%struct.uwb_rsv* %23)
  %25 = call i32 @evaluate_conflict_action(%struct.uwb_ie_drp* %20, i32 %21, %struct.uwb_rsv* %22, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %27 = call i64 @uwb_rsv_is_owner(%struct.uwb_rsv* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %62 [
    i32 129, label %31
    i32 128, label %43
  ]

31:                                               ; preds = %29
  %32 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %33 = load i32, i32* @UWB_RSV_STATE_O_TO_BE_MOVED, align 4
  %34 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %32, i32 %33)
  %35 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %11, align 8
  %36 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.uwb_rc*, %struct.uwb_rc** %9, align 8
  %41 = call i32 @uwb_rsv_backoff_win_increment(%struct.uwb_rc* %40)
  br label %42

42:                                               ; preds = %39, %31
  br label %63

43:                                               ; preds = %29
  %44 = load %struct.uwb_rc*, %struct.uwb_rc** %9, align 8
  %45 = call i32 @uwb_rsv_backoff_win_increment(%struct.uwb_rc* %44)
  %46 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %10, align 8
  %47 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %51 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %8, align 8
  %55 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @UWB_NUM_MAS, align 4
  %58 = call i32 @bitmap_and(i32 %49, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %60 = load i32, i32* @UWB_RSV_STATE_O_MODIFIED, align 4
  %61 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %59, i32 %60)
  br label %62

62:                                               ; preds = %29, %43
  br label %63

63:                                               ; preds = %62, %42
  br label %72

64:                                               ; preds = %4
  %65 = load i32, i32* %12, align 4
  switch i32 %65, label %70 [
    i32 129, label %66
    i32 128, label %66
  ]

66:                                               ; preds = %64, %64
  %67 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %68 = load i32, i32* @UWB_RSV_STATE_T_CONFLICT, align 4
  %69 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %66
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %63
  ret void
}

declare dso_local i32 @evaluate_conflict_action(%struct.uwb_ie_drp*, i32, %struct.uwb_rsv*, i32) #1

declare dso_local i32 @uwb_rsv_status(%struct.uwb_rsv*) #1

declare dso_local i64 @uwb_rsv_is_owner(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @uwb_rsv_backoff_win_increment(%struct.uwb_rc*) #1

declare dso_local i32 @bitmap_and(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
