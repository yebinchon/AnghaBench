; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_ieee80211_sta_ps_deliver_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_ieee80211_sta_ps_deliver_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i64, %struct.sk_buff_head*, %struct.sk_buff_head*, %struct.ieee80211_sub_if_data* }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@WLAN_STA_SP = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@IEEE80211_FRAME_RELEASE_PSPOLL = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_PS_BUFFER = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREDATA = common dso_local global i32 0, align 4
@IEEE80211_FRAME_RELEASE_UAPSD = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_EOSP = common dso_local global i32 0, align 4
@IEEE80211_TX_STATUS_EOSP = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, i32, i32, i32)* @ieee80211_sta_ps_deliver_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_sta_ps_deliver_response(%struct.sta_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.sk_buff_head, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sk_buff_head, align 4
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ieee80211_tx_info*, align 8
  %24 = alloca %struct.ieee80211_hdr*, align 8
  %25 = alloca i32*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %26 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 3
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %27, align 8
  store %struct.ieee80211_sub_if_data* %28, %struct.ieee80211_sub_if_data** %9, align 8
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %30, align 8
  store %struct.ieee80211_local* %31, %struct.ieee80211_local** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %14, align 8
  %32 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %33 = load i32, i32* @WLAN_STA_SP, align 4
  %34 = call i32 @set_sta_flag(%struct.sta_info* %32, i32 %33)
  %35 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %15)
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %137, %4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %140

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %137

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  %49 = call i64 @ieee80211_tids_for_ac(i32 %48)
  store i64 %49, i64* %16, align 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %117, label %52

52:                                               ; preds = %47
  %53 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %16, align 8
  %57 = and i64 %55, %56
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 1, i32* %11, align 4
  br label %101

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %95, %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %62
  %66 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 2
  %68 = load %struct.sk_buff_head*, %struct.sk_buff_head** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %68, i64 %70
  %72 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %71)
  store %struct.sk_buff* %72, %struct.sk_buff** %17, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %91, label %75

75:                                               ; preds = %65
  %76 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %77 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %76, i32 0, i32 1
  %78 = load %struct.sk_buff_head*, %struct.sk_buff_head** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %78, i64 %80
  %82 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %17, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %85, %75
  br label %91

91:                                               ; preds = %90, %65
  %92 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %6, align 4
  store i32 1, i32* %11, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %99 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %15, %struct.sk_buff* %98)
  br label %62

100:                                              ; preds = %94, %62
  br label %101

101:                                              ; preds = %100, %60
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @IEEE80211_FRAME_RELEASE_PSPOLL, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @hweight16(i64 %106)
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  store i32 1, i32* %12, align 4
  %110 = load i64, i64* %14, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @ffs(i32 %111)
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @BIT(i32 %113)
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %14, align 8
  br label %140

116:                                              ; preds = %105, %101
  br label %117

117:                                              ; preds = %116, %47
  %118 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %119 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %118, i32 0, i32 2
  %120 = load %struct.sk_buff_head*, %struct.sk_buff_head** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %120, i64 %122
  %124 = call i64 @skb_queue_empty(%struct.sk_buff_head* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %117
  %127 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %128 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %127, i32 0, i32 1
  %129 = load %struct.sk_buff_head*, %struct.sk_buff_head** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %129, i64 %131
  %133 = call i64 @skb_queue_empty(%struct.sk_buff_head* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %126, %117
  store i32 1, i32* %12, align 4
  br label %140

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %46
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %36

140:                                              ; preds = %135, %109, %36
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %7, align 4
  %145 = xor i32 %144, -1
  %146 = call i32 @ffs(i32 %145)
  %147 = sub nsw i32 %146, 1
  %148 = shl i32 %147, 1
  %149 = sub nsw i32 7, %148
  store i32 %149, i32* %18, align 4
  %150 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %151 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @ieee80211_send_null_response(%struct.ieee80211_sub_if_data* %150, %struct.sta_info* %151, i32 %152, i32 %153)
  br label %274

155:                                              ; preds = %140
  %156 = load i64, i64* %14, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %266, label %158

158:                                              ; preds = %155
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %159 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %19)
  br label %160

160:                                              ; preds = %251, %158
  %161 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %15)
  store %struct.sk_buff* %161, %struct.sk_buff** %20, align 8
  %162 = icmp ne %struct.sk_buff* %161, null
  br i1 %162, label %163, label %254

163:                                              ; preds = %160
  %164 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %165 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %164)
  store %struct.ieee80211_tx_info* %165, %struct.ieee80211_tx_info** %23, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i8*
  %170 = bitcast i8* %169 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %170, %struct.ieee80211_hdr** %24, align 8
  store i32* null, i32** %25, align 8
  %171 = load i32, i32* %21, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %21, align 4
  %173 = load i32, i32* @IEEE80211_TX_CTL_NO_PS_BUFFER, align 4
  %174 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %23, align 8
  %175 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %163
  %181 = call i64 @skb_queue_empty(%struct.sk_buff_head* %15)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %180, %163
  %184 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %185 = call i32 @cpu_to_le16(i32 %184)
  %186 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %24, align 8
  %187 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %198

190:                                              ; preds = %180
  %191 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %192 = xor i32 %191, -1
  %193 = call i32 @cpu_to_le16(i32 %192)
  %194 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %24, align 8
  %195 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %190, %183
  %199 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %24, align 8
  %200 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @ieee80211_is_data_qos(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %198
  %205 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %24, align 8
  %206 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @ieee80211_is_qos_nullfunc(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %204, %198
  %211 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %24, align 8
  %212 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %211)
  store i32* %212, i32** %25, align 8
  br label %213

213:                                              ; preds = %210, %204
  %214 = call i64 @skb_queue_empty(%struct.sk_buff_head* %15)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %213
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @IEEE80211_FRAME_RELEASE_UAPSD, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = load i32*, i32** %25, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load i32, i32* @IEEE80211_QOS_CTL_EOSP, align 4
  %225 = load i32*, i32** %25, align 8
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %224
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %223, %220, %216
  %229 = load i32, i32* @IEEE80211_TX_STATUS_EOSP, align 4
  %230 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %231 = or i32 %229, %230
  %232 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %23, align 8
  %233 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %228, %213
  %237 = load i32*, i32** %25, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %247

239:                                              ; preds = %236
  %240 = load i32*, i32** %25, align 8
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @IEEE80211_QOS_CTL_TID_MASK, align 4
  %243 = and i32 %241, %242
  %244 = call i32 @BIT(i32 %243)
  %245 = load i32, i32* %22, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %22, align 4
  br label %251

247:                                              ; preds = %236
  %248 = call i32 @BIT(i32 0)
  %249 = load i32, i32* %22, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %22, align 4
  br label %251

251:                                              ; preds = %247, %239
  %252 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %253 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %19, %struct.sk_buff* %252)
  br label %160

254:                                              ; preds = %160
  %255 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %256 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %257 = load i32, i32* %22, align 4
  %258 = load i32, i32* %21, align 4
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %12, align 4
  %261 = call i32 @drv_allow_buffered_frames(%struct.ieee80211_local* %255, %struct.sta_info* %256, i32 %257, i32 %258, i32 %259, i32 %260)
  %262 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %263 = call i32 @ieee80211_add_pending_skbs(%struct.ieee80211_local* %262, %struct.sk_buff_head* %19)
  %264 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %265 = call i32 @sta_info_recalc_tim(%struct.sta_info* %264)
  br label %274

266:                                              ; preds = %155
  %267 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %268 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %269 = load i64, i64* %14, align 8
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* %8, align 4
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @drv_release_buffered_frames(%struct.ieee80211_local* %267, %struct.sta_info* %268, i64 %269, i32 %270, i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %143, %266, %254
  ret void
}

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ieee80211_tids_for_ac(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @hweight16(i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @ieee80211_send_null_response(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @drv_allow_buffered_frames(%struct.ieee80211_local*, %struct.sta_info*, i32, i32, i32, i32) #1

declare dso_local i32 @ieee80211_add_pending_skbs(%struct.ieee80211_local*, %struct.sk_buff_head*) #1

declare dso_local i32 @sta_info_recalc_tim(%struct.sta_info*) #1

declare dso_local i32 @drv_release_buffered_frames(%struct.ieee80211_local*, %struct.sta_info*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
