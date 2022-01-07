; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_determine_chantype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_determine_chantype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i64 }
%struct.ieee80211_supported_band = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_channel = type { i64, i32 }
%struct.ieee80211_ht_operation = type { i32, i32 }
%struct.ieee80211_vht_operation = type { i32, i32, i32 }
%struct.cfg80211_chan_def = type { i64, i64, i8*, %struct.ieee80211_channel* }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_HT = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_VHT = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [98 x i8] c"Wrong control channel: center-freq: %d ht-cfreq: %d ht->primary_chan: %d band: %d - Disabling HT\0A\00", align 1
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_OFFSET = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_40 = common dso_local global i8* null, align 8
@IEEE80211_STA_DISABLE_40MHZ = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_80 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_160 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_80P80 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"AP VHT operation IE has invalid channel width (%d), disable VHT\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"AP VHT information is invalid, disable VHT\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"AP VHT information doesn't match HT, disable VHT\0A\00", align 1
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [77 x i8] c"capabilities/regulatory prevented using AP HT/VHT configuration, downgraded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, %struct.ieee80211_channel*, %struct.ieee80211_ht_operation*, %struct.ieee80211_vht_operation*, %struct.cfg80211_chan_def*, i32)* @ieee80211_determine_chantype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee80211_determine_chantype(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_channel* %2, %struct.ieee80211_ht_operation* %3, %struct.ieee80211_vht_operation* %4, %struct.cfg80211_chan_def* %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca %struct.ieee80211_ht_operation*, align 8
  %12 = alloca %struct.ieee80211_vht_operation*, align 8
  %13 = alloca %struct.cfg80211_chan_def*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_if_managed*, align 8
  %16 = alloca %struct.cfg80211_chan_def, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %8, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %9, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %10, align 8
  store %struct.ieee80211_ht_operation* %3, %struct.ieee80211_ht_operation** %11, align 8
  store %struct.ieee80211_vht_operation* %4, %struct.ieee80211_vht_operation** %12, align 8
  store %struct.cfg80211_chan_def* %5, %struct.cfg80211_chan_def** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.ieee80211_if_managed* %21, %struct.ieee80211_if_managed** %15, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %23 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %24 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %23, i32 0, i32 3
  store %struct.ieee80211_channel* %22, %struct.ieee80211_channel** %24, align 8
  %25 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %26 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %27 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %32 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %34 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %33, i32 0, i32 2
  store i8* null, i8** %34, align 8
  %35 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %36 = icmp ne %struct.ieee80211_ht_operation* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %7
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37, %7
  %44 = load i64, i64* @IEEE80211_STA_DISABLE_HT, align 8
  %45 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %46 = or i64 %44, %45
  store i64 %46, i64* %18, align 8
  br label %225

47:                                               ; preds = %37
  %48 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %49 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %50 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %52 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @ieee80211_channel_to_frequency(i32 %53, i32 %56)
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %17, align 8
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %47
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %63 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %17, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %70 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %74 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %68, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i64 %71, i64 %72, i32 %75, i32 %78)
  %80 = load i64, i64* @IEEE80211_STA_DISABLE_HT, align 8
  %81 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %82 = or i64 %80, %81
  store i64 %82, i64* %18, align 8
  br label %225

83:                                               ; preds = %61, %47
  %84 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %85 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %83
  %92 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %93 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_OFFSET, align 4
  %96 = and i32 %94, %95
  switch i32 %96, label %115 [
    i32 133, label %97
    i32 132, label %106
  ]

97:                                               ; preds = %91
  %98 = load i8*, i8** @NL80211_CHAN_WIDTH_40, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %101 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %103 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 10
  store i64 %105, i64* %103, align 8
  br label %115

106:                                              ; preds = %91
  %107 = load i8*, i8** @NL80211_CHAN_WIDTH_40, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %110 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %112 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, 10
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %91, %106, %97
  br label %121

116:                                              ; preds = %83
  %117 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  store i64 %117, i64* %18, align 8
  %118 = load i64, i64* @IEEE80211_STA_DISABLE_40MHZ, align 8
  %119 = load i64, i64* %18, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %18, align 8
  br label %225

121:                                              ; preds = %115
  %122 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %12, align 8
  %123 = icmp ne %struct.ieee80211_vht_operation* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %126 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %124, %121
  %131 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  store i64 %131, i64* %18, align 8
  br label %225

132:                                              ; preds = %124
  %133 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %134 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 3
  store %struct.ieee80211_channel* %133, %struct.ieee80211_channel** %134, align 8
  %135 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %12, align 8
  %136 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %139 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @ieee80211_channel_to_frequency(i32 %137, i32 %140)
  %142 = ptrtoint i8* %141 to i64
  %143 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 1
  store i64 %142, i64* %143, align 8
  %144 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 2
  store i8* null, i8** %144, align 8
  %145 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %12, align 8
  %146 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %170 [
    i32 128, label %148
    i32 130, label %153
    i32 131, label %156
    i32 129, label %159
  ]

148:                                              ; preds = %132
  %149 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %150 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  br label %185

153:                                              ; preds = %132
  %154 = load i64, i64* @NL80211_CHAN_WIDTH_80, align 8
  %155 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 0
  store i64 %154, i64* %155, align 8
  br label %185

156:                                              ; preds = %132
  %157 = load i64, i64* @NL80211_CHAN_WIDTH_160, align 8
  %158 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 0
  store i64 %157, i64* %158, align 8
  br label %185

159:                                              ; preds = %132
  %160 = load i64, i64* @NL80211_CHAN_WIDTH_80P80, align 8
  %161 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 0
  store i64 %160, i64* %161, align 8
  %162 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %12, align 8
  %163 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %166 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i8* @ieee80211_channel_to_frequency(i32 %164, i32 %167)
  %169 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 2
  store i8* %168, i8** %169, align 8
  br label %185

170:                                              ; preds = %132
  %171 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %172 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %175 = and i64 %173, %174
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %170
  %178 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %179 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %12, align 8
  %180 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %178, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %177, %170
  %184 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  store i64 %184, i64* %18, align 8
  br label %225

185:                                              ; preds = %159, %156, %153, %148
  %186 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %16)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %200, label %188

188:                                              ; preds = %185
  %189 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %190 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %193 = and i64 %191, %192
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %188
  %196 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %197 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %196, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %198

198:                                              ; preds = %195, %188
  %199 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  store i64 %199, i64* %18, align 8
  br label %225

200:                                              ; preds = %185
  %201 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %202 = call i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def* %201, %struct.cfg80211_chan_def* %16)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store i64 0, i64* %18, align 8
  br label %225

205:                                              ; preds = %200
  %206 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %207 = call i32 @cfg80211_chandef_compatible(%struct.cfg80211_chan_def* %206, %struct.cfg80211_chan_def* %16)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %205
  %210 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %211 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %214 = and i64 %212, %213
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %209
  %217 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %218 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %217, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %209
  %220 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  store i64 %220, i64* %18, align 8
  br label %225

221:                                              ; preds = %205
  %222 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %223 = bitcast %struct.cfg80211_chan_def* %222 to i8*
  %224 = bitcast %struct.cfg80211_chan_def* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %223, i8* align 8 %224, i64 32, i1 false)
  store i64 0, i64* %18, align 8
  br label %225

225:                                              ; preds = %221, %219, %204, %198, %183, %130, %116, %67, %43
  %226 = load i64, i64* %18, align 8
  %227 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %228 = and i64 %226, %227
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %232 = bitcast %struct.cfg80211_chan_def* %16 to i8*
  %233 = bitcast %struct.cfg80211_chan_def* %231 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %232, i8* align 8 %233, i64 32, i1 false)
  br label %234

234:                                              ; preds = %230, %225
  br label %235

235:                                              ; preds = %266, %234
  %236 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %237 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %236, i32 0, i32 0
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %243 = load i32, i32* %14, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  br label %248

246:                                              ; preds = %235
  %247 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  br label %248

248:                                              ; preds = %246, %245
  %249 = phi i32 [ 0, %245 ], [ %247, %246 ]
  %250 = call i32 @cfg80211_chandef_usable(i32 %241, %struct.cfg80211_chan_def* %242, i32 %249)
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  br i1 %252, label %253, label %271

253:                                              ; preds = %248
  %254 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %255 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %258 = icmp eq i64 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i64 @WARN_ON(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %253
  %263 = load i64, i64* @IEEE80211_STA_DISABLE_HT, align 8
  %264 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %265 = or i64 %263, %264
  store i64 %265, i64* %18, align 8
  br label %271

266:                                              ; preds = %253
  %267 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %268 = call i64 @chandef_downgrade(%struct.cfg80211_chan_def* %267)
  %269 = load i64, i64* %18, align 8
  %270 = or i64 %269, %268
  store i64 %270, i64* %18, align 8
  br label %235

271:                                              ; preds = %262, %248
  %272 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %273 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %274, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %271
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %283 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %282, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  br label %284

284:                                              ; preds = %281, %278, %271
  %285 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %286 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %285)
  %287 = icmp ne i32 %286, 0
  %288 = xor i1 %287, true
  %289 = zext i1 %288 to i32
  %290 = call i32 @WARN_ON_ONCE(i32 %289)
  %291 = load i64, i64* %18, align 8
  ret i64 %291
}

declare dso_local i8* @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_compatible(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_chandef_usable(i32, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @chandef_downgrade(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
