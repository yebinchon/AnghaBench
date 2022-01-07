; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_prep_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_prep_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_14__, i32, %struct.TYPE_8__, %struct.ieee80211_local* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_8__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.cfg80211_bss = type { i32, i32, i32, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.ieee80211_bss = type { i32, i32, i32, i32 }
%struct.sta_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8** }
%struct.cfg80211_bss_ies = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No basic rates, using min rate instead\0A\00", align 1
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_SDATA_OPERATING_GMODE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@IEEE80211_HW_TIMING_BEACON_ONLY = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to insert STA entry for the AP (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*, i32)* @ieee80211_prep_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_prep_connection(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_bss* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.cfg80211_bss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_if_managed*, align 8
  %10 = alloca %struct.ieee80211_bss*, align 8
  %11 = alloca %struct.sta_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211_supported_band*, align 8
  %20 = alloca %struct.cfg80211_bss_ies*, align 8
  %21 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 3
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  store %struct.ieee80211_local* %24, %struct.ieee80211_local** %8, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.ieee80211_if_managed* %27, %struct.ieee80211_if_managed** %9, align 8
  %28 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %29 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.ieee80211_bss*
  store %struct.ieee80211_bss* %32, %struct.ieee80211_bss** %10, align 8
  store %struct.sta_info* null, %struct.sta_info** %11, align 8
  store i32 0, i32* %12, align 4
  %33 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %34 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %3
  %38 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %3
  %44 = phi i1 [ false, %3 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %316

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = call i32 (...) @rcu_read_lock()
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %57 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %58 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @sta_info_get(%struct.ieee80211_sub_if_data* %56, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = call i32 (...) @rcu_read_unlock()
  br label %62

62:                                               ; preds = %54, %51
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %67 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %68 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data* %66, i32 %69, i32 %70)
  store %struct.sta_info* %71, %struct.sta_info** %11, align 8
  %72 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %73 = icmp ne %struct.sta_info* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %316

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %80 = icmp ne %struct.sta_info* %79, null
  br i1 %80, label %81, label %303

81:                                               ; preds = %78
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %82 = load i32, i32* @INT_MAX, align 4
  store i32 %82, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %83 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %84 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %87, align 8
  %89 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %90 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %89, i32 0, i32 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %88, i64 %93
  %95 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %94, align 8
  store %struct.ieee80211_supported_band* %95, %struct.ieee80211_supported_band** %19, align 8
  %96 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %97 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %98 = call i32 @ieee80211_prep_channel(%struct.ieee80211_sub_if_data* %96, %struct.cfg80211_bss* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %81
  %102 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %103 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %104 = call i32 @sta_info_free(%struct.ieee80211_local* %102, %struct.sta_info* %103)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %4, align 4
  br label %316

106:                                              ; preds = %81
  %107 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %108 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %10, align 8
  %109 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %10, align 8
  %112 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ieee80211_get_rates(%struct.ieee80211_supported_band* %107, i32 %110, i32 %113, i8** %14, i8** %15, i32* %16, i32* %17, i32* %18)
  %115 = load i8*, i8** %15, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %18, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %122 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* %18, align 4
  %124 = call i8* @BIT(i32 %123)
  store i8* %124, i8** %15, align 8
  br label %125

125:                                              ; preds = %120, %117, %106
  %126 = load i8*, i8** %14, align 8
  %127 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %128 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %132 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %131, i32 0, i32 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i8*, i8** %130, i64 %135
  store i8* %126, i8** %136, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %139 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 4
  store i8* %137, i8** %141, align 8
  %142 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %143 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %142, i32 0, i32 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %125
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %154 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %155 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %165

158:                                              ; preds = %149, %125
  %159 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %162 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %158, %152
  %166 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %167 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %170 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @ETH_ALEN, align 4
  %173 = call i32 @memcpy(i32 %168, i32 %171, i32 %172)
  %174 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %175 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %178 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 3
  store i32 %176, i32* %180, align 4
  %181 = call i32 (...) @rcu_read_lock()
  %182 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %183 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %184)
  store %struct.cfg80211_bss_ies* %185, %struct.cfg80211_bss_ies** %20, align 8
  %186 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %20, align 8
  %187 = icmp ne %struct.cfg80211_bss_ies* %186, null
  br i1 %187, label %188, label %232

188:                                              ; preds = %165
  %189 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %20, align 8
  %190 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %193 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 2
  store i32 %191, i32* %195, align 8
  %196 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %10, align 8
  %197 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %200 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  store i32 %198, i32* %202, align 4
  %203 = load i32, i32* @WLAN_EID_TIM, align 4
  %204 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %20, align 8
  %205 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %20, align 8
  %208 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32* @cfg80211_find_ie(i32 %203, i32 %206, i32 %209)
  store i32* %210, i32** %21, align 8
  %211 = load i32*, i32** %21, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %226

213:                                              ; preds = %188
  %214 = load i32*, i32** %21, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp sge i32 %216, 2
  br i1 %217, label %218, label %226

218:                                              ; preds = %213
  %219 = load i32*, i32** %21, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %223 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  store i32 %221, i32* %225, align 8
  br label %231

226:                                              ; preds = %213, %188
  %227 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %228 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  store i32 0, i32* %230, align 8
  br label %231

231:                                              ; preds = %226, %218
  br label %277

232:                                              ; preds = %165
  %233 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %234 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @IEEE80211_HW_TIMING_BEACON_ONLY, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %263, label %240

240:                                              ; preds = %232
  %241 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %242 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %243)
  store %struct.cfg80211_bss_ies* %244, %struct.cfg80211_bss_ies** %20, align 8
  %245 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %20, align 8
  %246 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %249 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 2
  store i32 %247, i32* %251, align 8
  %252 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %10, align 8
  %253 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %256 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  store i32 %254, i32* %258, align 4
  %259 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %260 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  store i32 0, i32* %262, align 8
  br label %276

263:                                              ; preds = %232
  %264 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %265 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  store i32 0, i32* %267, align 8
  %268 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %269 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  store i32 0, i32* %271, align 4
  %272 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %273 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  store i32 0, i32* %275, align 8
  br label %276

276:                                              ; preds = %263, %240
  br label %277

277:                                              ; preds = %276, %231
  %278 = call i32 (...) @rcu_read_unlock()
  %279 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %280 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %281 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %279, i32 %284)
  %286 = load i32, i32* %7, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %277
  %289 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %290 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %291 = call i32 @sta_info_pre_move_state(%struct.sta_info* %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %277
  %293 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %294 = call i32 @sta_info_insert(%struct.sta_info* %293)
  store i32 %294, i32* %13, align 4
  store %struct.sta_info* null, %struct.sta_info** %11, align 8
  %295 = load i32, i32* %13, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %292
  %298 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %299 = load i32, i32* %13, align 4
  %300 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %298, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %299)
  %301 = load i32, i32* %13, align 4
  store i32 %301, i32* %4, align 4
  br label %316

302:                                              ; preds = %292
  br label %315

303:                                              ; preds = %78
  %304 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %305 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %308 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @ether_addr_equal(i32 %306, i32 %309)
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  %313 = zext i1 %312 to i32
  %314 = call i32 @WARN_ON_ONCE(i32 %313)
  br label %315

315:                                              ; preds = %303, %302
  store i32 0, i32* %4, align 4
  br label %316

316:                                              ; preds = %315, %297, %101, %74, %48
  %317 = load i32, i32* %4, align 4
  ret i32 %317
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @ieee80211_prep_channel(%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*) #1

declare dso_local i32 @sta_info_free(%struct.ieee80211_local*, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_get_rates(%struct.ieee80211_supported_band*, i32, i32, i8**, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local i8* @BIT(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local i32* @cfg80211_find_ie(i32, i32, i32) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @sta_info_pre_move_state(%struct.sta_info*, i32) #1

declare dso_local i32 @sta_info_insert(%struct.sta_info*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
