; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_status.c_ieee80211_add_tx_radiotap_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_status.c_ieee80211_add_tx_radiotap_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_radiotap_header = type { i32, i32 }

@IEEE80211_RADIOTAP_TX_FLAGS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_DATA_RETRIES = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_RATE = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_TX_FAIL = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_TX_CTS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_TX_RTS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_HAVE_MCS = common dso_local global i8 0, align 1
@IEEE80211_RADIOTAP_MCS_HAVE_GI = common dso_local global i8 0, align 1
@IEEE80211_RADIOTAP_MCS_HAVE_BW = common dso_local global i8 0, align 1
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_SGI = common dso_local global i8 0, align 1
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_BW_40 = common dso_local global i8 0, align 1
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_FMT_GF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*, %struct.sk_buff*, i32, i32)* @ieee80211_add_tx_radiotap_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_add_tx_radiotap_header(%struct.ieee80211_supported_band* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.ieee80211_radiotap_header*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %14)
  store %struct.ieee80211_tx_info* %15, %struct.ieee80211_tx_info** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @skb_push(%struct.sk_buff* %20, i32 %21)
  %23 = inttoptr i64 %22 to %struct.ieee80211_radiotap_header*
  store %struct.ieee80211_radiotap_header* %23, %struct.ieee80211_radiotap_header** %11, align 8
  %24 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @memset(%struct.ieee80211_radiotap_header* %24, i32 0, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @cpu_to_le16(i32 %27)
  %29 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @IEEE80211_RADIOTAP_TX_FLAGS, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* @IEEE80211_RADIOTAP_DATA_RETRIES, align 4
  %34 = shl i32 1, %33
  %35 = or i32 %32, %34
  %36 = call i32 @cpu_to_le32(i32 %35)
  %37 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %11, align 8
  %38 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %11, align 8
  %40 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %39, i64 1
  %41 = bitcast %struct.ieee80211_radiotap_header* %40 to i8*
  store i8* %41, i8** %12, align 8
  %42 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %4
  %51 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* @IEEE80211_RADIOTAP_RATE, align 4
  %63 = shl i32 1, %62
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %11, align 8
  %66 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 5
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %12, align 8
  store i8 %83, i8* %84, align 1
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %86, i8** %12, align 8
  br label %87

87:                                               ; preds = %61, %50, %4
  store i32 0, i32* %13, align 4
  %88 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %87
  %95 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %96 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @is_multicast_ether_addr(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @IEEE80211_RADIOTAP_F_TX_FAIL, align 4
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %100, %94, %87
  %105 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %106 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %104
  %116 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %117 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %115, %104
  %127 = load i32, i32* @IEEE80211_RADIOTAP_F_TX_CTS, align 4
  %128 = load i32, i32* %13, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %13, align 4
  br label %146

130:                                              ; preds = %115
  %131 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %132 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %130
  %142 = load i32, i32* @IEEE80211_RADIOTAP_F_TX_RTS, align 4
  %143 = load i32, i32* %13, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %141, %130
  br label %146

146:                                              ; preds = %145, %126
  %147 = load i32, i32* %13, align 4
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 @put_unaligned_le16(i32 %147, i8* %148)
  %150 = load i8*, i8** %12, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  store i8* %151, i8** %12, align 8
  %152 = load i32, i32* %7, align 4
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %12, align 8
  store i8 %153, i8* %154, align 1
  %155 = load i8*, i8** %12, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %12, align 8
  %157 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %158 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp uge i64 %163, 0
  br i1 %164, label %165, label %267

165:                                              ; preds = %146
  %166 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %167 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %267

176:                                              ; preds = %165
  %177 = load i32, i32* @IEEE80211_RADIOTAP_MCS, align 4
  %178 = shl i32 1, %177
  %179 = call i32 @cpu_to_le32(i32 %178)
  %180 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %11, align 8
  %181 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load i8, i8* @IEEE80211_RADIOTAP_MCS_HAVE_MCS, align 1
  %185 = zext i8 %184 to i32
  %186 = load i8, i8* @IEEE80211_RADIOTAP_MCS_HAVE_GI, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %185, %187
  %189 = load i8, i8* @IEEE80211_RADIOTAP_MCS_HAVE_BW, align 1
  %190 = zext i8 %189 to i32
  %191 = or i32 %188, %190
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %12, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  store i8 %192, i8* %194, align 1
  %195 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %196 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %176
  %206 = load i8, i8* @IEEE80211_RADIOTAP_MCS_SGI, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8*, i8** %12, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %211, %207
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %209, align 1
  br label %214

214:                                              ; preds = %205, %176
  %215 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %216 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %214
  %226 = load i8, i8* @IEEE80211_RADIOTAP_MCS_BW_40, align 1
  %227 = zext i8 %226 to i32
  %228 = load i8*, i8** %12, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = or i32 %231, %227
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %229, align 1
  br label %234

234:                                              ; preds = %225, %214
  %235 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %236 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i64 0
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %234
  %246 = load i8, i8* @IEEE80211_RADIOTAP_MCS_FMT_GF, align 1
  %247 = zext i8 %246 to i32
  %248 = load i8*, i8** %12, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 1
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = or i32 %251, %247
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %249, align 1
  br label %254

254:                                              ; preds = %245, %234
  %255 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %256 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i64 0
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = trunc i64 %261 to i8
  %263 = load i8*, i8** %12, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 2
  store i8 %262, i8* %264, align 1
  %265 = load i8*, i8** %12, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 3
  store i8* %266, i8** %12, align 8
  br label %267

267:                                              ; preds = %254, %165, %146
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_radiotap_header*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
