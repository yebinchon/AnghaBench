; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_main.c_ieee80211_alloc_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_main.c_ieee80211_alloc_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i8*, i8*, i64, %struct.wiphy* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wiphy = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.ieee80211_ops = type { i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_local = type { i32, %struct.ieee80211_hw, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211_ops* }

@NETDEV_ALIGN = common dso_local global i32 0, align 4
@mac80211_config_ops = common dso_local global i32 0, align 4
@ieee80211_default_mgmt_stypes = common dso_local global i32 0, align 4
@mac80211_wiphy_privid = common dso_local global i32 0, align 4
@WIPHY_FLAG_NETNS_OK = common dso_local global i32 0, align 4
@WIPHY_FLAG_4ADDR_AP = common dso_local global i32 0, align 4
@WIPHY_FLAG_4ADDR_STATION = common dso_local global i32 0, align 4
@WIPHY_FLAG_REPORTS_OBSS = common dso_local global i32 0, align 4
@WIPHY_FLAG_OFFCHAN_TX = common dso_local global i32 0, align 4
@extended_capabilities = common dso_local global i8* null, align 8
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@NL80211_FEATURE_SK_TX_STATUS = common dso_local global i32 0, align 4
@NL80211_FEATURE_SAE = common dso_local global i32 0, align 4
@NL80211_FEATURE_HT_IBSS = common dso_local global i32 0, align 4
@NL80211_FEATURE_VIF_TXPOWER = common dso_local global i32 0, align 4
@NL80211_FEATURE_USERSPACE_MPM = common dso_local global i32 0, align 4
@NL80211_FEATURE_LOW_PRIORITY_SCAN = common dso_local global i32 0, align 4
@NL80211_FEATURE_AP_SCAN = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@IEEE80211_MAX_AMPDU_BUF = common dso_local global i8* null, align 8
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_HAVE_MCS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_HAVE_GI = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_HAVE_BW = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_VHT_KNOWN_GI = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH = common dso_local global i32 0, align 4
@IEEE80211_DEFAULT_UAPSD_QUEUES = common dso_local global i32 0, align 4
@IEEE80211_DEFAULT_MAX_SP_LEN = common dso_local global i32 0, align 4
@IEEE80211_UNSET_POWER_LEVEL = common dso_local global i32 0, align 4
@mac80211_ht_capa_mod_mask = common dso_local global i32 0, align 4
@mac80211_vht_capa_mod_mask = common dso_local global i32 0, align 4
@ieee80211_scan_work = common dso_local global i32 0, align 4
@ieee80211_restart_work = common dso_local global i32 0, align 4
@ieee80211_dfs_radar_detected_work = common dso_local global i32 0, align 4
@ieee80211_reconfig_filter = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@ieee80211_dynamic_ps_enable_work = common dso_local global i32 0, align 4
@ieee80211_dynamic_ps_disable_work = common dso_local global i32 0, align 4
@ieee80211_dynamic_ps_timer = common dso_local global i32 0, align 4
@ieee80211_sched_scan_stopped_work = common dso_local global i32 0, align 4
@IEEE80211_MAX_QUEUES = common dso_local global i32 0, align 4
@ieee80211_tx_pending = common dso_local global i32 0, align 4
@ieee80211_tasklet_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i64 %0, %struct.ieee80211_ops* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211_ops*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.ieee80211_ops* %1, %struct.ieee80211_ops** %5, align 8
  %11 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %11, i32 0, i32 17
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %16, i32 0, i32 16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %40, %35, %30, %25, %20, %15, %2
  %47 = phi i1 [ true, %35 ], [ true, %30 ], [ true, %25 ], [ true, %20 ], [ true, %15 ], [ true, %2 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %3, align 8
  br label %425

52:                                               ; preds = %46
  %53 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %53, i32 0, i32 10
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ true, %57 ], [ %66, %62 ]
  br label %69

69:                                               ; preds = %67, %52
  %70 = phi i1 [ false, %52 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @WARN_ON(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %3, align 8
  br label %425

75:                                               ; preds = %69
  %76 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = add nsw i32 %82, %89
  %91 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = add nsw i32 %90, %97
  %99 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %100 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = add nsw i32 %98, %105
  %107 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %108 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = add nsw i32 %106, %113
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %75
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 5
  br label %120

120:                                              ; preds = %117, %75
  %121 = phi i1 [ false, %75 ], [ %119, %117 ]
  %122 = zext i1 %121 to i32
  %123 = call i64 @WARN_ON(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %3, align 8
  br label %425

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 5
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* @NETDEV_ALIGN, align 4
  %131 = call i32 @ALIGN(i32 216, i32 %130)
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %4, align 8
  %134 = add i64 %132, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call %struct.wiphy* @wiphy_new(i32* @mac80211_config_ops, i32 %136)
  store %struct.wiphy* %137, %struct.wiphy** %9, align 8
  %138 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %139 = icmp ne %struct.wiphy* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %126
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %3, align 8
  br label %425

141:                                              ; preds = %126
  %142 = load i32, i32* @ieee80211_default_mgmt_stypes, align 4
  %143 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %144 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %143, i32 0, i32 11
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @mac80211_wiphy_privid, align 4
  %146 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %147 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %146, i32 0, i32 10
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @WIPHY_FLAG_NETNS_OK, align 4
  %149 = load i32, i32* @WIPHY_FLAG_4ADDR_AP, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @WIPHY_FLAG_4ADDR_STATION, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @WIPHY_FLAG_REPORTS_OBSS, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @WIPHY_FLAG_OFFCHAN_TX, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %158 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i8*, i8** @extended_capabilities, align 8
  %162 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %163 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %162, i32 0, i32 9
  store i8* %161, i8** %163, align 8
  %164 = load i8*, i8** @extended_capabilities, align 8
  %165 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %166 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %165, i32 0, i32 8
  store i8* %164, i8** %166, align 8
  %167 = load i8*, i8** @extended_capabilities, align 8
  %168 = call i32 @ARRAY_SIZE(i8* %167)
  %169 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %170 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %172 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %141
  %176 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %177 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %178 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %141
  %182 = load i32, i32* @NL80211_FEATURE_SK_TX_STATUS, align 4
  %183 = load i32, i32* @NL80211_FEATURE_SAE, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @NL80211_FEATURE_HT_IBSS, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @NL80211_FEATURE_VIF_TXPOWER, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @NL80211_FEATURE_USERSPACE_MPM, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %192 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %196 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %181
  %200 = load i32, i32* @NL80211_FEATURE_LOW_PRIORITY_SCAN, align 4
  %201 = load i32, i32* @NL80211_FEATURE_AP_SCAN, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %204 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %199, %181
  %208 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %209 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %207
  %213 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %214 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %215 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %212, %207
  %219 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %220 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %219, i32 0, i32 2
  store i32 4, i32* %220, align 8
  %221 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %222 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %221)
  store %struct.ieee80211_local* %222, %struct.ieee80211_local** %6, align 8
  %223 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %224 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %225 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %225, i32 0, i32 12
  store %struct.wiphy* %223, %struct.wiphy** %226, align 8
  %227 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %228 = bitcast %struct.ieee80211_local* %227 to i8*
  %229 = load i32, i32* @NETDEV_ALIGN, align 4
  %230 = call i32 @ALIGN(i32 216, i32 %229)
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %228, i64 %231
  %233 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %234 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %234, i32 0, i32 0
  store i8* %232, i8** %235, align 8
  %236 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %5, align 8
  %237 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %238 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %237, i32 0, i32 30
  store %struct.ieee80211_ops* %236, %struct.ieee80211_ops** %238, align 8
  %239 = load i32, i32* %10, align 4
  %240 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %241 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %243 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %243, i32 0, i32 1
  store i32 1, i32* %244, align 8
  %245 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %246 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %246, i32 0, i32 2
  store i32 1, i32* %247, align 4
  %248 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %249 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %249, i32 0, i32 11
  store i64 0, i64* %250, align 8
  %251 = load i8*, i8** @IEEE80211_MAX_AMPDU_BUF, align 8
  %252 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %253 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %253, i32 0, i32 10
  store i8* %251, i8** %254, align 8
  %255 = load i8*, i8** @IEEE80211_MAX_AMPDU_BUF, align 8
  %256 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %257 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %257, i32 0, i32 9
  store i8* %255, i8** %258, align 8
  %259 = load i32, i32* @IEEE80211_INVAL_HW_QUEUE, align 4
  %260 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %261 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %261, i32 0, i32 8
  store i32 %259, i32* %262, align 8
  %263 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %264 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %267 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %267, i32 0, i32 7
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 1
  store i32 %265, i32* %269, align 4
  %270 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %271 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %274 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %274, i32 0, i32 7
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  store i32 %272, i32* %276, align 8
  %277 = load i32, i32* @IEEE80211_RADIOTAP_MCS_HAVE_MCS, align 4
  %278 = load i32, i32* @IEEE80211_RADIOTAP_MCS_HAVE_GI, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @IEEE80211_RADIOTAP_MCS_HAVE_BW, align 4
  %281 = or i32 %279, %280
  %282 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %283 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %283, i32 0, i32 3
  store i32 %281, i32* %284, align 8
  %285 = load i32, i32* @IEEE80211_RADIOTAP_VHT_KNOWN_GI, align 4
  %286 = load i32, i32* @IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH, align 4
  %287 = or i32 %285, %286
  %288 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %289 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %289, i32 0, i32 4
  store i32 %287, i32* %290, align 4
  %291 = load i32, i32* @IEEE80211_DEFAULT_UAPSD_QUEUES, align 4
  %292 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %293 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %293, i32 0, i32 6
  store i32 %291, i32* %294, align 4
  %295 = load i32, i32* @IEEE80211_DEFAULT_MAX_SP_LEN, align 4
  %296 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %297 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %297, i32 0, i32 5
  store i32 %295, i32* %298, align 8
  %299 = load i32, i32* @IEEE80211_UNSET_POWER_LEVEL, align 4
  %300 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %301 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %300, i32 0, i32 29
  store i32 %299, i32* %301, align 4
  %302 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %303 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %302, i32 0, i32 4
  store i32* @mac80211_ht_capa_mod_mask, i32** %303, align 8
  %304 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %305 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %304, i32 0, i32 3
  store i32* @mac80211_vht_capa_mod_mask, i32** %305, align 8
  %306 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %307 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %306, i32 0, i32 28
  %308 = call i32 @INIT_LIST_HEAD(i32* %307)
  %309 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %310 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %309, i32 0, i32 26
  %311 = call i32 @mutex_init(i32* %310)
  %312 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %313 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %312, i32 0, i32 25
  %314 = call i32 @mutex_init(i32* %313)
  %315 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %316 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %315, i32 0, i32 24
  %317 = call i32 @mutex_init(i32* %316)
  %318 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %319 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %318, i32 0, i32 23
  %320 = call i32 @spin_lock_init(i32* %319)
  %321 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %322 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %321, i32 0, i32 22
  %323 = call i32 @spin_lock_init(i32* %322)
  %324 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %325 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %324, i32 0, i32 21
  %326 = call i32 @spin_lock_init(i32* %325)
  %327 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %328 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %327, i32 0, i32 20
  %329 = call i32 @INIT_LIST_HEAD(i32* %328)
  %330 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %331 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %330, i32 0, i32 19
  %332 = call i32 @mutex_init(i32* %331)
  %333 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %334 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %333, i32 0, i32 18
  %335 = load i32, i32* @ieee80211_scan_work, align 4
  %336 = call i32 @INIT_DELAYED_WORK(i32* %334, i32 %335)
  %337 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %338 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %337, i32 0, i32 17
  %339 = load i32, i32* @ieee80211_restart_work, align 4
  %340 = call i32 @INIT_WORK(i32* %338, i32 %339)
  %341 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %342 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %341, i32 0, i32 16
  %343 = load i32, i32* @ieee80211_dfs_radar_detected_work, align 4
  %344 = call i32 @INIT_WORK(i32* %342, i32 %343)
  %345 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %346 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %345, i32 0, i32 15
  %347 = load i32, i32* @ieee80211_reconfig_filter, align 4
  %348 = call i32 @INIT_WORK(i32* %346, i32 %347)
  %349 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  %350 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %351 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %350, i32 0, i32 14
  store i32 %349, i32* %351, align 8
  %352 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %353 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %352, i32 0, i32 13
  %354 = load i32, i32* @ieee80211_dynamic_ps_enable_work, align 4
  %355 = call i32 @INIT_WORK(i32* %353, i32 %354)
  %356 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %357 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %356, i32 0, i32 12
  %358 = load i32, i32* @ieee80211_dynamic_ps_disable_work, align 4
  %359 = call i32 @INIT_WORK(i32* %357, i32 %358)
  %360 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %361 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %360, i32 0, i32 11
  %362 = load i32, i32* @ieee80211_dynamic_ps_timer, align 4
  %363 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %364 = ptrtoint %struct.ieee80211_local* %363 to i64
  %365 = call i32 @setup_timer(i32* %361, i32 %362, i64 %364)
  %366 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %367 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %366, i32 0, i32 10
  %368 = load i32, i32* @ieee80211_sched_scan_stopped_work, align 4
  %369 = call i32 @INIT_WORK(i32* %367, i32 %368)
  %370 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %371 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %370, i32 0, i32 9
  %372 = call i32 @spin_lock_init(i32* %371)
  %373 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %374 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %373, i32 0, i32 8
  %375 = call i32 @idr_init(i32* %374)
  %376 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %377 = call i32 @sta_info_init(%struct.ieee80211_local* %376)
  store i32 0, i32* %8, align 4
  br label %378

378:                                              ; preds = %397, %218
  %379 = load i32, i32* %8, align 4
  %380 = load i32, i32* @IEEE80211_MAX_QUEUES, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %400

382:                                              ; preds = %378
  %383 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %384 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %383, i32 0, i32 7
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %8, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = call i32 @skb_queue_head_init(i32* %388)
  %390 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %391 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %390, i32 0, i32 6
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %8, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = call i32 @atomic_set(i32* %395, i32 0)
  br label %397

397:                                              ; preds = %382
  %398 = load i32, i32* %8, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %8, align 4
  br label %378

400:                                              ; preds = %378
  %401 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %402 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %401, i32 0, i32 5
  %403 = load i32, i32* @ieee80211_tx_pending, align 4
  %404 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %405 = ptrtoint %struct.ieee80211_local* %404 to i64
  %406 = call i32 @tasklet_init(i32* %402, i32 %403, i64 %405)
  %407 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %408 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %407, i32 0, i32 4
  %409 = load i32, i32* @ieee80211_tasklet_handler, align 4
  %410 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %411 = ptrtoint %struct.ieee80211_local* %410 to i64
  %412 = call i32 @tasklet_init(i32* %408, i32 %409, i64 %411)
  %413 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %414 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %413, i32 0, i32 3
  %415 = call i32 @skb_queue_head_init(i32* %414)
  %416 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %417 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %416, i32 0, i32 2
  %418 = call i32 @skb_queue_head_init(i32* %417)
  %419 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %420 = call i32 @ieee80211_led_names(%struct.ieee80211_local* %419)
  %421 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %422 = call i32 @ieee80211_roc_setup(%struct.ieee80211_local* %421)
  %423 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %424 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %423, i32 0, i32 1
  store %struct.ieee80211_hw* %424, %struct.ieee80211_hw** %3, align 8
  br label %425

425:                                              ; preds = %400, %140, %125, %74, %51
  %426 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  ret %struct.ieee80211_hw* %426
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.wiphy* @wiphy_new(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @sta_info_init(%struct.ieee80211_local*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @ieee80211_led_names(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_roc_setup(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
