; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_process_phyinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_process_phyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.r8192_priv = type { i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64*, i64, i32*, i64*, i64, i64*, i64, i64, i64, i32*, i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_rx_stats = type { i32, i64, i32*, i64, i64, i32*, i64, i64, i64, i64, i32, i8*, i64, i32 }
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
@RF90_PATH_C = common dso_local global i64 0, align 8
@COMP_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Jacken -> pPreviousstats->RxMIMOSignalStrength[rfpath]  = %d \0A\00", align 1
@Rx_Smooth_Factor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Jacken -> priv->RxStats.RxRSSIPercentage[rfPath]  = %d \0A\00", align 1
@PHY_Beacon_RSSI_SLID_WIN_MAX = common dso_local global i64 0, align 8
@COMP_RXDESC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Smooth %s PWDB = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CCK\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OFDM\00", align 1
@pHalData = common dso_local global %struct.TYPE_10__* null, align 8
@pPreviousRfd = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8192_priv*, i64*, %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats*)* @rtl8192_process_phyinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_process_phyinfo(%struct.r8192_priv* %0, i64* %1, %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats* %3) #0 {
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
  %31 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %30, i32 0, i32 13
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
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* @rtl8192_process_phyinfo.last_rssi, align 8
  %50 = load i64, i64* @rtl8192_process_phyinfo.last_rssi, align 8
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 1
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
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %59
  store i64 %64, i64* %62, align 8
  %65 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 1
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
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_statistics, align 8
  %85 = udiv i64 %83, %84
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i8* @rtl819x_translate_todbm(i64 %86)
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 10
  store i8* %87, i8** %90, align 8
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 10
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %96 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %95, i32 0, i32 11
  store i8* %94, i8** %96, align 8
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
  br label %593

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %79
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  br label %593

112:                                              ; preds = %108
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %114 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %115 = call i32 @rtl8190_process_cck_rxpathsel(%struct.r8192_priv* %113, %struct.ieee80211_rx_stats* %114)
  %116 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %117 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %271, label %125

125:                                              ; preds = %112
  %126 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %271

130:                                              ; preds = %125
  %131 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %131, i64* %10, align 8
  br label %132

132:                                              ; preds = %267, %130
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* @RF90_PATH_C, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %270

136:                                              ; preds = %132
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 2
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @rtl8192_phy_CheckIsLegalRFPath(i32 %141, i64 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  br label %267

146:                                              ; preds = %136
  %147 = load i32, i32* @COMP_DBG, align 4
  %148 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %149 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %147, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %153)
  %155 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %156 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %10, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %146
  %164 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %165 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* %10, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %171 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* %10, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32 %169, i32* %175, align 4
  br label %176

176:                                              ; preds = %163, %146
  %177 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %178 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %10, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %184 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %10, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp sgt i32 %182, %189
  br i1 %190, label %191, label %231

191:                                              ; preds = %176
  %192 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %193 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* %10, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @Rx_Smooth_Factor, align 4
  %200 = sub nsw i32 %199, 1
  %201 = mul nsw i32 %198, %200
  %202 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %203 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* %10, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %201, %207
  %209 = load i32, i32* @Rx_Smooth_Factor, align 4
  %210 = sdiv i32 %208, %209
  %211 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %212 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* %10, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 %210, i32* %216, align 4
  %217 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %218 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* %10, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  %225 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %226 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* %10, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32 %224, i32* %230, align 4
  br label %257

231:                                              ; preds = %176
  %232 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %233 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* %10, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @Rx_Smooth_Factor, align 4
  %240 = sub nsw i32 %239, 1
  %241 = mul nsw i32 %238, %240
  %242 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %243 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* %10, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %241, %247
  %249 = load i32, i32* @Rx_Smooth_Factor, align 4
  %250 = sdiv i32 %248, %249
  %251 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %252 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* %10, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  store i32 %250, i32* %256, align 4
  br label %257

257:                                              ; preds = %231, %191
  %258 = load i32, i32* @COMP_DBG, align 4
  %259 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %260 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* %10, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %258, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %257, %145
  %268 = load i64, i64* %10, align 8
  %269 = add i64 %268, 1
  store i64 %269, i64* %10, align 8
  br label %132

270:                                              ; preds = %132
  br label %271

271:                                              ; preds = %270, %125, %112
  %272 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %273 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %272, i32 0, i32 7
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %339

276:                                              ; preds = %271
  %277 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %279 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  %280 = icmp uge i64 %277, %279
  br i1 %280, label %281, label %296

281:                                              ; preds = %276
  %282 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  store i64 %282, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %283 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %284 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 3
  %286 = load i64*, i64** %285, align 8
  %287 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %288 = getelementptr inbounds i64, i64* %286, i64 %287
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* @rtl8192_process_phyinfo.last_beacon_adc_pwdb, align 8
  %290 = load i64, i64* @rtl8192_process_phyinfo.last_beacon_adc_pwdb, align 8
  %291 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %292 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = sub i64 %294, %290
  store i64 %295, i64* %293, align 8
  br label %296

296:                                              ; preds = %281, %276
  %297 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %298 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %301 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = add i64 %303, %299
  store i64 %304, i64* %302, align 8
  %305 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %306 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %309 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 3
  %311 = load i64*, i64** %310, align 8
  %312 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %313 = getelementptr inbounds i64, i64* %311, i64 %312
  store i64 %307, i64* %313, align 8
  %314 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %316 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %317 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  %318 = icmp uge i64 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %296
  store i64 0, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  br label %320

320:                                              ; preds = %319, %296
  %321 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %322 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 4
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %326 = udiv i64 %324, %325
  %327 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %328 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %327, i32 0, i32 3
  store i64 %326, i64* %328, align 8
  %329 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %330 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = icmp uge i64 %331, 3
  br i1 %332, label %333, label %338

333:                                              ; preds = %320
  %334 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %335 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = sub i64 %336, 3
  store i64 %337, i64* %335, align 8
  br label %338

338:                                              ; preds = %333, %320
  br label %339

339:                                              ; preds = %338, %271
  %340 = load i32, i32* @COMP_RXDESC, align 4
  %341 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %342 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %341, i32 0, i32 9
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  %345 = zext i1 %344 to i64
  %346 = select i1 %344, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %347 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %348 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %347, i32 0, i32 3
  %349 = load i64, i64* %348, align 8
  %350 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %340, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %346, i64 %349)
  %351 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %352 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %351, i32 0, i32 8
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %365, label %355

355:                                              ; preds = %339
  %356 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %357 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %356, i32 0, i32 7
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %365, label %360

360:                                              ; preds = %355
  %361 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %362 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %361, i32 0, i32 6
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %432

365:                                              ; preds = %360, %355, %339
  %366 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %367 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %377

370:                                              ; preds = %365
  %371 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %372 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = trunc i64 %373 to i32
  %375 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %376 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %375, i32 0, i32 0
  store i32 %374, i32* %376, align 8
  br label %377

377:                                              ; preds = %370, %365
  %378 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %379 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %382 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = icmp ugt i64 %380, %384
  br i1 %385, label %386, label %410

386:                                              ; preds = %377
  %387 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %388 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @Rx_Smooth_Factor, align 4
  %391 = sub nsw i32 %390, 1
  %392 = mul nsw i32 %389, %391
  %393 = sext i32 %392 to i64
  %394 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %395 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %394, i32 0, i32 3
  %396 = load i64, i64* %395, align 8
  %397 = add i64 %393, %396
  %398 = load i32, i32* @Rx_Smooth_Factor, align 4
  %399 = sext i32 %398 to i64
  %400 = udiv i64 %397, %399
  %401 = trunc i64 %400 to i32
  %402 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %403 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %402, i32 0, i32 0
  store i32 %401, i32* %403, align 8
  %404 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %405 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = add nsw i32 %406, 1
  %408 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %409 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %408, i32 0, i32 0
  store i32 %407, i32* %409, align 8
  br label %428

410:                                              ; preds = %377
  %411 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %412 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @Rx_Smooth_Factor, align 4
  %415 = sub nsw i32 %414, 1
  %416 = mul nsw i32 %413, %415
  %417 = sext i32 %416 to i64
  %418 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %419 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %418, i32 0, i32 3
  %420 = load i64, i64* %419, align 8
  %421 = add i64 %417, %420
  %422 = load i32, i32* @Rx_Smooth_Factor, align 4
  %423 = sext i32 %422 to i64
  %424 = udiv i64 %421, %423
  %425 = trunc i64 %424 to i32
  %426 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %427 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %426, i32 0, i32 0
  store i32 %425, i32* %427, align 8
  br label %428

428:                                              ; preds = %410, %386
  %429 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %430 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %431 = call i32 @rtl819x_update_rxsignalstatistics8190pci(%struct.r8192_priv* %429, %struct.ieee80211_rx_stats* %430)
  br label %432

432:                                              ; preds = %428, %360
  %433 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %434 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %433, i32 0, i32 4
  %435 = load i64, i64* %434, align 8
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %432
  br label %593

438:                                              ; preds = %432
  %439 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %440 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %439, i32 0, i32 8
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %453, label %443

443:                                              ; preds = %438
  %444 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %445 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %444, i32 0, i32 7
  %446 = load i64, i64* %445, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %453, label %448

448:                                              ; preds = %443
  %449 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %450 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %449, i32 0, i32 6
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %511

453:                                              ; preds = %448, %443, %438
  %454 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %455 = add i64 %454, 1
  store i64 %455, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %456 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %457 = icmp uge i64 %454, %456
  br i1 %457, label %458, label %473

458:                                              ; preds = %453
  %459 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  store i64 %459, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %460 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %461 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 5
  %463 = load i64*, i64** %462, align 8
  %464 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %465 = getelementptr inbounds i64, i64* %463, i64 %464
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* @rtl8192_process_phyinfo.last_evm, align 8
  %467 = load i64, i64* @rtl8192_process_phyinfo.last_evm, align 8
  %468 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %469 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 6
  %471 = load i64, i64* %470, align 8
  %472 = sub i64 %471, %467
  store i64 %472, i64* %470, align 8
  br label %473

473:                                              ; preds = %458, %453
  %474 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %475 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %474, i32 0, i32 4
  %476 = load i64, i64* %475, align 8
  %477 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %478 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i32 0, i32 6
  %480 = load i64, i64* %479, align 8
  %481 = add i64 %480, %476
  store i64 %481, i64* %479, align 8
  %482 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %483 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %482, i32 0, i32 4
  %484 = load i64, i64* %483, align 8
  %485 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %486 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 5
  %488 = load i64*, i64** %487, align 8
  %489 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %490 = add i64 %489, 1
  store i64 %490, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %491 = getelementptr inbounds i64, i64* %488, i64 %489
  store i64 %484, i64* %491, align 8
  %492 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %493 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %494 = icmp uge i64 %492, %493
  br i1 %494, label %495, label %496

495:                                              ; preds = %473
  store i64 0, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  br label %496

496:                                              ; preds = %495, %473
  %497 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %498 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %498, i32 0, i32 6
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %502 = udiv i64 %500, %501
  store i64 %502, i64* %12, align 8
  %503 = load i64, i64* %12, align 8
  %504 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %505 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %505, i32 0, i32 7
  store i64 %503, i64* %506, align 8
  %507 = load i64, i64* %12, align 8
  %508 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %509 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %509, i32 0, i32 8
  store i64 %507, i64* %510, align 8
  br label %511

511:                                              ; preds = %496, %448
  %512 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %513 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %512, i32 0, i32 8
  %514 = load i64, i64* %513, align 8
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %526, label %516

516:                                              ; preds = %511
  %517 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %518 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %517, i32 0, i32 7
  %519 = load i64, i64* %518, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %526, label %521

521:                                              ; preds = %516
  %522 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %523 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %522, i32 0, i32 6
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %592

526:                                              ; preds = %521, %516, %511
  store i64 0, i64* %11, align 8
  br label %527

527:                                              ; preds = %588, %526
  %528 = load i64, i64* %11, align 8
  %529 = icmp ult i64 %528, 2
  br i1 %529, label %530, label %591

530:                                              ; preds = %527
  %531 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %532 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %531, i32 0, i32 5
  %533 = load i32*, i32** %532, align 8
  %534 = load i64, i64* %11, align 8
  %535 = getelementptr inbounds i32, i32* %533, i64 %534
  %536 = load i32, i32* %535, align 4
  %537 = icmp ne i32 %536, -1
  br i1 %537, label %538, label %587

538:                                              ; preds = %530
  %539 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %540 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 9
  %542 = load i32*, i32** %541, align 8
  %543 = load i64, i64* %11, align 8
  %544 = getelementptr inbounds i32, i32* %542, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %560

547:                                              ; preds = %538
  %548 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %549 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %548, i32 0, i32 5
  %550 = load i32*, i32** %549, align 8
  %551 = load i64, i64* %11, align 8
  %552 = getelementptr inbounds i32, i32* %550, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %555 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %555, i32 0, i32 9
  %557 = load i32*, i32** %556, align 8
  %558 = load i64, i64* %11, align 8
  %559 = getelementptr inbounds i32, i32* %557, i64 %558
  store i32 %553, i32* %559, align 4
  br label %560

560:                                              ; preds = %547, %538
  %561 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %562 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i32 0, i32 9
  %564 = load i32*, i32** %563, align 8
  %565 = load i64, i64* %11, align 8
  %566 = getelementptr inbounds i32, i32* %564, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* @Rx_Smooth_Factor, align 4
  %569 = sub nsw i32 %568, 1
  %570 = mul nsw i32 %567, %569
  %571 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %572 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %571, i32 0, i32 5
  %573 = load i32*, i32** %572, align 8
  %574 = load i64, i64* %11, align 8
  %575 = getelementptr inbounds i32, i32* %573, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = mul nsw i32 %576, 1
  %578 = add nsw i32 %570, %577
  %579 = load i32, i32* @Rx_Smooth_Factor, align 4
  %580 = sdiv i32 %578, %579
  %581 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %582 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %582, i32 0, i32 9
  %584 = load i32*, i32** %583, align 8
  %585 = load i64, i64* %11, align 8
  %586 = getelementptr inbounds i32, i32* %584, i64 %585
  store i32 %580, i32* %586, align 4
  br label %587

587:                                              ; preds = %560, %530
  br label %588

588:                                              ; preds = %587
  %589 = load i64, i64* %11, align 8
  %590 = add i64 %589, 1
  store i64 %590, i64* %11, align 8
  br label %527

591:                                              ; preds = %527
  br label %592

592:                                              ; preds = %591, %521
  br label %593

593:                                              ; preds = %106, %111, %592, %437
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WLAN_GET_SEQ_FRAG(i32) #1

declare dso_local i32 @WLAN_GET_SEQ_SEQ(i32) #1

declare dso_local i8* @rtl819x_translate_todbm(i64) #1

declare dso_local i32 @rtl8190_process_cck_rxpathsel(%struct.r8192_priv*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(i32, i64) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @rtl819x_update_rxsignalstatistics8190pci(%struct.r8192_priv*, %struct.ieee80211_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
