; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_uwb_drp_process_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_uwb_drp_process_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rsv = type { %struct.TYPE_6__, i32, %struct.uwb_rsv_move }
%struct.TYPE_6__ = type { i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.uwb_dev = type { i32 }
%struct.uwb_ie_drp = type { i32 }
%struct.uwb_rc_evt_drp = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@UWB_NUM_MAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ignoring invalid DRP IE state (%d/%d)\0A\00", align 1
@UWB_RSV_STATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_dev*, %struct.uwb_ie_drp*, %struct.uwb_rc_evt_drp*)* @uwb_drp_process_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_process_owner(%struct.uwb_rc* %0, %struct.uwb_rsv* %1, %struct.uwb_dev* %2, %struct.uwb_ie_drp* %3, %struct.uwb_rc_evt_drp* %4) #0 {
  %6 = alloca %struct.uwb_rc*, align 8
  %7 = alloca %struct.uwb_rsv*, align 8
  %8 = alloca %struct.uwb_dev*, align 8
  %9 = alloca %struct.uwb_ie_drp*, align 8
  %10 = alloca %struct.uwb_rc_evt_drp*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.uwb_rsv_move*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.uwb_mas_bm, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %6, align 8
  store %struct.uwb_rsv* %1, %struct.uwb_rsv** %7, align 8
  store %struct.uwb_dev* %2, %struct.uwb_dev** %8, align 8
  store %struct.uwb_ie_drp* %3, %struct.uwb_ie_drp** %9, align 8
  store %struct.uwb_rc_evt_drp* %4, %struct.uwb_rc_evt_drp** %10, align 8
  %16 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %17 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %11, align 8
  %19 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %20 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %19, i32 0, i32 2
  store %struct.uwb_rsv_move* %20, %struct.uwb_rsv_move** %12, align 8
  %21 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %22 = call i32 @uwb_ie_drp_status(%struct.uwb_ie_drp* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %24 = call i32 @uwb_ie_drp_reason_code(%struct.uwb_ie_drp* %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %26 = call i32 @uwb_drp_ie_to_bm(%struct.uwb_mas_bm* %15, %struct.uwb_ie_drp* %25)
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %114

29:                                               ; preds = %5
  %30 = load i32, i32* %14, align 4
  switch i32 %30, label %108 [
    i32 138, label %31
  ]

31:                                               ; preds = %29
  %32 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %33 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %106 [
    i32 128, label %35
    i32 133, label %35
    i32 134, label %35
    i32 132, label %38
    i32 129, label %55
    i32 130, label %72
    i32 131, label %89
  ]

35:                                               ; preds = %31, %31, %31
  %36 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %37 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %36, i32 134)
  br label %107

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %15, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %42 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UWB_NUM_MAS, align 4
  %46 = call i32 @bitmap_equal(i32 %40, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %50 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %49, i32 134)
  br label %54

51:                                               ; preds = %38
  %52 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %53 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %52, i32 132)
  br label %54

54:                                               ; preds = %51, %48
  br label %107

55:                                               ; preds = %31
  %56 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %15, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %59 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @UWB_NUM_MAS, align 4
  %63 = call i32 @bitmap_equal(i32 %57, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %67 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %66, i32 134)
  br label %71

68:                                               ; preds = %55
  %69 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %70 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %69, i32 129)
  br label %71

71:                                               ; preds = %68, %65
  br label %107

72:                                               ; preds = %31
  %73 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %15, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %12, align 8
  %76 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @UWB_NUM_MAS, align 4
  %80 = call i32 @bitmap_equal(i32 %74, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %84 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %83, i32 131)
  br label %88

85:                                               ; preds = %72
  %86 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %87 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %86, i32 130)
  br label %88

88:                                               ; preds = %85, %82
  br label %107

89:                                               ; preds = %31
  %90 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %15, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %93 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @UWB_NUM_MAS, align 4
  %97 = call i32 @bitmap_equal(i32 %91, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %101 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %100, i32 129)
  br label %105

102:                                              ; preds = %89
  %103 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %104 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %103, i32 131)
  br label %105

105:                                              ; preds = %102, %99
  br label %107

106:                                              ; preds = %31
  br label %107

107:                                              ; preds = %106, %105, %88, %71, %54, %35
  br label %113

108:                                              ; preds = %29
  %109 = load %struct.device*, %struct.device** %11, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @dev_warn(%struct.device* %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %107
  br label %142

114:                                              ; preds = %5
  %115 = load i32, i32* %14, align 4
  switch i32 %115, label %136 [
    i32 135, label %116
    i32 136, label %119
    i32 137, label %123
  ]

116:                                              ; preds = %114
  %117 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %118 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %117, i32 128)
  br label %141

119:                                              ; preds = %114
  %120 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %121 = load i32, i32* @UWB_RSV_STATE_NONE, align 4
  %122 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %120, i32 %121)
  br label %141

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %15, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.uwb_dev*, %struct.uwb_dev** %8, align 8
  %127 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @UWB_NUM_MAS, align 4
  %130 = call i32 @bitmap_complement(i32 %125, i32 %128, i32 %129)
  %131 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %132 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %133 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %10, align 8
  %134 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %135 = call i32 @uwb_drp_handle_conflict_rsv(%struct.uwb_rc* %131, %struct.uwb_rsv* %132, %struct.uwb_rc_evt_drp* %133, %struct.uwb_ie_drp* %134, %struct.uwb_mas_bm* %15)
  br label %141

136:                                              ; preds = %114
  %137 = load %struct.device*, %struct.device** %11, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @dev_warn(%struct.device* %137, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %123, %119, %116
  br label %142

142:                                              ; preds = %141, %113
  ret void
}

declare dso_local i32 @uwb_ie_drp_status(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_ie_drp_reason_code(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_drp_ie_to_bm(%struct.uwb_mas_bm*, %struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @bitmap_equal(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @bitmap_complement(i32, i32, i32) #1

declare dso_local i32 @uwb_drp_handle_conflict_rsv(%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_rc_evt_drp*, %struct.uwb_ie_drp*, %struct.uwb_mas_bm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
