; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_af_netrom.c_nr_rx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_af_netrom.c_nr_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i16*, i32, %struct.sock* }
%struct.sock = type { i32 (%struct.sock*, i32)*, i32, i32 }
%struct.net_device = type { i32 }
%struct.nr_sock = type { i32, i16, i16, i32, i32, i16, i16, i32, i32, i64, i64, i64, i64, i8*, i8*, i8* }

@NR_PROTOEXT = common dso_local global i16 0, align 2
@NR_PROTO_IP = common dso_local global i16 0, align 2
@NR_NETWORK_LEN = common dso_local global i64 0, align 8
@NR_TRANSPORT_LEN = common dso_local global i64 0, align 8
@NR_CONNACK = common dso_local global i16 0, align 2
@NR_CHOKE_FLAG = common dso_local global i16 0, align 2
@NR_CONNREQ = common dso_local global i16 0, align 2
@sysctl_netrom_reset_circuit = common dso_local global i64 0, align 8
@NR_RESET = common dso_local global i16 0, align 2
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@circuit = common dso_local global i32 0, align 4
@HZ = common dso_local global i16 0, align 2
@NR_STATE_3 = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nr_rx_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.nr_sock*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 2
  store %struct.sock* null, %struct.sock** %22, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i16*, i16** %24, align 8
  %26 = getelementptr inbounds i16, i16* %25, i64 0
  %27 = bitcast i16* %26 to i8**
  store i8** %27, i8*** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i16*, i16** %29, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 7
  %32 = bitcast i16* %31 to i8**
  store i8** %32, i8*** %10, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i16*, i16** %34, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 15
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %12, align 2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i16*, i16** %39, align 8
  %41 = getelementptr inbounds i16, i16* %40, i64 16
  %42 = load i16, i16* %41, align 2
  store i16 %42, i16* %13, align 2
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i16*, i16** %44, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 17
  %47 = load i16, i16* %46, align 2
  store i16 %47, i16* %14, align 2
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i16*, i16** %49, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 18
  %52 = load i16, i16* %51, align 2
  store i16 %52, i16* %15, align 2
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i16*, i16** %54, align 8
  %56 = getelementptr inbounds i16, i16* %55, i64 19
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 15
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %16, align 2
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i16*, i16** %62, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 19
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 240
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %17, align 2
  %69 = load i16, i16* %16, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* @NR_PROTOEXT, align 2
  %72 = zext i16 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %2
  %75 = load i16, i16* %12, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* @NR_PROTO_IP, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load i16, i16* %13, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* @NR_PROTO_IP, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load i64, i64* @NR_NETWORK_LEN, align 8
  %89 = load i64, i64* @NR_TRANSPORT_LEN, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @skb_pull(%struct.sk_buff* %87, i64 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @skb_reset_transport_header(%struct.sk_buff* %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = call i32 @nr_rx_ip(%struct.sk_buff* %94, %struct.net_device* %95)
  store i32 %96, i32* %3, align 4
  br label %369

97:                                               ; preds = %80, %74, %2
  store %struct.sock* null, %struct.sock** %6, align 8
  %98 = load i16, i16* %12, align 2
  %99 = zext i16 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = load i16, i16* %13, align 2
  %103 = zext i16 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load i16, i16* %16, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* @NR_CONNACK, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load i16, i16* %17, align 2
  %113 = zext i16 %112 to i32
  %114 = load i16, i16* @NR_CHOKE_FLAG, align 2
  %115 = zext i16 %114 to i32
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i16, i16* %14, align 2
  %119 = load i16, i16* %15, align 2
  %120 = load i8**, i8*** %9, align 8
  %121 = call %struct.sock* @nr_find_peer(i16 zeroext %118, i16 zeroext %119, i8** %120)
  store %struct.sock* %121, %struct.sock** %6, align 8
  br label %122

122:                                              ; preds = %117, %111, %105
  br label %139

123:                                              ; preds = %101, %97
  %124 = load i16, i16* %16, align 2
  %125 = zext i16 %124 to i32
  %126 = load i16, i16* @NR_CONNREQ, align 2
  %127 = zext i16 %126 to i32
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i16, i16* %12, align 2
  %131 = load i16, i16* %13, align 2
  %132 = load i8**, i8*** %9, align 8
  %133 = call %struct.sock* @nr_find_peer(i16 zeroext %130, i16 zeroext %131, i8** %132)
  store %struct.sock* %133, %struct.sock** %6, align 8
  br label %138

134:                                              ; preds = %123
  %135 = load i16, i16* %12, align 2
  %136 = load i16, i16* %13, align 2
  %137 = call %struct.sock* @nr_find_socket(i16 zeroext %135, i16 zeroext %136)
  store %struct.sock* %137, %struct.sock** %6, align 8
  br label %138

138:                                              ; preds = %134, %129
  br label %139

139:                                              ; preds = %138, %122
  %140 = load %struct.sock*, %struct.sock** %6, align 8
  %141 = icmp ne %struct.sock* %140, null
  br i1 %141, label %142, label %170

142:                                              ; preds = %139
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = call i32 @skb_reset_transport_header(%struct.sk_buff* %143)
  %145 = load i16, i16* %16, align 2
  %146 = zext i16 %145 to i32
  %147 = load i16, i16* @NR_CONNACK, align 2
  %148 = zext i16 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %142
  %151 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 22
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.sock*, %struct.sock** %6, align 8
  %157 = call %struct.nr_sock* @nr_sk(%struct.sock* %156)
  %158 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %163

159:                                              ; preds = %150, %142
  %160 = load %struct.sock*, %struct.sock** %6, align 8
  %161 = call %struct.nr_sock* @nr_sk(%struct.sock* %160)
  %162 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %155
  %164 = load %struct.sock*, %struct.sock** %6, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = call i32 @nr_process_rx_frame(%struct.sock* %164, %struct.sk_buff* %165)
  store i32 %166, i32* %20, align 4
  %167 = load %struct.sock*, %struct.sock** %6, align 8
  %168 = call i32 @bh_unlock_sock(%struct.sock* %167)
  %169 = load i32, i32* %20, align 4
  store i32 %169, i32* %3, align 4
  br label %369

170:                                              ; preds = %139
  %171 = load i16, i16* %16, align 2
  %172 = zext i16 %171 to i32
  %173 = load i16, i16* @NR_CONNREQ, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp ne i32 %172, %174
  br i1 %175, label %176, label %193

176:                                              ; preds = %170
  %177 = load i64, i64* @sysctl_netrom_reset_circuit, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %176
  %180 = load i16, i16* %16, align 2
  %181 = zext i16 %180 to i32
  %182 = load i16, i16* @NR_RESET, align 2
  %183 = zext i16 %182 to i32
  %184 = icmp ne i32 %181, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %179
  %186 = load i16, i16* %17, align 2
  %187 = zext i16 %186 to i32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185, %179
  %190 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %191 = call i32 @nr_transmit_reset(%struct.sk_buff* %190, i32 1)
  br label %192

192:                                              ; preds = %189, %185, %176
  store i32 0, i32* %3, align 4
  br label %369

193:                                              ; preds = %170
  %194 = load i8**, i8*** %10, align 8
  %195 = call %struct.sock* @nr_find_listener(i8** %194)
  store %struct.sock* %195, %struct.sock** %6, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i16*, i16** %197, align 8
  %199 = getelementptr inbounds i16, i16* %198, i64 21
  %200 = bitcast i16* %199 to i8**
  store i8** %200, i8*** %11, align 8
  %201 = load %struct.sock*, %struct.sock** %6, align 8
  %202 = icmp eq %struct.sock* %201, null
  br i1 %202, label %211, label %203

203:                                              ; preds = %193
  %204 = load %struct.sock*, %struct.sock** %6, align 8
  %205 = call i64 @sk_acceptq_is_full(%struct.sock* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %203
  %208 = load %struct.sock*, %struct.sock** %6, align 8
  %209 = call %struct.sock* @nr_make_new(%struct.sock* %208)
  store %struct.sock* %209, %struct.sock** %7, align 8
  %210 = icmp eq %struct.sock* %209, null
  br i1 %210, label %211, label %220

211:                                              ; preds = %207, %203, %193
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = call i32 @nr_transmit_refusal(%struct.sk_buff* %212, i32 0)
  %214 = load %struct.sock*, %struct.sock** %6, align 8
  %215 = icmp ne %struct.sock* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load %struct.sock*, %struct.sock** %6, align 8
  %218 = call i32 @bh_unlock_sock(%struct.sock* %217)
  br label %219

219:                                              ; preds = %216, %211
  store i32 0, i32* %3, align 4
  br label %369

220:                                              ; preds = %207
  %221 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 0
  %223 = load i16*, i16** %222, align 8
  %224 = getelementptr inbounds i16, i16* %223, i64 20
  %225 = load i16, i16* %224, align 2
  store i16 %225, i16* %18, align 2
  %226 = load %struct.sock*, %struct.sock** %7, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 2
  store %struct.sock* %226, %struct.sock** %228, align 8
  %229 = load i32, i32* @TCP_ESTABLISHED, align 4
  %230 = load %struct.sock*, %struct.sock** %7, align 8
  %231 = getelementptr inbounds %struct.sock, %struct.sock* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  %232 = load %struct.sock*, %struct.sock** %7, align 8
  %233 = call %struct.nr_sock* @nr_sk(%struct.sock* %232)
  store %struct.nr_sock* %233, %struct.nr_sock** %8, align 8
  %234 = load i8**, i8*** %10, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %237 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %236, i32 0, i32 15
  store i8* %235, i8** %237, align 8
  %238 = load i8**, i8*** %9, align 8
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %241 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %240, i32 0, i32 14
  store i8* %239, i8** %241, align 8
  %242 = load i8**, i8*** %11, align 8
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %245 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %244, i32 0, i32 13
  store i8* %243, i8** %245, align 8
  %246 = load i16, i16* %12, align 2
  %247 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %248 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %247, i32 0, i32 1
  store i16 %246, i16* %248, align 4
  %249 = load i16, i16* %13, align 2
  %250 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %251 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %250, i32 0, i32 2
  store i16 %249, i16* %251, align 2
  %252 = load %struct.sock*, %struct.sock** %6, align 8
  %253 = call i32 @bh_unlock_sock(%struct.sock* %252)
  %254 = call i32 (...) @nr_find_next_circuit()
  store i32 %254, i32* @circuit, align 4
  %255 = load %struct.sock*, %struct.sock** %6, align 8
  %256 = call i32 @bh_lock_sock(%struct.sock* %255)
  %257 = load i32, i32* @circuit, align 4
  %258 = sdiv i32 %257, 256
  %259 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %260 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 8
  %261 = load i32, i32* @circuit, align 4
  %262 = srem i32 %261, 256
  %263 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %264 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* @circuit, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* @circuit, align 4
  %267 = load i16, i16* %18, align 2
  %268 = zext i16 %267 to i32
  %269 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %270 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %269, i32 0, i32 5
  %271 = load i16, i16* %270, align 8
  %272 = zext i16 %271 to i32
  %273 = icmp slt i32 %268, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %220
  %275 = load i16, i16* %18, align 2
  %276 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %277 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %276, i32 0, i32 5
  store i16 %275, i16* %277, align 8
  br label %278

278:                                              ; preds = %274, %220
  %279 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %280 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %281, 37
  br i1 %282, label %283, label %321

283:                                              ; preds = %278
  %284 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %285 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %284, i32 0, i32 0
  %286 = load i16*, i16** %285, align 8
  %287 = getelementptr inbounds i16, i16* %286, i64 36
  %288 = load i16, i16* %287, align 2
  %289 = zext i16 %288 to i32
  %290 = mul nsw i32 %289, 256
  %291 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %292 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %291, i32 0, i32 0
  %293 = load i16*, i16** %292, align 8
  %294 = getelementptr inbounds i16, i16* %293, i64 35
  %295 = load i16, i16* %294, align 2
  %296 = zext i16 %295 to i32
  %297 = add nsw i32 %290, %296
  %298 = trunc i32 %297 to i16
  store i16 %298, i16* %19, align 2
  %299 = load i16, i16* %19, align 2
  %300 = zext i16 %299 to i32
  %301 = load i16, i16* @HZ, align 2
  %302 = zext i16 %301 to i32
  %303 = mul nsw i32 %300, %302
  %304 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %305 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %304, i32 0, i32 6
  %306 = load i16, i16* %305, align 2
  %307 = zext i16 %306 to i32
  %308 = icmp slt i32 %303, %307
  br i1 %308, label %309, label %318

309:                                              ; preds = %283
  %310 = load i16, i16* %19, align 2
  %311 = zext i16 %310 to i32
  %312 = load i16, i16* @HZ, align 2
  %313 = zext i16 %312 to i32
  %314 = mul nsw i32 %311, %313
  %315 = trunc i32 %314 to i16
  %316 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %317 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %316, i32 0, i32 6
  store i16 %315, i16* %317, align 2
  br label %318

318:                                              ; preds = %309, %283
  %319 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %320 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %319, i32 0, i32 0
  store i32 1, i32* %320, align 8
  br label %324

321:                                              ; preds = %278
  %322 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %323 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %322, i32 0, i32 0
  store i32 0, i32* %323, align 8
  br label %324

324:                                              ; preds = %321, %318
  %325 = load %struct.sock*, %struct.sock** %7, align 8
  %326 = load i16, i16* @NR_CONNACK, align 2
  %327 = call i32 @nr_write_internal(%struct.sock* %325, i16 zeroext %326)
  %328 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %329 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %328, i32 0, i32 7
  store i32 0, i32* %329, align 4
  %330 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %331 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %330, i32 0, i32 12
  store i64 0, i64* %331, align 8
  %332 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %333 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %332, i32 0, i32 11
  store i64 0, i64* %333, align 8
  %334 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %335 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %334, i32 0, i32 10
  store i64 0, i64* %335, align 8
  %336 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %337 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %336, i32 0, i32 9
  store i64 0, i64* %337, align 8
  %338 = load i32, i32* @NR_STATE_3, align 4
  %339 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %340 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %339, i32 0, i32 8
  store i32 %338, i32* %340, align 8
  %341 = load %struct.sock*, %struct.sock** %6, align 8
  %342 = call i32 @sk_acceptq_added(%struct.sock* %341)
  %343 = load %struct.sock*, %struct.sock** %6, align 8
  %344 = getelementptr inbounds %struct.sock, %struct.sock* %343, i32 0, i32 1
  %345 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %346 = call i32 @skb_queue_head(i32* %344, %struct.sk_buff* %345)
  %347 = load %struct.sock*, %struct.sock** %6, align 8
  %348 = load i32, i32* @SOCK_DEAD, align 4
  %349 = call i32 @sock_flag(%struct.sock* %347, i32 %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %360, label %351

351:                                              ; preds = %324
  %352 = load %struct.sock*, %struct.sock** %6, align 8
  %353 = getelementptr inbounds %struct.sock, %struct.sock* %352, i32 0, i32 0
  %354 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %353, align 8
  %355 = load %struct.sock*, %struct.sock** %6, align 8
  %356 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %357 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = call i32 %354(%struct.sock* %355, i32 %358)
  br label %360

360:                                              ; preds = %351, %324
  %361 = load %struct.sock*, %struct.sock** %6, align 8
  %362 = call i32 @bh_unlock_sock(%struct.sock* %361)
  %363 = load %struct.sock*, %struct.sock** %7, align 8
  %364 = call i32 @nr_insert_socket(%struct.sock* %363)
  %365 = load %struct.sock*, %struct.sock** %7, align 8
  %366 = call i32 @nr_start_heartbeat(%struct.sock* %365)
  %367 = load %struct.sock*, %struct.sock** %7, align 8
  %368 = call i32 @nr_start_idletimer(%struct.sock* %367)
  store i32 1, i32* %3, align 4
  br label %369

369:                                              ; preds = %360, %219, %192, %163, %86
  %370 = load i32, i32* %3, align 4
  ret i32 %370
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @nr_rx_ip(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local %struct.sock* @nr_find_peer(i16 zeroext, i16 zeroext, i8**) #1

declare dso_local %struct.sock* @nr_find_socket(i16 zeroext, i16 zeroext) #1

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @nr_process_rx_frame(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @nr_transmit_reset(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock* @nr_find_listener(i8**) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.sock* @nr_make_new(%struct.sock*) #1

declare dso_local i32 @nr_transmit_refusal(%struct.sk_buff*, i32) #1

declare dso_local i32 @nr_find_next_circuit(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @nr_write_internal(%struct.sock*, i16 zeroext) #1

declare dso_local i32 @sk_acceptq_added(%struct.sock*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @nr_insert_socket(%struct.sock*) #1

declare dso_local i32 @nr_start_heartbeat(%struct.sock*) #1

declare dso_local i32 @nr_start_idletimer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
