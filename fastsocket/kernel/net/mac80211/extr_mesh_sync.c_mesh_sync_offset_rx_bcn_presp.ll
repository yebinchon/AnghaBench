; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_sync.c_mesh_sync_offset_rx_bcn_presp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_sync.c_mesh_sync_offset_rx_bcn_presp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_5__ }
%struct.ieee80211_local = type { i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i32, i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee802_11_elems = type { i64, i64 }
%struct.ieee80211_rx_status = type { i32 }
%struct.sta_info = type { i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }

@IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET = common dso_local global i64 0, align 8
@IEEE80211_STYPE_BEACON = common dso_local global i64 0, align 8
@WLAN_STA_TOFFSET_KNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"STA %pM : is adjusting TBTT\0A\00", align 1
@FCS_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"STA %pM : sta->t_offset=%lld, sta->t_offset_setpoint=%lld, t_clockdrift=%lld\0A\00", align 1
@TOFFSET_MAXIMUM_ADJUSTMENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"STA %pM : t_clockdrift=%lld too large, setpoint reset\0A\00", align 1
@TOFFSET_SET_MARGIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"STA %pM : offset was invalid, sta->t_offset=%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i64, %struct.ieee80211_mgmt*, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*)* @mesh_sync_offset_rx_bcn_presp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_sync_offset_rx_bcn_presp(%struct.ieee80211_sub_if_data* %0, i64 %1, %struct.ieee80211_mgmt* %2, %struct.ieee802_11_elems* %3, %struct.ieee80211_rx_status* %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca %struct.ieee802_11_elems*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca %struct.ieee80211_if_mesh*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %8, align 8
  store %struct.ieee802_11_elems* %3, %struct.ieee802_11_elems** %9, align 8
  store %struct.ieee80211_rx_status* %4, %struct.ieee80211_rx_status** %10, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %19, %struct.ieee80211_if_mesh** %11, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %21, align 8
  store %struct.ieee80211_local* %22, %struct.ieee80211_local** %12, align 8
  %23 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %24 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @IEEE80211_STYPE_BEACON, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %176

34:                                               ; preds = %5
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %37 = call i64 @drv_get_tsf(%struct.ieee80211_local* %35, %struct.ieee80211_sub_if_data* %36)
  store i64 %37, i64* %15, align 8
  %38 = call i32 (...) @rcu_read_lock()
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %40 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %39, i32 %42)
  store %struct.sta_info* %43, %struct.sta_info** %13, align 8
  %44 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %45 = icmp ne %struct.sta_info* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  br label %174

47:                                               ; preds = %34
  %48 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %49 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %54 = call i64 @mesh_peer_tbtt_adjusting(%struct.ieee802_11_elems* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %58 = load i32, i32* @WLAN_STA_TOFFSET_KNOWN, align 4
  %59 = call i32 @clear_sta_flag(%struct.sta_info* %57, i32 %58)
  %60 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %61 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @msync_dbg(%struct.ieee80211_sub_if_data* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %174

66:                                               ; preds = %52, %47
  %67 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %68 = call i64 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %72 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %73 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %74 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 36, %75
  %77 = load i64, i64* @FCS_LEN, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i64 @ieee80211_calculate_rx_timestamp(%struct.ieee80211_local* %71, %struct.ieee80211_rx_status* %72, i64 %78, i32 24)
  store i64 %79, i64* %15, align 8
  br label %80

80:                                               ; preds = %70, %66
  %81 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %82 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le64_to_cpu(i32 %85)
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %93 = load i32, i32* @WLAN_STA_TOFFSET_KNOWN, align 4
  %94 = call i64 @test_sta_flag(%struct.sta_info* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %153

96:                                               ; preds = %80
  %97 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %98 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %101 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  store i64 %103, i64* %16, align 8
  %104 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %105 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %106 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %110 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %113 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %16, align 8
  %116 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @msync_dbg(%struct.ieee80211_sub_if_data* %104, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %108, i64 %111, i64 %114, i64 %115)
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* @TOFFSET_MAXIMUM_ADJUSTMENT, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %96
  %121 = load i64, i64* %16, align 8
  %122 = load i64, i64* @TOFFSET_MAXIMUM_ADJUSTMENT, align 8
  %123 = sub nsw i64 0, %122
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %120, %96
  %126 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %127 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %128 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* %16, align 8
  %132 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @msync_dbg(%struct.ieee80211_sub_if_data* %126, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %130, i64 %131)
  %133 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %134 = load i32, i32* @WLAN_STA_TOFFSET_KNOWN, align 4
  %135 = call i32 @clear_sta_flag(%struct.sta_info* %133, i32 %134)
  br label %174

136:                                              ; preds = %120
  %137 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %138 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %137, i32 0, i32 1
  %139 = call i32 @spin_lock_bh(i32* %138)
  %140 = load i64, i64* %16, align 8
  %141 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %142 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %140, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load i64, i64* %16, align 8
  %147 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %148 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %136
  %150 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %151 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %150, i32 0, i32 1
  %152 = call i32 @spin_unlock_bh(i32* %151)
  br label %173

153:                                              ; preds = %80
  %154 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %155 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TOFFSET_SET_MARGIN, align 8
  %158 = sub nsw i64 %156, %157
  %159 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %160 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  %161 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %162 = load i32, i32* @WLAN_STA_TOFFSET_KNOWN, align 4
  %163 = call i32 @set_sta_flag(%struct.sta_info* %161, i32 %162)
  %164 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %165 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %166 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %170 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @msync_dbg(%struct.ieee80211_sub_if_data* %164, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %168, i64 %171)
  br label %173

173:                                              ; preds = %153, %149
  br label %174

174:                                              ; preds = %173, %125, %56, %46
  %175 = call i32 (...) @rcu_read_unlock()
  br label %176

176:                                              ; preds = %174, %33
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @drv_get_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i64 @mesh_peer_tbtt_adjusting(%struct.ieee802_11_elems*) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @msync_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, ...) #1

declare dso_local i64 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status*) #1

declare dso_local i64 @ieee80211_calculate_rx_timestamp(%struct.ieee80211_local*, %struct.ieee80211_rx_status*, i64, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
