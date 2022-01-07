; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_bcn_presp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_bcn_presp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.TYPE_7__, %struct.ieee80211_local* }
%struct.TYPE_10__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_mgmt*, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*)* }
%struct.ieee802_11_elems = type { i32*, i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_rx_status = type { i32, i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_STYPE_PROBE_RESP = common dso_local global i32 0, align 4
@IEEE80211_MESH_SEC_NONE = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_mgmt*, i64, %struct.ieee80211_rx_status*)* @ieee80211_mesh_rx_bcn_presp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_mesh_rx_bcn_presp(%struct.ieee80211_sub_if_data* %0, i32 %1, %struct.ieee80211_mgmt* %2, i64 %3, %struct.ieee80211_rx_status* %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.ieee80211_if_mesh*, align 8
  %13 = alloca %struct.ieee802_11_elems, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.ieee80211_rx_status* %4, %struct.ieee80211_rx_status** %10, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 2
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  store %struct.ieee80211_local* %20, %struct.ieee80211_local** %11, align 8
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %23, %struct.ieee80211_if_mesh** %12, align 8
  %24 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IEEE80211_STYPE_PROBE_RESP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %5
  %31 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ether_addr_equal(i32 %33, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %158

41:                                               ; preds = %30, %5
  %42 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %49 = bitcast %struct.ieee80211_mgmt* %48 to i32*
  %50 = ptrtoint i32* %47 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %158

58:                                               ; preds = %41
  %59 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %15, align 8
  %66 = sub i64 %64, %65
  %67 = call i32 @ieee802_11_parse_elems(i64 %63, i64 %66, i32 0, %struct.ieee802_11_elems* %13)
  %68 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IEEE80211_MESH_SEC_NONE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %79, %75
  %88 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  %92 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IEEE80211_MESH_SEC_NONE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91, %79, %71, %58
  br label %158

100:                                              ; preds = %91, %87
  %101 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @ieee80211_channel_to_frequency(i32 %108, i32 %109)
  store i32 %110, i32* %16, align 4
  br label %115

111:                                              ; preds = %100
  %112 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %111, %104
  %116 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %117 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %16, align 4
  %121 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %119, i32 %120)
  store %struct.ieee80211_channel* %121, %struct.ieee80211_channel** %14, align 8
  %122 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %123 = icmp ne %struct.ieee80211_channel* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %126 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124, %115
  br label %158

132:                                              ; preds = %124
  %133 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %134 = call i64 @mesh_matches_local(%struct.ieee80211_sub_if_data* %133, %struct.ieee802_11_elems* %13)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %138 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %139 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @mesh_neighbour_update(%struct.ieee80211_sub_if_data* %137, i32 %140, %struct.ieee802_11_elems* %13)
  br label %142

142:                                              ; preds = %136, %132
  %143 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %12, align 8
  %144 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = icmp ne %struct.TYPE_12__* %145, null
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %12, align 8
  %149 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32 (%struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_mgmt*, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*)*, i32 (%struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_mgmt*, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*)** %151, align 8
  %153 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %156 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %157 = call i32 %152(%struct.ieee80211_sub_if_data* %153, i32 %154, %struct.ieee80211_mgmt* %155, %struct.ieee802_11_elems* %13, %struct.ieee80211_rx_status* %156)
  br label %158

158:                                              ; preds = %40, %57, %99, %131, %147, %142
  ret void
}

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @ieee802_11_parse_elems(i64, i64, i32, %struct.ieee802_11_elems*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #1

declare dso_local i64 @mesh_matches_local(%struct.ieee80211_sub_if_data*, %struct.ieee802_11_elems*) #1

declare dso_local i32 @mesh_neighbour_update(%struct.ieee80211_sub_if_data*, i32, %struct.ieee802_11_elems*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
