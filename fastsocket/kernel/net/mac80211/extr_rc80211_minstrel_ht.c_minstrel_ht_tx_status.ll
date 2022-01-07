; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i32*, %struct.sk_buff*)* }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.minstrel_ht_sta_priv = type { i32, i32, %struct.minstrel_ht_sta }
%struct.minstrel_ht_sta = type { i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32 }
%struct.minstrel_rate_stats = type { i32, i32 }
%struct.minstrel_priv = type { i32 }

@mac80211_minstrel = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)* @minstrel_ht_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.minstrel_ht_sta_priv*, align 8
  %12 = alloca %struct.minstrel_ht_sta*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca %struct.ieee80211_tx_rate*, align 8
  %15 = alloca %struct.minstrel_rate_stats*, align 8
  %16 = alloca %struct.minstrel_rate_stats*, align 8
  %17 = alloca %struct.minstrel_priv*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.minstrel_ht_sta_priv*
  store %struct.minstrel_ht_sta_priv* %22, %struct.minstrel_ht_sta_priv** %11, align 8
  %23 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %11, align 8
  %24 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %23, i32 0, i32 2
  store %struct.minstrel_ht_sta* %24, %struct.minstrel_ht_sta** %12, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %25)
  store %struct.ieee80211_tx_info* %26, %struct.ieee80211_tx_info** %13, align 8
  %27 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %29, align 8
  store %struct.ieee80211_tx_rate* %30, %struct.ieee80211_tx_rate** %14, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.minstrel_priv*
  store %struct.minstrel_priv* %32, %struct.minstrel_priv** %17, align 8
  store i32 0, i32* %19, align 4
  %33 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %11, align 8
  %34 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %5
  %38 = load void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i32*, %struct.sk_buff*)*, void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i32*, %struct.sk_buff*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mac80211_minstrel, i32 0, i32 0), align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %42 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %11, align 8
  %43 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %42, i32 0, i32 0
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  call void %38(i8* %39, %struct.ieee80211_supported_band* %40, %struct.ieee80211_sta* %41, i32* %43, %struct.sk_buff* %44)
  br label %303

45:                                               ; preds = %5
  %46 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %303

60:                                               ; preds = %52, %45
  %61 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %60
  %68 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %77 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %80 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %67, %60
  %83 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %84 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %88 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %92 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %96 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %124, label %99

99:                                               ; preds = %82
  %100 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %101 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %99
  %105 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %106 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %104
  %110 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %111 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @MINSTREL_TRUNC(i32 %112)
  %114 = mul nsw i32 2, %113
  %115 = add nsw i32 16, %114
  %116 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %117 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %119 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  %120 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %121 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %109, %104, %99, %82
  %125 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %126 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %133 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %137 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %131, %124
  %141 = load %struct.minstrel_priv*, %struct.minstrel_priv** %17, align 8
  %142 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %143 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %142, i64 0
  %144 = call i32 @minstrel_ht_txstat_valid(%struct.minstrel_priv* %141, %struct.ieee80211_tx_rate* %143)
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %148

148:                                              ; preds = %204, %140
  %149 = load i32, i32* %18, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  br i1 %151, label %152, label %207

152:                                              ; preds = %148
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %155 = sub nsw i32 %154, 1
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %167, label %157

157:                                              ; preds = %152
  %158 = load %struct.minstrel_priv*, %struct.minstrel_priv** %17, align 8
  %159 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %159, i64 %162
  %164 = call i32 @minstrel_ht_txstat_valid(%struct.minstrel_priv* %158, %struct.ieee80211_tx_rate* %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br label %167

167:                                              ; preds = %157, %152
  %168 = phi i1 [ true, %152 ], [ %166, %157 ]
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %18, align 4
  %170 = load %struct.minstrel_priv*, %struct.minstrel_priv** %17, align 8
  %171 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %172 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %172, i64 %174
  %176 = call %struct.minstrel_rate_stats* @minstrel_ht_get_stats(%struct.minstrel_priv* %170, %struct.minstrel_ht_sta* %171, %struct.ieee80211_tx_rate* %175)
  store %struct.minstrel_rate_stats* %176, %struct.minstrel_rate_stats** %15, align 8
  %177 = load i32, i32* %18, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %167
  %180 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %181 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %15, align 8
  %185 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %179, %167
  %189 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %190 = load i32, i32* %20, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %189, i64 %191
  %193 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %196 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %194, %198
  %200 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %15, align 8
  %201 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %188
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  br label %148

207:                                              ; preds = %148
  %208 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %209 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %210 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %209, i32 0, i32 8
  %211 = load i32, i32* %210, align 4
  %212 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %208, i32 %211)
  store %struct.minstrel_rate_stats* %212, %struct.minstrel_rate_stats** %15, align 8
  %213 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %15, align 8
  %214 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp sgt i32 %215, 30
  br i1 %216, label %217, label %232

217:                                              ; preds = %207
  %218 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %15, align 8
  %219 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %15, align 8
  %222 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @MINSTREL_FRAC(i32 %220, i32 %223)
  %225 = call i64 @MINSTREL_FRAC(i32 20, i32 100)
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %217
  %228 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %229 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %230 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %229, i32 0, i32 8
  %231 = call i32 @minstrel_downgrade_rate(%struct.minstrel_ht_sta* %228, i32* %230, i32 1)
  store i32 1, i32* %19, align 4
  br label %232

232:                                              ; preds = %227, %217, %207
  %233 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %234 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %235 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 8
  %237 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %233, i32 %236)
  store %struct.minstrel_rate_stats* %237, %struct.minstrel_rate_stats** %16, align 8
  %238 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %239 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %240, 30
  br i1 %241, label %242, label %257

242:                                              ; preds = %232
  %243 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %244 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %247 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i64 @MINSTREL_FRAC(i32 %245, i32 %248)
  %250 = call i64 @MINSTREL_FRAC(i32 20, i32 100)
  %251 = icmp slt i64 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %242
  %253 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %254 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %255 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %254, i32 0, i32 7
  %256 = call i32 @minstrel_downgrade_rate(%struct.minstrel_ht_sta* %253, i32* %255, i32 0)
  store i32 1, i32* %19, align 4
  br label %257

257:                                              ; preds = %252, %242, %232
  %258 = load i32, i32* @jiffies, align 4
  %259 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %260 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %259, i32 0, i32 6
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.minstrel_priv*, %struct.minstrel_priv** %17, align 8
  %263 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = sdiv i32 %264, 2
  %266 = load i32, i32* @HZ, align 4
  %267 = mul nsw i32 %265, %266
  %268 = sdiv i32 %267, 1000
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %261, %269
  %271 = call i64 @time_after(i32 %258, i64 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %296

273:                                              ; preds = %257
  store i32 1, i32* %19, align 4
  %274 = load %struct.minstrel_priv*, %struct.minstrel_priv** %17, align 8
  %275 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %276 = call i32 @minstrel_ht_update_stats(%struct.minstrel_priv* %274, %struct.minstrel_ht_sta* %275)
  %277 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %278 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %295, label %283

283:                                              ; preds = %273
  %284 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %285 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @MCS_GROUP_RATES, align 4
  %288 = sdiv i32 %286, %287
  %289 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %283
  %292 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %293 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %294 = call i32 @minstrel_aggr_check(%struct.ieee80211_sta* %292, %struct.sk_buff* %293)
  br label %295

295:                                              ; preds = %291, %283, %273
  br label %296

296:                                              ; preds = %295, %257
  %297 = load i32, i32* %19, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load %struct.minstrel_priv*, %struct.minstrel_priv** %17, align 8
  %301 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %12, align 8
  %302 = call i32 @minstrel_ht_update_rates(%struct.minstrel_priv* %300, %struct.minstrel_ht_sta* %301)
  br label %303

303:                                              ; preds = %37, %59, %299, %296
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @MINSTREL_TRUNC(i32) #1

declare dso_local i32 @minstrel_ht_txstat_valid(%struct.minstrel_priv*, %struct.ieee80211_tx_rate*) #1

declare dso_local %struct.minstrel_rate_stats* @minstrel_ht_get_stats(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_tx_rate*) #1

declare dso_local %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta*, i32) #1

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @minstrel_downgrade_rate(%struct.minstrel_ht_sta*, i32*, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @minstrel_ht_update_stats(%struct.minstrel_priv*, %struct.minstrel_ht_sta*) #1

declare dso_local i32 @minstrel_aggr_check(%struct.ieee80211_sta*, %struct.sk_buff*) #1

declare dso_local i32 @minstrel_ht_update_rates(%struct.minstrel_priv*, %struct.minstrel_ht_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
