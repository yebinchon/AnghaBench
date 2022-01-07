; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_prep_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_prep_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, i32, %struct.TYPE_7__, %struct.ieee80211_local* }
%struct.TYPE_7__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32 }
%struct.ieee80211_local = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.cfg80211_bss = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.ieee80211_ht_operation = type { i32 }
%struct.ieee80211_vht_operation = type { i32 }
%struct.cfg80211_chan_def = type { i64 }

@IEEE80211_STA_DISABLE_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_80P80MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@WLAN_EID_VHT_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"AP advertised VHT without HT, disabling both\0A\00", align 1
@WLAN_EID_VHT_CAPABILITY = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_SHARED = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*)* @ieee80211_prep_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_prep_channel(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_bss* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.cfg80211_bss*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_if_managed*, align 8
  %7 = alloca %struct.ieee80211_ht_operation*, align 8
  %8 = alloca %struct.ieee80211_vht_operation*, align 8
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca %struct.cfg80211_chan_def, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %4, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 3
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %5, align 8
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.ieee80211_if_managed* %21, %struct.ieee80211_if_managed** %6, align 8
  store %struct.ieee80211_ht_operation* null, %struct.ieee80211_ht_operation** %7, align 8
  store %struct.ieee80211_vht_operation* null, %struct.ieee80211_vht_operation** %8, align 8
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %26, align 8
  %28 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %27, i64 %32
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %33, align 8
  store %struct.ieee80211_supported_band* %34, %struct.ieee80211_supported_band** %9, align 8
  %35 = load i32, i32* @IEEE80211_STA_DISABLE_40MHZ, align 4
  %36 = load i32, i32* @IEEE80211_STA_DISABLE_80P80MHZ, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IEEE80211_STA_DISABLE_160MHZ, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = call i32 (...) @rcu_read_lock()
  %46 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %94, label %52

52:                                               ; preds = %2
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %52
  %59 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %60 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %61 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %59, i32 %60)
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp uge i64 %68, 4
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = bitcast i32* %72 to i8*
  %74 = bitcast i8* %73 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %74, %struct.ieee80211_ht_operation** %7, align 8
  br label %75

75:                                               ; preds = %70, %64, %58
  %76 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %77 = load i32, i32* @WLAN_EID_HT_CAPABILITY, align 4
  %78 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %76, i32 %77)
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32*, i32** %13, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %85, 4
  br i1 %86, label %87, label %93

87:                                               ; preds = %81, %75
  %88 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %89 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  store %struct.ieee80211_ht_operation* null, %struct.ieee80211_ht_operation** %7, align 8
  br label %93

93:                                               ; preds = %87, %81
  br label %94

94:                                               ; preds = %93, %52, %2
  %95 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %162, label %101

101:                                              ; preds = %94
  %102 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %103 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %162

107:                                              ; preds = %101
  %108 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %109 = load i32, i32* @WLAN_EID_VHT_OPERATION, align 4
  %110 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %108, i32 %109)
  store i32* %110, i32** %14, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load i32*, i32** %14, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp uge i64 %117, 4
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = bitcast i32* %121 to i8*
  %123 = bitcast i8* %122 to %struct.ieee80211_vht_operation*
  store %struct.ieee80211_vht_operation* %123, %struct.ieee80211_vht_operation** %8, align 8
  br label %124

124:                                              ; preds = %119, %113, %107
  %125 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %8, align 8
  %126 = icmp ne %struct.ieee80211_vht_operation* %125, null
  br i1 %126, label %127, label %143

127:                                              ; preds = %124
  %128 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %7, align 8
  %129 = icmp ne %struct.ieee80211_ht_operation* %128, null
  br i1 %129, label %143, label %130

130:                                              ; preds = %127
  store %struct.ieee80211_vht_operation* null, %struct.ieee80211_vht_operation** %8, align 8
  %131 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %132 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %131, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %133 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %134 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %135 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %139 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %140 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %130, %127, %124
  %144 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %145 = load i32, i32* @WLAN_EID_VHT_CAPABILITY, align 4
  %146 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %144, i32 %145)
  store i32* %146, i32** %15, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load i32*, i32** %15, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = icmp ult i64 %153, 4
  br i1 %154, label %155, label %161

155:                                              ; preds = %149, %143
  %156 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %157 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %158 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  store %struct.ieee80211_vht_operation* null, %struct.ieee80211_vht_operation** %8, align 8
  br label %161

161:                                              ; preds = %155, %149
  br label %162

162:                                              ; preds = %161, %101, %94
  %163 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %164 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %165 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %166 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %7, align 8
  %169 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %8, align 8
  %170 = call i32 @ieee80211_determine_chantype(%struct.ieee80211_sub_if_data* %163, %struct.ieee80211_supported_band* %164, %struct.TYPE_12__* %167, %struct.ieee80211_ht_operation* %168, %struct.ieee80211_vht_operation* %169, %struct.cfg80211_chan_def* %10, i32 0)
  %171 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %172 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %176 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %177 = call i32 @ieee80211_ht_vht_rx_chains(%struct.ieee80211_sub_if_data* %175, %struct.cfg80211_bss* %176)
  %178 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %179 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @min(i32 %177, i32 %180)
  %182 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %183 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = call i32 (...) @rcu_read_unlock()
  %185 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  %186 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %187 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %189 = load i32, i32* @IEEE80211_CHANCTX_SHARED, align 4
  %190 = call i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data* %188, %struct.cfg80211_chan_def* %10, i32 %189)
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %201, %162
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %198 = icmp ne i64 %196, %197
  br label %199

199:                                              ; preds = %194, %191
  %200 = phi i1 [ false, %191 ], [ %198, %194 ]
  br i1 %200, label %201, label %210

201:                                              ; preds = %199
  %202 = call i32 @chandef_downgrade(%struct.cfg80211_chan_def* %10)
  %203 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %204 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %208 = load i32, i32* @IEEE80211_CHANCTX_SHARED, align 4
  %209 = call i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data* %207, %struct.cfg80211_chan_def* %10, i32 %208)
  store i32 %209, i32* %11, align 4
  br label %191

210:                                              ; preds = %199
  %211 = load i32, i32* %11, align 4
  ret i32 %211
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss*, i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*) #1

declare dso_local i32 @ieee80211_determine_chantype(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, %struct.TYPE_12__*, %struct.ieee80211_ht_operation*, %struct.ieee80211_vht_operation*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ieee80211_ht_vht_rx_chains(%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @chandef_downgrade(%struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
