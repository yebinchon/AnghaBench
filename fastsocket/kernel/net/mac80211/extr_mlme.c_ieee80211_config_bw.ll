; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_config_bw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_config_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_15__, %struct.TYPE_9__, %struct.ieee80211_local* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }
%struct.TYPE_9__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.sta_info = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.ieee80211_ht_operation = type { i32 }
%struct.ieee80211_vht_operation = type { i32 }
%struct.cfg80211_chan_def = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_80P80MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_40MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"AP %pM changed bandwidth, new config is %d MHz, width %d (%d/%d MHz)\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"AP %pM changed bandwidth in a way we can't support - disconnect\0A\00", align 1
@IEEE80211_STA_RX_BW_20 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_40 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_80 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_160 = common dso_local global i32 0, align 4
@IEEE80211_RC_BW_CHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"AP %pM changed bandwidth to incompatible one - disconnect\0A\00", align 1
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.ieee80211_ht_operation*, %struct.ieee80211_vht_operation*, i32*, i32*)* @ieee80211_config_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_config_bw(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.ieee80211_ht_operation* %2, %struct.ieee80211_vht_operation* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.ieee80211_ht_operation*, align 8
  %11 = alloca %struct.ieee80211_vht_operation*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ieee80211_local*, align 8
  %15 = alloca %struct.ieee80211_if_managed*, align 8
  %16 = alloca %struct.ieee80211_supported_band*, align 8
  %17 = alloca %struct.ieee80211_channel*, align 8
  %18 = alloca %struct.cfg80211_chan_def, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %8, align 8
  store %struct.sta_info* %1, %struct.sta_info** %9, align 8
  store %struct.ieee80211_ht_operation* %2, %struct.ieee80211_ht_operation** %10, align 8
  store %struct.ieee80211_vht_operation* %3, %struct.ieee80211_vht_operation** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 2
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %24, align 8
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %14, align 8
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store %struct.ieee80211_if_managed* %28, %struct.ieee80211_if_managed** %15, align 8
  %29 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %30 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %6
  %36 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %10, align 8
  %37 = icmp ne %struct.ieee80211_ht_operation* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %6
  store i32 0, i32* %7, align 4
  br label %269

39:                                               ; preds = %35
  %40 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %41 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store %struct.ieee80211_vht_operation* null, %struct.ieee80211_vht_operation** %11, align 8
  br label %47

47:                                               ; preds = %46, %39
  %48 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %49 = icmp ne %struct.sta_info* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON_ONCE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %269

57:                                               ; preds = %47
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %62, align 8
  store %struct.ieee80211_channel* %63, %struct.ieee80211_channel** %17, align 8
  %64 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  %65 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %68, align 8
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %71 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %69, i64 %72
  %74 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %73, align 8
  store %struct.ieee80211_supported_band* %74, %struct.ieee80211_supported_band** %16, align 8
  %75 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %76 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %16, align 8
  %77 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %78 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %10, align 8
  %79 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %11, align 8
  %80 = call i32 @ieee80211_determine_chantype(%struct.ieee80211_sub_if_data* %75, %struct.ieee80211_supported_band* %76, %struct.ieee80211_channel* %77, %struct.ieee80211_ht_operation* %78, %struct.ieee80211_vht_operation* %79, %struct.cfg80211_chan_def* %18, i32 1)
  store i32 %80, i32* %20, align 4
  %81 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %82 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IEEE80211_STA_DISABLE_80P80MHZ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %57
  %88 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = call i32 @chandef_downgrade(%struct.cfg80211_chan_def* %18)
  %93 = load i32, i32* %20, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %20, align 4
  br label %95

95:                                               ; preds = %91, %87, %57
  %96 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %97 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IEEE80211_STA_DISABLE_160MHZ, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 133
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = call i32 @chandef_downgrade(%struct.cfg80211_chan_def* %18)
  %108 = load i32, i32* %20, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %20, align 4
  br label %110

110:                                              ; preds = %106, %102, %95
  %111 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %112 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IEEE80211_STA_DISABLE_40MHZ, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 132
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = call i32 @chandef_downgrade(%struct.cfg80211_chan_def* %18)
  %123 = load i32, i32* %20, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %20, align 4
  br label %125

125:                                              ; preds = %121, %117, %110
  %126 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %127 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = call i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def* %18, %struct.TYPE_16__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 0, i32* %7, align 4
  br label %269

133:                                              ; preds = %125
  %134 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %135 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %136 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 3
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %134, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %141, i32 %143, i32 %145, i32 %147)
  %149 = load i32, i32* %20, align 4
  %150 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %151 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %154 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @IEEE80211_STA_DISABLE_40MHZ, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @IEEE80211_STA_DISABLE_80P80MHZ, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @IEEE80211_STA_DISABLE_160MHZ, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %152, %161
  %163 = icmp ne i32 %149, %162
  br i1 %163, label %167, label %164

164:                                              ; preds = %133
  %165 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %18)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %164, %133
  %168 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %169 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %170 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %168, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %7, align 4
  br label %269

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %186 [
    i32 131, label %178
    i32 132, label %178
    i32 130, label %180
    i32 129, label %182
    i32 128, label %184
    i32 133, label %184
  ]

178:                                              ; preds = %175, %175
  %179 = load i32, i32* @IEEE80211_STA_RX_BW_20, align 4
  store i32 %179, i32* %21, align 4
  br label %189

180:                                              ; preds = %175
  %181 = load i32, i32* @IEEE80211_STA_RX_BW_40, align 4
  store i32 %181, i32* %21, align 4
  br label %189

182:                                              ; preds = %175
  %183 = load i32, i32* @IEEE80211_STA_RX_BW_80, align 4
  store i32 %183, i32* %21, align 4
  br label %189

184:                                              ; preds = %175, %175
  %185 = load i32, i32* @IEEE80211_STA_RX_BW_160, align 4
  store i32 %185, i32* %21, align 4
  br label %189

186:                                              ; preds = %175
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %7, align 4
  br label %269

189:                                              ; preds = %184, %182, %180, %178
  %190 = load i32, i32* %21, align 4
  %191 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %192 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ugt i32 %190, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %197 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %21, align 4
  br label %199

199:                                              ; preds = %195, %189
  %200 = load i32, i32* %21, align 4
  %201 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %202 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ult i32 %200, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %199
  %207 = load i32, i32* %21, align 4
  %208 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %209 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 4
  %211 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  %212 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %16, align 8
  %213 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %214 = load i32, i32* @IEEE80211_RC_BW_CHANGED, align 4
  %215 = call i32 @rate_control_rate_update(%struct.ieee80211_local* %211, %struct.ieee80211_supported_band* %212, %struct.sta_info* %213, i32 %214)
  br label %216

216:                                              ; preds = %206, %199
  %217 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %218 = load i32*, i32** %13, align 8
  %219 = call i32 @ieee80211_vif_change_bandwidth(%struct.ieee80211_sub_if_data* %217, %struct.cfg80211_chan_def* %18, i32* %218)
  store i32 %219, i32* %22, align 4
  %220 = load i32, i32* %22, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %216
  %223 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %224 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %225 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %223, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* %22, align 4
  store i32 %228, i32* %7, align 4
  br label %269

229:                                              ; preds = %216
  %230 = load i32, i32* %21, align 4
  %231 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %232 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp ugt i32 %230, %234
  br i1 %235, label %236, label %246

236:                                              ; preds = %229
  %237 = load i32, i32* %21, align 4
  %238 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %239 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 4
  %241 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  %242 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %16, align 8
  %243 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %244 = load i32, i32* @IEEE80211_RC_BW_CHANGED, align 4
  %245 = call i32 @rate_control_rate_update(%struct.ieee80211_local* %241, %struct.ieee80211_supported_band* %242, %struct.sta_info* %243, i32 %244)
  br label %246

246:                                              ; preds = %236, %229
  %247 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %10, align 8
  %248 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @le16_to_cpu(i32 %249)
  store i64 %250, i64* %19, align 8
  %251 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %252 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %19, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %268

258:                                              ; preds = %246
  %259 = load i32, i32* @BSS_CHANGED_HT, align 4
  %260 = load i32*, i32** %13, align 8
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %259
  store i32 %262, i32* %260, align 4
  %263 = load i64, i64* %19, align 8
  %264 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %265 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  store i64 %263, i64* %267, align 8
  br label %268

268:                                              ; preds = %258, %246
  store i32 0, i32* %7, align 4
  br label %269

269:                                              ; preds = %268, %222, %186, %167, %132, %54, %38
  %270 = load i32, i32* %7, align 4
  ret i32 %270
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_determine_chantype(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, %struct.ieee80211_channel*, %struct.ieee80211_ht_operation*, %struct.ieee80211_vht_operation*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @chandef_downgrade(%struct.cfg80211_chan_def*) #1

declare dso_local i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def*, %struct.TYPE_16__*) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, ...) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @rate_control_rate_update(%struct.ieee80211_local*, %struct.ieee80211_supported_band*, %struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_vif_change_bandwidth(%struct.ieee80211_sub_if_data*, %struct.cfg80211_chan_def*, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
