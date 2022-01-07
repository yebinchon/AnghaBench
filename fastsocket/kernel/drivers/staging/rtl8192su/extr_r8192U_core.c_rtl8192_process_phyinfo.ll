; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_process_phyinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_process_phyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.r8192_priv = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64*, i64, i32*, i64*, i64, i64*, i64, i64, i64, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_rx_stats = type { i32, i64, i32*, i64, i64, i32*, i64, i64, i64, i64, i32, i32, i32 }
%struct.ieee80211_hdr_3addr = type { i32 }

@rtl8192_process_phyinfo.slide_rssi_index = internal global i64 0, align 8
@rtl8192_process_phyinfo.slide_rssi_statistics = internal global i64 0, align 8
@rtl8192_process_phyinfo.slide_evm_index = internal global i64 0, align 8
@rtl8192_process_phyinfo.slide_evm_statistics = internal global i64 0, align 8
@rtl8192_process_phyinfo.last_rssi = internal global i64 0, align 8
@rtl8192_process_phyinfo.last_evm = internal global i64 0, align 8
@rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index = internal global i64 0, align 8
@rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics = internal global i64 0, align 8
@rtl8192_process_phyinfo.last_beacon_adc_pwdb = internal global i64 0, align 8
@PHY_RSSI_SLID_WIN_MAX = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@Rx_Smooth_Factor = common dso_local global i32 0, align 4
@COMP_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"priv->stats.rx_rssi_percentage[rfPath]  = %d \0A\00", align 1
@COMP_RXDESC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Smooth %s PWDB = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CCK\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"OFDM\00", align 1
@PHY_Beacon_RSSI_SLID_WIN_MAX = common dso_local global i64 0, align 8
@pHalData = common dso_local global %struct.TYPE_10__* null, align 8
@pPreviousRfd = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_process_phyinfo(%struct.r8192_priv* %0, i64* %1, %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats* %3) #0 {
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ieee80211_rx_stats*, align 8
  %8 = alloca %struct.ieee80211_rx_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.r8192_priv* %0, %struct.r8192_priv** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats** %7, align 8
  store %struct.ieee80211_rx_stats* %3, %struct.ieee80211_rx_stats** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i64*, i64** %6, align 8
  %18 = bitcast i64* %17 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %18, %struct.ieee80211_hdr_3addr** %13, align 8
  %19 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %13, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @WLAN_GET_SEQ_FRAG(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @WLAN_GET_SEQ_SEQ(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %36

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_statistics, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* @rtl8192_process_phyinfo.slide_rssi_statistics, align 8
  %39 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %40 = icmp uge i64 %37, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  store i64 %42, i64* @rtl8192_process_phyinfo.slide_rssi_statistics, align 8
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* @rtl8192_process_phyinfo.last_rssi, align 8
  %50 = load i64, i64* @rtl8192_process_phyinfo.last_rssi, align 8
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, %50
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %41, %36
  %57 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %59
  store i64 %64, i64* %62, align 8
  %65 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  %74 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %67, i64* %74, align 8
  %75 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  %76 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %56
  store i64 0, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  br label %79

79:                                               ; preds = %78, %56
  %80 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_statistics, align 8
  %85 = udiv i64 %83, %84
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @rtl819x_translate_todbm(i64 %86)
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 11
  store i32 %87, i32* %90, align 4
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %96 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %95, i32 0, i32 11
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %79
  %102 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %103 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %597

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %79
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  br label %597

112:                                              ; preds = %108
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %267, label %122

122:                                              ; preds = %112
  %123 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %124 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %267

132:                                              ; preds = %127, %122
  %133 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %133, i64* %10, align 8
  br label %134

134:                                              ; preds = %263, %132
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %137 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %266

140:                                              ; preds = %134
  %141 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %142 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %141, i32 0, i32 3
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @rtl8192_phy_CheckIsLegalRFPath(i32 %145, i64 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %140
  br label %263

150:                                              ; preds = %140
  %151 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %152 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %150
  %160 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %161 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* %10, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %167 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %165, i32* %171, align 4
  br label %172

172:                                              ; preds = %159, %150
  %173 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %174 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %180 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* %10, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %178, %185
  br i1 %186, label %187, label %227

187:                                              ; preds = %172
  %188 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %189 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %10, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @Rx_Smooth_Factor, align 4
  %196 = sub nsw i32 %195, 1
  %197 = mul nsw i32 %194, %196
  %198 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %199 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %10, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %197, %203
  %205 = load i32, i32* @Rx_Smooth_Factor, align 4
  %206 = sdiv i32 %204, %205
  %207 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %208 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* %10, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32 %206, i32* %212, align 4
  %213 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %214 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* %10, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  %221 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %222 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* %10, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32 %220, i32* %226, align 4
  br label %253

227:                                              ; preds = %172
  %228 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %229 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* %10, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @Rx_Smooth_Factor, align 4
  %236 = sub nsw i32 %235, 1
  %237 = mul nsw i32 %234, %236
  %238 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %239 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* %10, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %237, %243
  %245 = load i32, i32* @Rx_Smooth_Factor, align 4
  %246 = sdiv i32 %244, %245
  %247 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %248 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* %10, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32 %246, i32* %252, align 4
  br label %253

253:                                              ; preds = %227, %187
  %254 = load i32, i32* @COMP_DBG, align 4
  %255 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %256 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* %10, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %254, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %253, %149
  %264 = load i64, i64* %10, align 8
  %265 = add i64 %264, 1
  store i64 %265, i64* %10, align 8
  br label %134

266:                                              ; preds = %134
  br label %267

267:                                              ; preds = %266, %127, %112
  %268 = load i32, i32* @COMP_RXDESC, align 4
  %269 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %270 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %269, i32 0, i32 9
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %275 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %276 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %268, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %274, i64 %277)
  %279 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %280 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %279, i32 0, i32 7
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %346

283:                                              ; preds = %267
  %284 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %286 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  %287 = icmp uge i64 %284, %286
  br i1 %287, label %288, label %303

288:                                              ; preds = %283
  %289 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  store i64 %289, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %290 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %291 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 3
  %293 = load i64*, i64** %292, align 8
  %294 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %295 = getelementptr inbounds i64, i64* %293, i64 %294
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* @rtl8192_process_phyinfo.last_beacon_adc_pwdb, align 8
  %297 = load i64, i64* @rtl8192_process_phyinfo.last_beacon_adc_pwdb, align 8
  %298 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %299 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = sub i64 %301, %297
  store i64 %302, i64* %300, align 8
  br label %303

303:                                              ; preds = %288, %283
  %304 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %305 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %308 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = add i64 %310, %306
  store i64 %311, i64* %309, align 8
  %312 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %313 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %316 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 3
  %318 = load i64*, i64** %317, align 8
  %319 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %320 = getelementptr inbounds i64, i64* %318, i64 %319
  store i64 %314, i64* %320, align 8
  %321 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %322 = add i64 %321, 1
  store i64 %322, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %323 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %324 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  %325 = icmp uge i64 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %303
  store i64 0, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  br label %327

327:                                              ; preds = %326, %303
  %328 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %329 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %333 = udiv i64 %331, %332
  %334 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %335 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %334, i32 0, i32 3
  store i64 %333, i64* %335, align 8
  %336 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %337 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = icmp uge i64 %338, 3
  br i1 %339, label %340, label %345

340:                                              ; preds = %327
  %341 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %342 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = sub i64 %343, 3
  store i64 %344, i64* %342, align 8
  br label %345

345:                                              ; preds = %340, %327
  br label %346

346:                                              ; preds = %345, %267
  %347 = load i32, i32* @COMP_RXDESC, align 4
  %348 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %349 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %348, i32 0, i32 9
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %354 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %355 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %354, i32 0, i32 3
  %356 = load i64, i64* %355, align 8
  %357 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %347, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %353, i64 %356)
  %358 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %359 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %358, i32 0, i32 8
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %372, label %362

362:                                              ; preds = %346
  %363 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %364 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %363, i32 0, i32 7
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %372, label %367

367:                                              ; preds = %362
  %368 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %369 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %368, i32 0, i32 6
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %436

372:                                              ; preds = %367, %362, %346
  %373 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %374 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %372
  %378 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %379 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = trunc i64 %380 to i32
  %382 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %383 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %382, i32 0, i32 1
  store i32 %381, i32* %383, align 8
  br label %384

384:                                              ; preds = %377, %372
  %385 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %386 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %385, i32 0, i32 3
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %389 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = sext i32 %390 to i64
  %392 = icmp ugt i64 %387, %391
  br i1 %392, label %393, label %417

393:                                              ; preds = %384
  %394 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %395 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @Rx_Smooth_Factor, align 4
  %398 = sub nsw i32 %397, 1
  %399 = mul nsw i32 %396, %398
  %400 = sext i32 %399 to i64
  %401 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %402 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %401, i32 0, i32 3
  %403 = load i64, i64* %402, align 8
  %404 = add i64 %400, %403
  %405 = load i32, i32* @Rx_Smooth_Factor, align 4
  %406 = sext i32 %405 to i64
  %407 = udiv i64 %404, %406
  %408 = trunc i64 %407 to i32
  %409 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %410 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %409, i32 0, i32 1
  store i32 %408, i32* %410, align 8
  %411 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %412 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %413, 1
  %415 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %416 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %415, i32 0, i32 1
  store i32 %414, i32* %416, align 8
  br label %435

417:                                              ; preds = %384
  %418 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %419 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @Rx_Smooth_Factor, align 4
  %422 = sub nsw i32 %421, 1
  %423 = mul nsw i32 %420, %422
  %424 = sext i32 %423 to i64
  %425 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %426 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %425, i32 0, i32 3
  %427 = load i64, i64* %426, align 8
  %428 = add i64 %424, %427
  %429 = load i32, i32* @Rx_Smooth_Factor, align 4
  %430 = sext i32 %429 to i64
  %431 = udiv i64 %428, %430
  %432 = trunc i64 %431 to i32
  %433 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %434 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %433, i32 0, i32 1
  store i32 %432, i32* %434, align 8
  br label %435

435:                                              ; preds = %417, %393
  br label %436

436:                                              ; preds = %435, %367
  %437 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %438 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %437, i32 0, i32 4
  %439 = load i64, i64* %438, align 8
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %436
  br label %597

442:                                              ; preds = %436
  %443 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %444 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %443, i32 0, i32 8
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %457, label %447

447:                                              ; preds = %442
  %448 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %449 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %448, i32 0, i32 7
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %457, label %452

452:                                              ; preds = %447
  %453 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %454 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %453, i32 0, i32 6
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %515

457:                                              ; preds = %452, %447, %442
  %458 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %459 = add i64 %458, 1
  store i64 %459, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %460 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %461 = icmp uge i64 %458, %460
  br i1 %461, label %462, label %477

462:                                              ; preds = %457
  %463 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  store i64 %463, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %464 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %465 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %465, i32 0, i32 5
  %467 = load i64*, i64** %466, align 8
  %468 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %469 = getelementptr inbounds i64, i64* %467, i64 %468
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* @rtl8192_process_phyinfo.last_evm, align 8
  %471 = load i64, i64* @rtl8192_process_phyinfo.last_evm, align 8
  %472 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %473 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %473, i32 0, i32 6
  %475 = load i64, i64* %474, align 8
  %476 = sub i64 %475, %471
  store i64 %476, i64* %474, align 8
  br label %477

477:                                              ; preds = %462, %457
  %478 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %479 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %478, i32 0, i32 4
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %482 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %481, i32 0, i32 2
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 6
  %484 = load i64, i64* %483, align 8
  %485 = add i64 %484, %480
  store i64 %485, i64* %483, align 8
  %486 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %487 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %486, i32 0, i32 4
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %490 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %489, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 5
  %492 = load i64*, i64** %491, align 8
  %493 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %494 = add i64 %493, 1
  store i64 %494, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %495 = getelementptr inbounds i64, i64* %492, i64 %493
  store i64 %488, i64* %495, align 8
  %496 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %497 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %498 = icmp uge i64 %496, %497
  br i1 %498, label %499, label %500

499:                                              ; preds = %477
  store i64 0, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  br label %500

500:                                              ; preds = %499, %477
  %501 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %502 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %501, i32 0, i32 2
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 6
  %504 = load i64, i64* %503, align 8
  %505 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %506 = udiv i64 %504, %505
  store i64 %506, i64* %12, align 8
  %507 = load i64, i64* %12, align 8
  %508 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %509 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %509, i32 0, i32 7
  store i64 %507, i64* %510, align 8
  %511 = load i64, i64* %12, align 8
  %512 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %513 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 8
  store i64 %511, i64* %514, align 8
  br label %515

515:                                              ; preds = %500, %452
  %516 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %517 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %516, i32 0, i32 8
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %530, label %520

520:                                              ; preds = %515
  %521 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %522 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %521, i32 0, i32 7
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %530, label %525

525:                                              ; preds = %520
  %526 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %527 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %526, i32 0, i32 6
  %528 = load i64, i64* %527, align 8
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %596

530:                                              ; preds = %525, %520, %515
  store i64 0, i64* %11, align 8
  br label %531

531:                                              ; preds = %592, %530
  %532 = load i64, i64* %11, align 8
  %533 = icmp ult i64 %532, 2
  br i1 %533, label %534, label %595

534:                                              ; preds = %531
  %535 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %536 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %535, i32 0, i32 5
  %537 = load i32*, i32** %536, align 8
  %538 = load i64, i64* %11, align 8
  %539 = getelementptr inbounds i32, i32* %537, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = icmp ne i32 %540, -1
  br i1 %541, label %542, label %591

542:                                              ; preds = %534
  %543 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %544 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %544, i32 0, i32 9
  %546 = load i32*, i32** %545, align 8
  %547 = load i64, i64* %11, align 8
  %548 = getelementptr inbounds i32, i32* %546, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %564

551:                                              ; preds = %542
  %552 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %553 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %552, i32 0, i32 5
  %554 = load i32*, i32** %553, align 8
  %555 = load i64, i64* %11, align 8
  %556 = getelementptr inbounds i32, i32* %554, i64 %555
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %559 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %559, i32 0, i32 9
  %561 = load i32*, i32** %560, align 8
  %562 = load i64, i64* %11, align 8
  %563 = getelementptr inbounds i32, i32* %561, i64 %562
  store i32 %557, i32* %563, align 4
  br label %564

564:                                              ; preds = %551, %542
  %565 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %566 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %565, i32 0, i32 2
  %567 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %566, i32 0, i32 9
  %568 = load i32*, i32** %567, align 8
  %569 = load i64, i64* %11, align 8
  %570 = getelementptr inbounds i32, i32* %568, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* @Rx_Smooth_Factor, align 4
  %573 = sub nsw i32 %572, 1
  %574 = mul nsw i32 %571, %573
  %575 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %576 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %575, i32 0, i32 5
  %577 = load i32*, i32** %576, align 8
  %578 = load i64, i64* %11, align 8
  %579 = getelementptr inbounds i32, i32* %577, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = mul nsw i32 %580, 1
  %582 = add nsw i32 %574, %581
  %583 = load i32, i32* @Rx_Smooth_Factor, align 4
  %584 = sdiv i32 %582, %583
  %585 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %586 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %585, i32 0, i32 2
  %587 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %586, i32 0, i32 9
  %588 = load i32*, i32** %587, align 8
  %589 = load i64, i64* %11, align 8
  %590 = getelementptr inbounds i32, i32* %588, i64 %589
  store i32 %584, i32* %590, align 4
  br label %591

591:                                              ; preds = %564, %534
  br label %592

592:                                              ; preds = %591
  %593 = load i64, i64* %11, align 8
  %594 = add i64 %593, 1
  store i64 %594, i64* %11, align 8
  br label %531

595:                                              ; preds = %531
  br label %596

596:                                              ; preds = %595, %525
  br label %597

597:                                              ; preds = %106, %111, %596, %441
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WLAN_GET_SEQ_FRAG(i32) #1

declare dso_local i32 @WLAN_GET_SEQ_SEQ(i32) #1

declare dso_local i32 @rtl819x_translate_todbm(i64) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(i32, i64) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
