; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_mesh_rx_path_sel_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_mesh_rx_path_sel_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ieee802_11_elems = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.sta_info = type { i64 }

@IEEE80211_MIN_ACTION_SIZE = common dso_local global i32 0, align 4
@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@MPATH_PREQ = common dso_local global i32 0, align 4
@MPATH_PREP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_rx_path_sel_frame(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee802_11_elems, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @IEEE80211_MIN_ACTION_SIZE, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %137

17:                                               ; preds = %3
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %20 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %19, i32 %22)
  store %struct.sta_info* %23, %struct.sta_info** %10, align 8
  %24 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %25 = icmp ne %struct.sta_info* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %17
  %33 = call i32 (...) @rcu_read_unlock()
  br label %137

34:                                               ; preds = %26
  %35 = call i32 (...) @rcu_read_unlock()
  %36 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %45 = bitcast %struct.ieee80211_mgmt* %44 to i32*
  %46 = ptrtoint i32* %43 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  store i64 %49, i64* %8, align 8
  %50 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %8, align 8
  %59 = sub i64 %57, %58
  %60 = call i32 @ieee802_11_parse_elems(i64 %56, i64 %59, i32 0, %struct.ieee802_11_elems* %7)
  %61 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %34
  %65 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 37
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %137

69:                                               ; preds = %64
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %71 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %72 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @MPATH_PREQ, align 4
  %75 = call i64 @hwmp_route_info_get(%struct.ieee80211_sub_if_data* %70, %struct.ieee80211_mgmt* %71, i64 %73, i32 %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %80 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %81 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @hwmp_preq_frame_process(%struct.ieee80211_sub_if_data* %79, %struct.ieee80211_mgmt* %80, i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %78, %69
  br label %86

86:                                               ; preds = %85, %34
  %87 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 31
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %137

95:                                               ; preds = %90
  %96 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %97 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %98 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @MPATH_PREP, align 4
  %101 = call i64 @hwmp_route_info_get(%struct.ieee80211_sub_if_data* %96, %struct.ieee80211_mgmt* %97, i64 %99, i32 %100)
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %106 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %107 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @hwmp_prep_frame_process(%struct.ieee80211_sub_if_data* %105, %struct.ieee80211_mgmt* %106, i64 %108, i64 %109)
  br label %111

111:                                              ; preds = %104, %95
  br label %112

112:                                              ; preds = %111, %86
  %113 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 15
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %137

121:                                              ; preds = %116
  %122 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %123 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %124 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @hwmp_perr_frame_process(%struct.ieee80211_sub_if_data* %122, %struct.ieee80211_mgmt* %123, i64 %125)
  br label %127

127:                                              ; preds = %121, %112
  %128 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %133 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %134 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @hwmp_rann_frame_process(%struct.ieee80211_sub_if_data* %132, %struct.ieee80211_mgmt* %133, i64 %135)
  br label %137

137:                                              ; preds = %16, %32, %68, %94, %120, %131, %127
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee802_11_parse_elems(i64, i64, i32, %struct.ieee802_11_elems*) #1

declare dso_local i64 @hwmp_route_info_get(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, i32) #1

declare dso_local i32 @hwmp_preq_frame_process(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, i64) #1

declare dso_local i32 @hwmp_prep_frame_process(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, i64) #1

declare dso_local i32 @hwmp_perr_frame_process(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64) #1

declare dso_local i32 @hwmp_rann_frame_process(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
