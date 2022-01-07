; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_handle_conflict_expanding.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_handle_conflict_expanding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_ie_drp = type { i32 }
%struct.uwb_rsv = type { i32, %struct.TYPE_3__, %struct.uwb_rsv_move, %struct.uwb_rc* }
%struct.TYPE_3__ = type { i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_rc = type { %struct.uwb_drp_backoff_win }
%struct.uwb_drp_backoff_win = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@UWB_RSV_STATE_O_ESTABLISHED = common dso_local global i32 0, align 4
@UWB_RSV_STATE_T_EXPANDING_CONFLICT = common dso_local global i32 0, align 4
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@UWB_RSV_STATE_O_MODIFIED = common dso_local global i32 0, align 4
@UWB_RSV_STATE_T_CONFLICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_ie_drp*, i32, %struct.uwb_rsv*, i32, %struct.uwb_mas_bm*)* @handle_conflict_expanding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_conflict_expanding(%struct.uwb_ie_drp* %0, i32 %1, %struct.uwb_rsv* %2, i32 %3, %struct.uwb_mas_bm* %4) #0 {
  %6 = alloca %struct.uwb_ie_drp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uwb_rsv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uwb_mas_bm*, align 8
  %11 = alloca %struct.uwb_rc*, align 8
  %12 = alloca %struct.uwb_drp_backoff_win*, align 8
  %13 = alloca %struct.uwb_rsv_move*, align 8
  %14 = alloca i32, align 4
  store %struct.uwb_ie_drp* %0, %struct.uwb_ie_drp** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uwb_rsv* %2, %struct.uwb_rsv** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.uwb_mas_bm* %4, %struct.uwb_mas_bm** %10, align 8
  %15 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %16 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %15, i32 0, i32 3
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %16, align 8
  store %struct.uwb_rc* %17, %struct.uwb_rc** %11, align 8
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %11, align 8
  %19 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %18, i32 0, i32 0
  store %struct.uwb_drp_backoff_win* %19, %struct.uwb_drp_backoff_win** %12, align 8
  %20 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %21 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %20, i32 0, i32 2
  store %struct.uwb_rsv_move* %21, %struct.uwb_rsv_move** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %5
  %25 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %28 = call i32 @evaluate_conflict_action(%struct.uwb_ie_drp* %25, i32 %26, %struct.uwb_rsv* %27, i32 0)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %30 = call i64 @uwb_rsv_is_owner(%struct.uwb_rsv* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %24
  %33 = load i32, i32* %14, align 4
  switch i32 %33, label %55 [
    i32 129, label %34
    i32 128, label %34
  ]

34:                                               ; preds = %32, %32
  %35 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %36 = load i32, i32* @UWB_RSV_STATE_O_ESTABLISHED, align 4
  %37 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %35, i32 %36)
  %38 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %39 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.uwb_drp_backoff_win*, %struct.uwb_drp_backoff_win** %12, align 8
  %41 = getelementptr inbounds %struct.uwb_drp_backoff_win, %struct.uwb_drp_backoff_win* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.uwb_rc*, %struct.uwb_rc** %11, align 8
  %46 = call i32 @uwb_rsv_backoff_win_increment(%struct.uwb_rc* %45)
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %49 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %48, i32 0, i32 3
  %50 = load %struct.uwb_rc*, %struct.uwb_rc** %49, align 8
  %51 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %52 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %52, i32 0, i32 0
  %54 = call i32 @uwb_drp_avail_release(%struct.uwb_rc* %50, %struct.TYPE_4__* %53)
  br label %55

55:                                               ; preds = %47, %32
  br label %63

56:                                               ; preds = %24
  %57 = load i32, i32* %14, align 4
  switch i32 %57, label %62 [
    i32 129, label %58
    i32 128, label %58
  ]

58:                                               ; preds = %56, %56
  %59 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %60 = load i32, i32* @UWB_RSV_STATE_T_EXPANDING_CONFLICT, align 4
  %61 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %56
  br label %63

63:                                               ; preds = %62, %55
  br label %99

64:                                               ; preds = %5
  %65 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %66 = call i64 @uwb_rsv_is_owner(%struct.uwb_rsv* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load %struct.uwb_rc*, %struct.uwb_rc** %11, align 8
  %70 = call i32 @uwb_rsv_backoff_win_increment(%struct.uwb_rc* %69)
  %71 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %72 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %71, i32 0, i32 3
  %73 = load %struct.uwb_rc*, %struct.uwb_rc** %72, align 8
  %74 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %75 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %75, i32 0, i32 0
  %77 = call i32 @uwb_drp_avail_release(%struct.uwb_rc* %73, %struct.TYPE_4__* %76)
  %78 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %13, align 8
  %79 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %83 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %87 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @UWB_NUM_MAS, align 4
  %90 = call i32 @bitmap_andnot(i32 %81, i32 %85, i32 %88, i32 %89)
  %91 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %92 = load i32, i32* @UWB_RSV_STATE_O_MODIFIED, align 4
  %93 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %91, i32 %92)
  br label %98

94:                                               ; preds = %64
  %95 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %96 = load i32, i32* @UWB_RSV_STATE_T_CONFLICT, align 4
  %97 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %68
  br label %99

99:                                               ; preds = %98, %63
  ret void
}

declare dso_local i32 @evaluate_conflict_action(%struct.uwb_ie_drp*, i32, %struct.uwb_rsv*, i32) #1

declare dso_local i64 @uwb_rsv_is_owner(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @uwb_rsv_backoff_win_increment(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_drp_avail_release(%struct.uwb_rc*, %struct.TYPE_4__*) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
