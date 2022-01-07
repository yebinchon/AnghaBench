; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_rcv_established.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_rcv_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*, i32)*, i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.tcphdr = type { i32, i64 }
%struct.tcp_sock = type { i32, i64, i32, i64, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@TCP_HP_BITS = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i32 0, align 4
@TCP_MIB_INERRS = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@LINUX_MIB_TCPHPHITSTOUSER = common dso_local global i32 0, align 4
@LINUX_MIB_TCPHPHITS = common dso_local global i32 0, align 4
@FLAG_DATA = common dso_local global i32 0, align 4
@FLAG_SLOWPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_rcv_established(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcphdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %14)
  store %struct.tcp_sock* %15, %struct.tcp_sock** %10, align 8
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %20 = call i32 @tcp_flag_word(%struct.tcphdr* %19)
  %21 = load i32, i32* @TCP_HP_BITS, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %316

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %316

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @after(i64 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %316, label %46

46:                                               ; preds = %36
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 16, %53
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %46
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %58 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %59 = call i32 @tcp_parse_aligned_timestamp(%struct.tcp_sock* %57, %struct.tcphdr* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %317

62:                                               ; preds = %56
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %64 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %68 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %66, %70
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %317

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %46
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ule i32 %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 16, %87
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %95 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %100 = call i32 @tcp_store_ts_recent(%struct.tcp_sock* %99)
  br label %101

101:                                              ; preds = %98, %90, %83
  %102 = load %struct.sock*, %struct.sock** %6, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = call i64 @tcp_ack(%struct.sock* %102, %struct.sk_buff* %103, i32 0)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %106 = call i32 @__kfree_skb(%struct.sk_buff* %105)
  %107 = load %struct.sock*, %struct.sock** %6, align 8
  %108 = call i32 @tcp_data_snd_check(%struct.sock* %107)
  store i32 0, i32* %5, align 4
  br label %379

109:                                              ; preds = %79
  %110 = load %struct.sock*, %struct.sock** %6, align 8
  %111 = call i32 @sock_net(%struct.sock* %110)
  %112 = load i32, i32* @TCP_MIB_INERRS, align 4
  %113 = call i32 @TCP_INC_STATS_BH(i32 %111, i32 %112)
  br label %376

114:                                              ; preds = %75
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %115 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %116 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %119 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %203

122:                                              ; preds = %114
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sub i32 %123, %124
  %126 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %127 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ule i32 %125, %129
  br i1 %130, label %131, label %203

131:                                              ; preds = %122
  %132 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %133 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @current, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %131
  %139 = load %struct.sock*, %struct.sock** %6, align 8
  %140 = call i64 @sock_owned_by_user(%struct.sock* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %138
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* @TASK_RUNNING, align 4
  %147 = call i32 @__set_current_state(i32 %146)
  %148 = load %struct.sock*, %struct.sock** %6, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @tcp_copy_to_iovec(%struct.sock* %148, %struct.sk_buff* %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %145
  store i32 1, i32* %12, align 4
  br label %154

154:                                              ; preds = %153, %145
  br label %155

155:                                              ; preds = %154, %142, %138, %131
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %193

158:                                              ; preds = %155
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %162 = sext i32 %161 to i64
  %163 = add i64 16, %162
  %164 = icmp eq i64 %160, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %158
  %166 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %167 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %170 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %168, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %175 = call i32 @tcp_store_ts_recent(%struct.tcp_sock* %174)
  br label %176

176:                                              ; preds = %173, %165, %158
  %177 = load %struct.sock*, %struct.sock** %6, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %179 = call i32 @tcp_rcv_rtt_measure_ts(%struct.sock* %177, %struct.sk_buff* %178)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @__skb_pull(%struct.sk_buff* %180, i32 %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %184 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %183)
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %188 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %187, i32 0, i32 1
  store i64 %186, i64* %188, align 8
  %189 = load %struct.sock*, %struct.sock** %6, align 8
  %190 = call i32 @sock_net(%struct.sock* %189)
  %191 = load i32, i32* @LINUX_MIB_TCPHPHITSTOUSER, align 4
  %192 = call i32 @NET_INC_STATS_BH(i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %176, %155
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load %struct.sock*, %struct.sock** %6, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @tcp_cleanup_rbuf(%struct.sock* %197, i32 %200)
  br label %202

202:                                              ; preds = %196, %193
  br label %203

203:                                              ; preds = %202, %122, %114
  %204 = load i32, i32* %12, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %264, label %206

206:                                              ; preds = %203
  %207 = load %struct.sock*, %struct.sock** %6, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %209 = call i64 @tcp_checksum_complete_user(%struct.sock* %207, %struct.sk_buff* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %371

212:                                              ; preds = %206
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %216 = sext i32 %215 to i64
  %217 = add i64 16, %216
  %218 = icmp eq i64 %214, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %212
  %220 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %221 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %224 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %222, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %229 = call i32 @tcp_store_ts_recent(%struct.tcp_sock* %228)
  br label %230

230:                                              ; preds = %227, %219, %212
  %231 = load %struct.sock*, %struct.sock** %6, align 8
  %232 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %233 = call i32 @tcp_rcv_rtt_measure_ts(%struct.sock* %231, %struct.sk_buff* %232)
  %234 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = load %struct.sock*, %struct.sock** %6, align 8
  %239 = getelementptr inbounds %struct.sock, %struct.sock* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp sgt i32 %237, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %230
  br label %338

243:                                              ; preds = %230
  %244 = load %struct.sock*, %struct.sock** %6, align 8
  %245 = call i32 @sock_net(%struct.sock* %244)
  %246 = load i32, i32* @LINUX_MIB_TCPHPHITS, align 4
  %247 = call i32 @NET_INC_STATS_BH(i32 %245, i32 %246)
  %248 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @__skb_pull(%struct.sk_buff* %248, i32 %249)
  %251 = load %struct.sock*, %struct.sock** %6, align 8
  %252 = getelementptr inbounds %struct.sock, %struct.sock* %251, i32 0, i32 3
  %253 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %254 = call i32 @__skb_queue_tail(i32* %252, %struct.sk_buff* %253)
  %255 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %256 = load %struct.sock*, %struct.sock** %6, align 8
  %257 = call i32 @skb_set_owner_r(%struct.sk_buff* %255, %struct.sock* %256)
  %258 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %259 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %258)
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %263 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %262, i32 0, i32 1
  store i64 %261, i64* %263, align 8
  br label %264

264:                                              ; preds = %243, %203
  %265 = load %struct.sock*, %struct.sock** %6, align 8
  %266 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %267 = call i32 @tcp_event_data_recv(%struct.sock* %265, %struct.sk_buff* %266)
  %268 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %269 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %268)
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %273 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %272, i32 0, i32 5
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %271, %274
  br i1 %275, label %276, label %288

276:                                              ; preds = %264
  %277 = load %struct.sock*, %struct.sock** %6, align 8
  %278 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %279 = load i32, i32* @FLAG_DATA, align 4
  %280 = call i64 @tcp_ack(%struct.sock* %277, %struct.sk_buff* %278, i32 %279)
  %281 = load %struct.sock*, %struct.sock** %6, align 8
  %282 = call i32 @tcp_data_snd_check(%struct.sock* %281)
  %283 = load %struct.sock*, %struct.sock** %6, align 8
  %284 = call i32 @inet_csk_ack_scheduled(%struct.sock* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %276
  br label %303

287:                                              ; preds = %276
  br label %288

288:                                              ; preds = %287, %264
  %289 = load i32, i32* %13, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %288
  %292 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %293 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %296 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %294, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %291, %288
  %300 = load %struct.sock*, %struct.sock** %6, align 8
  %301 = call i32 @__tcp_ack_snd_check(%struct.sock* %300, i32 0)
  br label %302

302:                                              ; preds = %299, %291
  br label %303

303:                                              ; preds = %302, %286
  %304 = load i32, i32* %12, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %308 = call i32 @__kfree_skb(%struct.sk_buff* %307)
  br label %315

309:                                              ; preds = %303
  %310 = load %struct.sock*, %struct.sock** %6, align 8
  %311 = getelementptr inbounds %struct.sock, %struct.sock* %310, i32 0, i32 1
  %312 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %311, align 8
  %313 = load %struct.sock*, %struct.sock** %6, align 8
  %314 = call i32 %312(%struct.sock* %313, i32 0)
  br label %315

315:                                              ; preds = %309, %306
  store i32 0, i32* %5, align 4
  br label %379

316:                                              ; preds = %36, %27, %4
  br label %317

317:                                              ; preds = %316, %73, %61
  %318 = load i32, i32* %9, align 4
  %319 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %320 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = shl i32 %321, 2
  %323 = icmp ult i32 %318, %322
  br i1 %323, label %329, label %324

324:                                              ; preds = %317
  %325 = load %struct.sock*, %struct.sock** %6, align 8
  %326 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %327 = call i64 @tcp_checksum_complete_user(%struct.sock* %325, %struct.sk_buff* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %324, %317
  br label %371

330:                                              ; preds = %324
  %331 = load %struct.sock*, %struct.sock** %6, align 8
  %332 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %333 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %334 = call i32 @tcp_validate_incoming(%struct.sock* %331, %struct.sk_buff* %332, %struct.tcphdr* %333, i32 1)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %330
  store i32 0, i32* %5, align 4
  br label %379

337:                                              ; preds = %330
  br label %338

338:                                              ; preds = %337, %242
  %339 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %340 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %338
  %344 = load %struct.sock*, %struct.sock** %6, align 8
  %345 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %346 = load i32, i32* @FLAG_SLOWPATH, align 4
  %347 = call i64 @tcp_ack(%struct.sock* %344, %struct.sk_buff* %345, i32 %346)
  %348 = icmp slt i64 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %343
  br label %376

350:                                              ; preds = %343, %338
  %351 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %352 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %353 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %352)
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = call i32 @tcp_replace_ts_recent(%struct.tcp_sock* %351, i64 %355)
  %357 = load %struct.sock*, %struct.sock** %6, align 8
  %358 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %359 = call i32 @tcp_rcv_rtt_measure_ts(%struct.sock* %357, %struct.sk_buff* %358)
  %360 = load %struct.sock*, %struct.sock** %6, align 8
  %361 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %362 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %363 = call i32 @tcp_urg(%struct.sock* %360, %struct.sk_buff* %361, %struct.tcphdr* %362)
  %364 = load %struct.sock*, %struct.sock** %6, align 8
  %365 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %366 = call i32 @tcp_data_queue(%struct.sock* %364, %struct.sk_buff* %365)
  %367 = load %struct.sock*, %struct.sock** %6, align 8
  %368 = call i32 @tcp_data_snd_check(%struct.sock* %367)
  %369 = load %struct.sock*, %struct.sock** %6, align 8
  %370 = call i32 @tcp_ack_snd_check(%struct.sock* %369)
  store i32 0, i32* %5, align 4
  br label %379

371:                                              ; preds = %329, %211
  %372 = load %struct.sock*, %struct.sock** %6, align 8
  %373 = call i32 @sock_net(%struct.sock* %372)
  %374 = load i32, i32* @TCP_MIB_INERRS, align 4
  %375 = call i32 @TCP_INC_STATS_BH(i32 %373, i32 %374)
  br label %376

376:                                              ; preds = %371, %349, %109
  %377 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %378 = call i32 @__kfree_skb(%struct.sk_buff* %377)
  store i32 0, i32* %5, align 4
  br label %379

379:                                              ; preds = %376, %350, %336, %315, %101
  %380 = load i32, i32* %5, align 4
  ret i32 %380
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_flag_word(%struct.tcphdr*) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @after(i64, i32) #1

declare dso_local i32 @tcp_parse_aligned_timestamp(%struct.tcp_sock*, %struct.tcphdr*) #1

declare dso_local i32 @tcp_store_ts_recent(%struct.tcp_sock*) #1

declare dso_local i64 @tcp_ack(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @tcp_data_snd_check(%struct.sock*) #1

declare dso_local i32 @TCP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @tcp_copy_to_iovec(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_rcv_rtt_measure_ts(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @tcp_cleanup_rbuf(%struct.sock*, i32) #1

declare dso_local i64 @tcp_checksum_complete_user(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @tcp_event_data_recv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @inet_csk_ack_scheduled(%struct.sock*) #1

declare dso_local i32 @__tcp_ack_snd_check(%struct.sock*, i32) #1

declare dso_local i32 @tcp_validate_incoming(%struct.sock*, %struct.sk_buff*, %struct.tcphdr*, i32) #1

declare dso_local i32 @tcp_replace_ts_recent(%struct.tcp_sock*, i64) #1

declare dso_local i32 @tcp_urg(%struct.sock*, %struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local i32 @tcp_data_queue(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_ack_snd_check(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
