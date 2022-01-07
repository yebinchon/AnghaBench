; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_add_rx_radiotap_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_add_rx_radiotap_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_rate = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i64, i8, i8, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.ieee80211_radiotap_header = type { i32, i32 }

@IEEE80211_HW_RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i64 0, align 8
@IEEE80211_RADIOTAP_FLAGS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_ANTENNA = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_RX_FLAGS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_VENDOR_NAMESPACE = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_EXT = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_TSFT = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_FCS = common dso_local global i8 0, align 1
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_PLCP_CRC = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_BADFCS = common dso_local global i8 0, align 1
@RX_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_SHORTPRE = common dso_local global i8 0, align 1
@RX_FLAG_HT = common dso_local global i32 0, align 4
@RX_FLAG_VHT = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_RATE = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_OFDM = common dso_local global i32 0, align 4
@IEEE80211_CHAN_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DYN = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@IEEE80211_CHAN_CCK = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@RX_FLAG_NO_SIGNAL_VAL = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_DBM_ANTSIGNAL = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_RX_BADPLCP = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS = common dso_local global i32 0, align 4
@RX_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_SGI = common dso_local global i8 0, align 1
@RX_FLAG_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_BW_40 = common dso_local global i8 0, align 1
@RX_FLAG_HT_GF = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_FMT_GF = common dso_local global i8 0, align 1
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_AMPDU_STATUS = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_REPORT_ZEROLEN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_AMPDU_REPORT_ZEROLEN = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_IS_ZEROLEN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_AMPDU_IS_ZEROLEN = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_LAST_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_AMPDU_LAST_KNOWN = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_IS_LAST = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_AMPDU_IS_LAST = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DELIM_CRC_ERROR = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_AMPDU_DELIM_CRC_ERR = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DELIM_CRC_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_AMPDU_DELIM_CRC_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_VHT = common dso_local global i32 0, align 4
@RX_FLAG_80P80MHZ = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_VHT_FLAG_SGI = common dso_local global i8 0, align 1
@RX_FLAG_80MHZ = common dso_local global i32 0, align 4
@RX_FLAG_160MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.sk_buff*, %struct.ieee80211_rate*, i32, i32)* @ieee80211_add_rx_radiotap_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_add_rx_radiotap_header(%struct.ieee80211_local* %0, %struct.sk_buff* %1, %struct.ieee80211_rate* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_rate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_rx_status*, align 8
  %12 = alloca %struct.ieee80211_radiotap_header*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.ieee80211_rate* %2, %struct.ieee80211_rate** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %18)
  store %struct.ieee80211_rx_status* %19, %struct.ieee80211_rx_status** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %5
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IEEE80211_HW_RX_INCLUDES_FCS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %25, %5
  %34 = load i64, i64* @FCS_LEN, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @skb_push(%struct.sk_buff* %40, i32 %41)
  %43 = inttoptr i64 %42 to %struct.ieee80211_radiotap_header*
  store %struct.ieee80211_radiotap_header* %43, %struct.ieee80211_radiotap_header** %12, align 8
  %44 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memset(%struct.ieee80211_radiotap_header* %44, i32 0, i32 %45)
  %47 = load i32, i32* @IEEE80211_RADIOTAP_FLAGS, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* @IEEE80211_RADIOTAP_CHANNEL, align 4
  %50 = shl i32 1, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @IEEE80211_RADIOTAP_ANTENNA, align 4
  %53 = shl i32 1, %52
  %54 = or i32 %51, %53
  %55 = load i32, i32* @IEEE80211_RADIOTAP_RX_FLAGS, align 4
  %56 = shl i32 1, %55
  %57 = or i32 %54, %56
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %60 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %61, %64
  %66 = call i32 @cpu_to_le16(i32 %65)
  %67 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %68 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %70 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %69, i64 1
  %71 = bitcast %struct.ieee80211_radiotap_header* %70 to i8*
  store i8* %71, i8** %13, align 8
  %72 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %73 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %39
  %77 = load i32, i32* @IEEE80211_RADIOTAP_VENDOR_NAMESPACE, align 4
  %78 = call i32 @BIT(i32 %77)
  %79 = call i32 @cpu_to_le32(i32 %78)
  %80 = load i32, i32* @IEEE80211_RADIOTAP_EXT, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = call i32 @cpu_to_le32(i32 %81)
  %83 = or i32 %79, %82
  %84 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %85 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @put_unaligned_le32(i32 %90, i8* %91)
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  store i8* %94, i8** %13, align 8
  br label %95

95:                                               ; preds = %76, %39
  %96 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %97 = call i64 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %109, %99
  %101 = load i8*, i8** %13, align 8
  %102 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %103 = bitcast %struct.ieee80211_radiotap_header* %102 to i8*
  %104 = ptrtoint i8* %101 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = and i64 %106, 7
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %13, align 8
  store i8 0, i8* %110, align 1
  br label %100

112:                                              ; preds = %100
  %113 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %114 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @ieee80211_calculate_rx_timestamp(%struct.ieee80211_local* %113, %struct.ieee80211_rx_status* %114, i32 %115, i32 0)
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 @put_unaligned_le64(i32 %116, i8* %117)
  %119 = load i32, i32* @IEEE80211_RADIOTAP_TSFT, align 4
  %120 = shl i32 1, %119
  %121 = call i32 @cpu_to_le32(i32 %120)
  %122 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %123 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i8*, i8** %13, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 8
  store i8* %127, i8** %13, align 8
  br label %128

128:                                              ; preds = %112, %95
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %133 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @IEEE80211_HW_RX_INCLUDES_FCS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %131
  %140 = load i8, i8* @IEEE80211_RADIOTAP_F_FCS, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8*, i8** %13, align 8
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %144, %141
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %142, align 1
  br label %147

147:                                              ; preds = %139, %131, %128
  %148 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %149 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %152 = load i32, i32* @RX_FLAG_FAILED_PLCP_CRC, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %147
  %157 = load i8, i8* @IEEE80211_RADIOTAP_F_BADFCS, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8*, i8** %13, align 8
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = or i32 %161, %158
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %159, align 1
  br label %164

164:                                              ; preds = %156, %147
  %165 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %166 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @RX_FLAG_SHORTPRE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %164
  %172 = load i8, i8* @IEEE80211_RADIOTAP_F_SHORTPRE, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8*, i8** %13, align 8
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %176, %173
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %174, align 1
  br label %179

179:                                              ; preds = %171, %164
  %180 = load i8*, i8** %13, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %13, align 8
  %182 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %183 = icmp ne %struct.ieee80211_rate* %182, null
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %186 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @RX_FLAG_HT, align 4
  %189 = load i32, i32* @RX_FLAG_VHT, align 4
  %190 = or i32 %188, %189
  %191 = and i32 %187, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %184, %179
  %194 = load i8*, i8** %13, align 8
  store i8 0, i8* %194, align 1
  br label %209

195:                                              ; preds = %184
  %196 = load i32, i32* @IEEE80211_RADIOTAP_RATE, align 4
  %197 = shl i32 1, %196
  %198 = call i32 @cpu_to_le32(i32 %197)
  %199 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %200 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  %203 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %204 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = sdiv i32 %205, 5
  %207 = trunc i32 %206 to i8
  %208 = load i8*, i8** %13, align 8
  store i8 %207, i8* %208, align 1
  br label %209

209:                                              ; preds = %195, %193
  %210 = load i8*, i8** %13, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %13, align 8
  %212 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %213 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i8*, i8** %13, align 8
  %216 = call i32 @put_unaligned_le16(i32 %214, i8* %215)
  %217 = load i8*, i8** %13, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 2
  store i8* %218, i8** %13, align 8
  %219 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %220 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %209
  %225 = load i32, i32* @IEEE80211_CHAN_OFDM, align 4
  %226 = load i32, i32* @IEEE80211_CHAN_5GHZ, align 4
  %227 = or i32 %225, %226
  %228 = load i8*, i8** %13, align 8
  %229 = call i32 @put_unaligned_le16(i32 %227, i8* %228)
  br label %277

230:                                              ; preds = %209
  %231 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %232 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @RX_FLAG_HT, align 4
  %235 = load i32, i32* @RX_FLAG_VHT, align 4
  %236 = or i32 %234, %235
  %237 = and i32 %233, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %230
  %240 = load i32, i32* @IEEE80211_CHAN_DYN, align 4
  %241 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %242 = or i32 %240, %241
  %243 = load i8*, i8** %13, align 8
  %244 = call i32 @put_unaligned_le16(i32 %242, i8* %243)
  br label %276

245:                                              ; preds = %230
  %246 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %247 = icmp ne %struct.ieee80211_rate* %246, null
  br i1 %247, label %248, label %261

248:                                              ; preds = %245
  %249 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %250 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load i32, i32* @IEEE80211_CHAN_OFDM, align 4
  %257 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %258 = or i32 %256, %257
  %259 = load i8*, i8** %13, align 8
  %260 = call i32 @put_unaligned_le16(i32 %258, i8* %259)
  br label %275

261:                                              ; preds = %248, %245
  %262 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %263 = icmp ne %struct.ieee80211_rate* %262, null
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load i32, i32* @IEEE80211_CHAN_CCK, align 4
  %266 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %267 = or i32 %265, %266
  %268 = load i8*, i8** %13, align 8
  %269 = call i32 @put_unaligned_le16(i32 %267, i8* %268)
  br label %274

270:                                              ; preds = %261
  %271 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %272 = load i8*, i8** %13, align 8
  %273 = call i32 @put_unaligned_le16(i32 %271, i8* %272)
  br label %274

274:                                              ; preds = %270, %264
  br label %275

275:                                              ; preds = %274, %255
  br label %276

276:                                              ; preds = %275, %239
  br label %277

277:                                              ; preds = %276, %224
  %278 = load i8*, i8** %13, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 2
  store i8* %279, i8** %13, align 8
  %280 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %281 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %308

287:                                              ; preds = %277
  %288 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %289 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @RX_FLAG_NO_SIGNAL_VAL, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %308, label %294

294:                                              ; preds = %287
  %295 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %296 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %295, i32 0, i32 4
  %297 = load i8, i8* %296, align 8
  %298 = load i8*, i8** %13, align 8
  store i8 %297, i8* %298, align 1
  %299 = load i32, i32* @IEEE80211_RADIOTAP_DBM_ANTSIGNAL, align 4
  %300 = shl i32 1, %299
  %301 = call i32 @cpu_to_le32(i32 %300)
  %302 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %303 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 4
  %306 = load i8*, i8** %13, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %13, align 8
  br label %308

308:                                              ; preds = %294, %287, %277
  %309 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %310 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %309, i32 0, i32 5
  %311 = load i8, i8* %310, align 1
  %312 = load i8*, i8** %13, align 8
  store i8 %311, i8* %312, align 1
  %313 = load i8*, i8** %13, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %314, i8** %13, align 8
  %315 = load i8*, i8** %13, align 8
  %316 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %317 = bitcast %struct.ieee80211_radiotap_header* %316 to i8*
  %318 = ptrtoint i8* %315 to i64
  %319 = ptrtoint i8* %317 to i64
  %320 = sub i64 %318, %319
  %321 = and i64 %320, 1
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %308
  %324 = load i8*, i8** %13, align 8
  %325 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %325, i8** %13, align 8
  store i8 0, i8* %324, align 1
  br label %326

326:                                              ; preds = %323, %308
  %327 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %328 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @RX_FLAG_FAILED_PLCP_CRC, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %326
  %334 = load i32, i32* @IEEE80211_RADIOTAP_F_RX_BADPLCP, align 4
  %335 = load i32, i32* %14, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %14, align 4
  br label %337

337:                                              ; preds = %333, %326
  %338 = load i32, i32* %14, align 4
  %339 = load i8*, i8** %13, align 8
  %340 = call i32 @put_unaligned_le16(i32 %338, i8* %339)
  %341 = load i8*, i8** %13, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 2
  store i8* %342, i8** %13, align 8
  %343 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %344 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @RX_FLAG_HT, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %418

349:                                              ; preds = %337
  %350 = load i32, i32* @IEEE80211_RADIOTAP_MCS, align 4
  %351 = shl i32 1, %350
  %352 = call i32 @cpu_to_le32(i32 %351)
  %353 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %354 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 4
  %357 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %358 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = trunc i32 %360 to i8
  %362 = load i8*, i8** %13, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %13, align 8
  store i8 %361, i8* %362, align 1
  %364 = load i8*, i8** %13, align 8
  store i8 0, i8* %364, align 1
  %365 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %366 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %379

371:                                              ; preds = %349
  %372 = load i8, i8* @IEEE80211_RADIOTAP_MCS_SGI, align 1
  %373 = zext i8 %372 to i32
  %374 = load i8*, i8** %13, align 8
  %375 = load i8, i8* %374, align 1
  %376 = zext i8 %375 to i32
  %377 = or i32 %376, %373
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %374, align 1
  br label %379

379:                                              ; preds = %371, %349
  %380 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %381 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %394

386:                                              ; preds = %379
  %387 = load i8, i8* @IEEE80211_RADIOTAP_MCS_BW_40, align 1
  %388 = zext i8 %387 to i32
  %389 = load i8*, i8** %13, align 8
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i32
  %392 = or i32 %391, %388
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %389, align 1
  br label %394

394:                                              ; preds = %386, %379
  %395 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %396 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @RX_FLAG_HT_GF, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %409

401:                                              ; preds = %394
  %402 = load i8, i8* @IEEE80211_RADIOTAP_MCS_FMT_GF, align 1
  %403 = zext i8 %402 to i32
  %404 = load i8*, i8** %13, align 8
  %405 = load i8, i8* %404, align 1
  %406 = zext i8 %405 to i32
  %407 = or i32 %406, %403
  %408 = trunc i32 %407 to i8
  store i8 %408, i8* %404, align 1
  br label %409

409:                                              ; preds = %401, %394
  %410 = load i8*, i8** %13, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %13, align 8
  %412 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %413 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %412, i32 0, i32 6
  %414 = load i32, i32* %413, align 4
  %415 = trunc i32 %414 to i8
  %416 = load i8*, i8** %13, align 8
  %417 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %417, i8** %13, align 8
  store i8 %415, i8* %416, align 1
  br label %418

418:                                              ; preds = %409, %337
  %419 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %420 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %543

425:                                              ; preds = %418
  store i32 0, i32* %16, align 4
  br label %426

426:                                              ; preds = %435, %425
  %427 = load i8*, i8** %13, align 8
  %428 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %429 = bitcast %struct.ieee80211_radiotap_header* %428 to i8*
  %430 = ptrtoint i8* %427 to i64
  %431 = ptrtoint i8* %429 to i64
  %432 = sub i64 %430, %431
  %433 = and i64 %432, 3
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %426
  %436 = load i8*, i8** %13, align 8
  %437 = getelementptr inbounds i8, i8* %436, i32 1
  store i8* %437, i8** %13, align 8
  br label %426

438:                                              ; preds = %426
  %439 = load i32, i32* @IEEE80211_RADIOTAP_AMPDU_STATUS, align 4
  %440 = shl i32 1, %439
  %441 = call i32 @cpu_to_le32(i32 %440)
  %442 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %443 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = or i32 %444, %441
  store i32 %445, i32* %443, align 4
  %446 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %447 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %446, i32 0, i32 12
  %448 = load i32, i32* %447, align 4
  %449 = load i8*, i8** %13, align 8
  %450 = call i32 @put_unaligned_le32(i32 %448, i8* %449)
  %451 = load i8*, i8** %13, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 4
  store i8* %452, i8** %13, align 8
  %453 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %454 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @RX_FLAG_AMPDU_REPORT_ZEROLEN, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %463

459:                                              ; preds = %438
  %460 = load i32, i32* @IEEE80211_RADIOTAP_AMPDU_REPORT_ZEROLEN, align 4
  %461 = load i32, i32* %16, align 4
  %462 = or i32 %461, %460
  store i32 %462, i32* %16, align 4
  br label %463

463:                                              ; preds = %459, %438
  %464 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %465 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @RX_FLAG_AMPDU_IS_ZEROLEN, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %463
  %471 = load i32, i32* @IEEE80211_RADIOTAP_AMPDU_IS_ZEROLEN, align 4
  %472 = load i32, i32* %16, align 4
  %473 = or i32 %472, %471
  store i32 %473, i32* %16, align 4
  br label %474

474:                                              ; preds = %470, %463
  %475 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %476 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @RX_FLAG_AMPDU_LAST_KNOWN, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %474
  %482 = load i32, i32* @IEEE80211_RADIOTAP_AMPDU_LAST_KNOWN, align 4
  %483 = load i32, i32* %16, align 4
  %484 = or i32 %483, %482
  store i32 %484, i32* %16, align 4
  br label %485

485:                                              ; preds = %481, %474
  %486 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %487 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* @RX_FLAG_AMPDU_IS_LAST, align 4
  %490 = and i32 %488, %489
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %496

492:                                              ; preds = %485
  %493 = load i32, i32* @IEEE80211_RADIOTAP_AMPDU_IS_LAST, align 4
  %494 = load i32, i32* %16, align 4
  %495 = or i32 %494, %493
  store i32 %495, i32* %16, align 4
  br label %496

496:                                              ; preds = %492, %485
  %497 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %498 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* @RX_FLAG_AMPDU_DELIM_CRC_ERROR, align 4
  %501 = and i32 %499, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %507

503:                                              ; preds = %496
  %504 = load i32, i32* @IEEE80211_RADIOTAP_AMPDU_DELIM_CRC_ERR, align 4
  %505 = load i32, i32* %16, align 4
  %506 = or i32 %505, %504
  store i32 %506, i32* %16, align 4
  br label %507

507:                                              ; preds = %503, %496
  %508 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %509 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = load i32, i32* @RX_FLAG_AMPDU_DELIM_CRC_KNOWN, align 4
  %512 = and i32 %510, %511
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %507
  %515 = load i32, i32* @IEEE80211_RADIOTAP_AMPDU_DELIM_CRC_KNOWN, align 4
  %516 = load i32, i32* %16, align 4
  %517 = or i32 %516, %515
  store i32 %517, i32* %16, align 4
  br label %518

518:                                              ; preds = %514, %507
  %519 = load i32, i32* %16, align 4
  %520 = load i8*, i8** %13, align 8
  %521 = call i32 @put_unaligned_le16(i32 %519, i8* %520)
  %522 = load i8*, i8** %13, align 8
  %523 = getelementptr inbounds i8, i8* %522, i64 2
  store i8* %523, i8** %13, align 8
  %524 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %525 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @RX_FLAG_AMPDU_DELIM_CRC_KNOWN, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %537

530:                                              ; preds = %518
  %531 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %532 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %531, i32 0, i32 11
  %533 = load i32, i32* %532, align 8
  %534 = trunc i32 %533 to i8
  %535 = load i8*, i8** %13, align 8
  %536 = getelementptr inbounds i8, i8* %535, i32 1
  store i8* %536, i8** %13, align 8
  store i8 %534, i8* %535, align 1
  br label %540

537:                                              ; preds = %518
  %538 = load i8*, i8** %13, align 8
  %539 = getelementptr inbounds i8, i8* %538, i32 1
  store i8* %539, i8** %13, align 8
  store i8 0, i8* %538, align 1
  br label %540

540:                                              ; preds = %537, %530
  %541 = load i8*, i8** %13, align 8
  %542 = getelementptr inbounds i8, i8* %541, i32 1
  store i8* %542, i8** %13, align 8
  store i8 0, i8* %541, align 1
  br label %543

543:                                              ; preds = %540, %418
  %544 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %545 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  %547 = load i32, i32* @RX_FLAG_VHT, align 4
  %548 = and i32 %546, %547
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %660

550:                                              ; preds = %543
  %551 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %552 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  store i32 %554, i32* %17, align 4
  %555 = load i32, i32* @IEEE80211_RADIOTAP_VHT, align 4
  %556 = shl i32 1, %555
  %557 = call i32 @cpu_to_le32(i32 %556)
  %558 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %559 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = or i32 %560, %557
  store i32 %561, i32* %559, align 4
  %562 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %563 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 4
  %565 = load i32, i32* @RX_FLAG_80P80MHZ, align 4
  %566 = and i32 %564, %565
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %550
  %569 = load i32, i32* @IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH, align 4
  %570 = xor i32 %569, -1
  %571 = load i32, i32* %17, align 4
  %572 = and i32 %571, %570
  store i32 %572, i32* %17, align 4
  br label %573

573:                                              ; preds = %568, %550
  %574 = load i32, i32* %17, align 4
  %575 = load i8*, i8** %13, align 8
  %576 = call i32 @put_unaligned_le16(i32 %574, i8* %575)
  %577 = load i8*, i8** %13, align 8
  %578 = getelementptr inbounds i8, i8* %577, i64 2
  store i8* %578, i8** %13, align 8
  %579 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %580 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %583 = and i32 %581, %582
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %593

585:                                              ; preds = %573
  %586 = load i8, i8* @IEEE80211_RADIOTAP_VHT_FLAG_SGI, align 1
  %587 = zext i8 %586 to i32
  %588 = load i8*, i8** %13, align 8
  %589 = load i8, i8* %588, align 1
  %590 = zext i8 %589 to i32
  %591 = or i32 %590, %587
  %592 = trunc i32 %591 to i8
  store i8 %592, i8* %588, align 1
  br label %593

593:                                              ; preds = %585, %573
  %594 = load i8*, i8** %13, align 8
  %595 = getelementptr inbounds i8, i8* %594, i32 1
  store i8* %595, i8** %13, align 8
  %596 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %597 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 4
  %599 = load i32, i32* @RX_FLAG_80MHZ, align 4
  %600 = and i32 %598, %599
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %605

602:                                              ; preds = %593
  %603 = load i8*, i8** %13, align 8
  %604 = getelementptr inbounds i8, i8* %603, i32 1
  store i8* %604, i8** %13, align 8
  store i8 4, i8* %603, align 1
  br label %641

605:                                              ; preds = %593
  %606 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %607 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %606, i32 0, i32 1
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @RX_FLAG_80P80MHZ, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %615

612:                                              ; preds = %605
  %613 = load i8*, i8** %13, align 8
  %614 = getelementptr inbounds i8, i8* %613, i32 1
  store i8* %614, i8** %13, align 8
  store i8 0, i8* %613, align 1
  br label %640

615:                                              ; preds = %605
  %616 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %617 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %616, i32 0, i32 1
  %618 = load i32, i32* %617, align 4
  %619 = load i32, i32* @RX_FLAG_160MHZ, align 4
  %620 = and i32 %618, %619
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %625

622:                                              ; preds = %615
  %623 = load i8*, i8** %13, align 8
  %624 = getelementptr inbounds i8, i8* %623, i32 1
  store i8* %624, i8** %13, align 8
  store i8 11, i8* %623, align 1
  br label %639

625:                                              ; preds = %615
  %626 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %627 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 4
  %629 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %630 = and i32 %628, %629
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %635

632:                                              ; preds = %625
  %633 = load i8*, i8** %13, align 8
  %634 = getelementptr inbounds i8, i8* %633, i32 1
  store i8* %634, i8** %13, align 8
  store i8 1, i8* %633, align 1
  br label %638

635:                                              ; preds = %625
  %636 = load i8*, i8** %13, align 8
  %637 = getelementptr inbounds i8, i8* %636, i32 1
  store i8* %637, i8** %13, align 8
  store i8 0, i8* %636, align 1
  br label %638

638:                                              ; preds = %635, %632
  br label %639

639:                                              ; preds = %638, %622
  br label %640

640:                                              ; preds = %639, %612
  br label %641

641:                                              ; preds = %640, %602
  %642 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %643 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %642, i32 0, i32 6
  %644 = load i32, i32* %643, align 4
  %645 = shl i32 %644, 4
  %646 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %647 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %646, i32 0, i32 7
  %648 = load i32, i32* %647, align 8
  %649 = or i32 %645, %648
  %650 = trunc i32 %649 to i8
  %651 = load i8*, i8** %13, align 8
  store i8 %650, i8* %651, align 1
  %652 = load i8*, i8** %13, align 8
  %653 = getelementptr inbounds i8, i8* %652, i64 4
  store i8* %653, i8** %13, align 8
  %654 = load i8*, i8** %13, align 8
  %655 = getelementptr inbounds i8, i8* %654, i32 1
  store i8* %655, i8** %13, align 8
  %656 = load i8*, i8** %13, align 8
  %657 = getelementptr inbounds i8, i8* %656, i32 1
  store i8* %657, i8** %13, align 8
  %658 = load i8*, i8** %13, align 8
  %659 = getelementptr inbounds i8, i8* %658, i64 2
  store i8* %659, i8** %13, align 8
  br label %660

660:                                              ; preds = %641, %543
  %661 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %662 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %661, i32 0, i32 0
  %663 = load i32, i32* %662, align 8
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %733

665:                                              ; preds = %660
  %666 = load i8*, i8** %13, align 8
  %667 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %668 = bitcast %struct.ieee80211_radiotap_header* %667 to i8*
  %669 = ptrtoint i8* %666 to i64
  %670 = ptrtoint i8* %668 to i64
  %671 = sub i64 %669, %670
  %672 = and i64 %671, 1
  %673 = icmp ne i64 %672, 0
  br i1 %673, label %674, label %677

674:                                              ; preds = %665
  %675 = load i8*, i8** %13, align 8
  %676 = getelementptr inbounds i8, i8* %675, i32 1
  store i8* %676, i8** %13, align 8
  store i8 0, i8* %675, align 1
  br label %677

677:                                              ; preds = %674, %665
  %678 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %679 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %678, i32 0, i32 10
  %680 = load i32*, i32** %679, align 8
  %681 = getelementptr inbounds i32, i32* %680, i64 0
  %682 = load i32, i32* %681, align 4
  %683 = trunc i32 %682 to i8
  %684 = load i8*, i8** %13, align 8
  %685 = getelementptr inbounds i8, i8* %684, i32 1
  store i8* %685, i8** %13, align 8
  store i8 %683, i8* %684, align 1
  %686 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %687 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %686, i32 0, i32 10
  %688 = load i32*, i32** %687, align 8
  %689 = getelementptr inbounds i32, i32* %688, i64 1
  %690 = load i32, i32* %689, align 4
  %691 = trunc i32 %690 to i8
  %692 = load i8*, i8** %13, align 8
  %693 = getelementptr inbounds i8, i8* %692, i32 1
  store i8* %693, i8** %13, align 8
  store i8 %691, i8* %692, align 1
  %694 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %695 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %694, i32 0, i32 10
  %696 = load i32*, i32** %695, align 8
  %697 = getelementptr inbounds i32, i32* %696, i64 2
  %698 = load i32, i32* %697, align 4
  %699 = trunc i32 %698 to i8
  %700 = load i8*, i8** %13, align 8
  %701 = getelementptr inbounds i8, i8* %700, i32 1
  store i8* %701, i8** %13, align 8
  store i8 %699, i8* %700, align 1
  %702 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %703 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %702, i32 0, i32 9
  %704 = load i32, i32* %703, align 8
  %705 = trunc i32 %704 to i8
  %706 = load i8*, i8** %13, align 8
  %707 = getelementptr inbounds i8, i8* %706, i32 1
  store i8* %707, i8** %13, align 8
  store i8 %705, i8* %706, align 1
  %708 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %709 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 8
  %711 = load i8*, i8** %13, align 8
  %712 = call i32 @put_unaligned_le16(i32 %710, i8* %711)
  %713 = load i8*, i8** %13, align 8
  %714 = getelementptr inbounds i8, i8* %713, i64 2
  store i8* %714, i8** %13, align 8
  br label %715

715:                                              ; preds = %729, %677
  %716 = load i8*, i8** %13, align 8
  %717 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %718 = bitcast %struct.ieee80211_radiotap_header* %717 to i8*
  %719 = ptrtoint i8* %716 to i64
  %720 = ptrtoint i8* %718 to i64
  %721 = sub i64 %719, %720
  %722 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %723 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %722, i32 0, i32 8
  %724 = load i32, i32* %723, align 4
  %725 = sub nsw i32 %724, 1
  %726 = sext i32 %725 to i64
  %727 = and i64 %721, %726
  %728 = icmp ne i64 %727, 0
  br i1 %728, label %729, label %732

729:                                              ; preds = %715
  %730 = load i8*, i8** %13, align 8
  %731 = getelementptr inbounds i8, i8* %730, i32 1
  store i8* %731, i8** %13, align 8
  store i8 0, i8* %730, align 1
  br label %715

732:                                              ; preds = %715
  br label %733

733:                                              ; preds = %732, %660
  ret void
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_radiotap_header*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i8*) #1

declare dso_local i64 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status*) #1

declare dso_local i32 @put_unaligned_le64(i32, i8*) #1

declare dso_local i32 @ieee80211_calculate_rx_timestamp(%struct.ieee80211_local*, %struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
