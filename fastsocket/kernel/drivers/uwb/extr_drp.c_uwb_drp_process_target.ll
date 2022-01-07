; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_uwb_drp_process_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_uwb_drp_process_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rsv = type { %struct.TYPE_5__, i32, i32, %struct.uwb_rsv_move }
%struct.TYPE_5__ = type { i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.uwb_ie_drp = type { i32 }
%struct.uwb_rc_evt_drp = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@UWB_RSV_STATE_T_CONFLICT = common dso_local global i32 0, align 4
@UWB_RSV_STATE_T_EXPANDING_ACCEPTED = common dso_local global i32 0, align 4
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@UWB_RSV_STATE_T_ACCEPTED = common dso_local global i32 0, align 4
@UWB_RSV_STATE_T_RESIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ignoring invalid DRP IE state (%d/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_ie_drp*, %struct.uwb_rc_evt_drp*)* @uwb_drp_process_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_process_target(%struct.uwb_rc* %0, %struct.uwb_rsv* %1, %struct.uwb_ie_drp* %2, %struct.uwb_rc_evt_drp* %3) #0 {
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca %struct.uwb_rsv*, align 8
  %7 = alloca %struct.uwb_ie_drp*, align 8
  %8 = alloca %struct.uwb_rc_evt_drp*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.uwb_rsv_move*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.uwb_mas_bm, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store %struct.uwb_rsv* %1, %struct.uwb_rsv** %6, align 8
  store %struct.uwb_ie_drp* %2, %struct.uwb_ie_drp** %7, align 8
  store %struct.uwb_rc_evt_drp* %3, %struct.uwb_rc_evt_drp** %8, align 8
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %15 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %18 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %17, i32 0, i32 3
  store %struct.uwb_rsv_move* %18, %struct.uwb_rsv_move** %10, align 8
  %19 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %7, align 8
  %20 = call i32 @uwb_ie_drp_status(%struct.uwb_ie_drp* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %7, align 8
  %22 = call i32 @uwb_ie_drp_reason_code(%struct.uwb_ie_drp* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %7, align 8
  %24 = call i32 @uwb_drp_ie_to_bm(%struct.uwb_mas_bm* %13, %struct.uwb_ie_drp* %23)
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %156 [
    i32 129, label %26
    i32 128, label %101
  ]

26:                                               ; preds = %4
  %27 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %28 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UWB_RSV_STATE_T_CONFLICT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %34 = load i32, i32* @UWB_RSV_STATE_T_CONFLICT, align 4
  %35 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %33, i32 %34)
  br label %161

36:                                               ; preds = %26
  %37 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %38 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UWB_RSV_STATE_T_EXPANDING_ACCEPTED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %44 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @UWB_NUM_MAS, align 4
  %50 = call i32 @bitmap_equal(i32 %46, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %54 = load i32, i32* @UWB_RSV_STATE_T_EXPANDING_ACCEPTED, align 4
  %55 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %42
  br label %100

57:                                               ; preds = %36
  %58 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %59 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UWB_NUM_MAS, align 4
  %65 = call i32 @bitmap_equal(i32 %61, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %91, label %67

67:                                               ; preds = %57
  %68 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %69 = call i32 @uwb_drp_avail_reserve_pending(%struct.uwb_rc* %68, %struct.uwb_mas_bm* %13)
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %75 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %8, align 8
  %76 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %7, align 8
  %77 = call i32 @uwb_drp_handle_all_conflict_rsv(%struct.uwb_rc* %74, %struct.uwb_rc_evt_drp* %75, %struct.uwb_ie_drp* %76, %struct.uwb_mas_bm* %13)
  br label %90

78:                                               ; preds = %67
  %79 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %10, align 8
  %80 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @UWB_NUM_MAS, align 4
  %86 = call i32 @bitmap_copy(i32 %82, i32 %84, i32 %85)
  %87 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %88 = load i32, i32* @UWB_RSV_STATE_T_EXPANDING_ACCEPTED, align 4
  %89 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %87, i32 %88)
  br label %90

90:                                               ; preds = %78, %73
  br label %99

91:                                               ; preds = %57
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %96 = load i32, i32* @UWB_RSV_STATE_T_ACCEPTED, align 4
  %97 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %91
  br label %99

99:                                               ; preds = %98, %90
  br label %100

100:                                              ; preds = %99, %56
  br label %161

101:                                              ; preds = %4
  %102 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %103 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @UWB_NUM_MAS, align 4
  %109 = call i32 @bitmap_equal(i32 %105, i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %113 = load i32, i32* @UWB_RSV_STATE_T_ACCEPTED, align 4
  %114 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %112, i32 %113)
  br label %161

115:                                              ; preds = %101
  %116 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %119 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @UWB_NUM_MAS, align 4
  %123 = call i32 @bitmap_subset(i32 %117, i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %115
  %126 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %10, align 8
  %127 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %131 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @UWB_NUM_MAS, align 4
  %137 = call i32 @bitmap_andnot(i32 %129, i32 %133, i32 %135, i32 %136)
  %138 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %139 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %10, align 8
  %142 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %141, i32 0, i32 0
  %143 = call i32 @uwb_drp_avail_release(i32 %140, %struct.TYPE_6__* %142)
  br label %144

144:                                              ; preds = %125, %115
  %145 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %146 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @UWB_NUM_MAS, align 4
  %152 = call i32 @bitmap_copy(i32 %148, i32 %150, i32 %151)
  %153 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %154 = load i32, i32* @UWB_RSV_STATE_T_RESIZED, align 4
  %155 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %153, i32 %154)
  br label %161

156:                                              ; preds = %4
  %157 = load %struct.device*, %struct.device** %9, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @dev_warn(%struct.device* %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %144, %111, %100, %32
  ret void
}

declare dso_local i32 @uwb_ie_drp_status(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_ie_drp_reason_code(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_drp_ie_to_bm(%struct.uwb_mas_bm*, %struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @bitmap_equal(i32, i32, i32) #1

declare dso_local i32 @uwb_drp_avail_reserve_pending(%struct.uwb_rc*, %struct.uwb_mas_bm*) #1

declare dso_local i32 @uwb_drp_handle_all_conflict_rsv(%struct.uwb_rc*, %struct.uwb_rc_evt_drp*, %struct.uwb_ie_drp*, %struct.uwb_mas_bm*) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @bitmap_subset(i32, i32, i32) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

declare dso_local i32 @uwb_drp_avail_release(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
