; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_sacktag_write_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_sacktag_write_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_connection_sock = type { i64 }
%struct.tcp_sock = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, %struct.tcp_sack_block* }
%struct.tcp_sack_block = type { i64, i64 }
%struct.tcp_sack_block_wire = type { i32, i32 }
%struct.tcp_sacktag_state = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@TCP_NUM_SACKS = common dso_local global i32 0, align 4
@TCPOLEN_SACK_BASE = common dso_local global i8 0, align 1
@FLAG_DSACKING_ACK = common dso_local global i32 0, align 4
@LINUX_MIB_TCPDSACKIGNOREDNOUNDO = common dso_local global i32 0, align 4
@LINUX_MIB_TCPDSACKIGNOREDOLD = common dso_local global i32 0, align 4
@LINUX_MIB_TCPSACKDISCARD = common dso_local global i32 0, align 4
@FLAG_DATA_LOST = common dso_local global i32 0, align 4
@FLAG_ONLY_ORIG_SACKED = common dso_local global i32 0, align 4
@TCP_CA_Loss = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i64)* @tcp_sacktag_write_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_sacktag_write_queue(%struct.sock* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inet_connection_sock*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcp_sack_block_wire*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tcp_sack_block*, align 8
  %15 = alloca %struct.tcp_sacktag_state, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.tcp_sack_block*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %30)
  store %struct.inet_connection_sock* %31, %struct.inet_connection_sock** %8, align 8
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %32)
  store %struct.tcp_sock* %33, %struct.tcp_sock** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i8* @skb_transport_header(%struct.sk_buff* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = bitcast i8* %43 to %struct.tcp_sack_block_wire*
  store %struct.tcp_sack_block_wire* %44, %struct.tcp_sack_block_wire** %11, align 8
  %45 = load i32, i32* @TCP_NUM_SACKS, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %12, align 8
  %48 = alloca %struct.tcp_sack_block, i64 %46, align 16
  store i64 %46, i64* %13, align 8
  %49 = load i32, i32* @TCP_NUM_SACKS, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @TCPOLEN_SACK_BASE, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %53, %55
  %57 = ashr i32 %56, 3
  %58 = trunc i32 %57 to i8
  %59 = call i32 @min(i32 %49, i8 zeroext %58)
  store i32 %59, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %60 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %3
  %70 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %71 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @WARN_ON(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %77 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.sock*, %struct.sock** %5, align 8
  %80 = call i32 @tcp_highest_sack_reset(%struct.sock* %79)
  br label %81

81:                                               ; preds = %78, %3
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @tcp_check_dsack(%struct.sock* %82, %struct.sk_buff* %83, %struct.tcp_sack_block_wire* %84, i32 %85, i64 %86)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load i32, i32* @FLAG_DSACKING_ACK, align 4
  %92 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %90, %81
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %102 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = call i64 @before(i64 %99, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %622

108:                                              ; preds = %95
  %109 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %110 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %619

114:                                              ; preds = %108
  store i32 0, i32* %18, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %115

115:                                              ; preds = %222, %114
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %225

119:                                              ; preds = %115
  %120 = load i32, i32* %20, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, 0
  br label %125

125:                                              ; preds = %122, %119
  %126 = phi i1 [ false, %119 ], [ %124, %122 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %24, align 4
  %128 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %128, i64 %130
  %132 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %131, i32 0, i32 1
  %133 = call i8* @get_unaligned_be32(i32* %132)
  %134 = ptrtoint i8* %133 to i64
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %136
  %138 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %137, i32 0, i32 0
  store i64 %134, i64* %138, align 16
  %139 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %11, align 8
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %139, i64 %141
  %143 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %142, i32 0, i32 0
  %144 = call i8* @get_unaligned_be32(i32* %143)
  %145 = ptrtoint i8* %144 to i64
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %147
  %149 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %148, i32 0, i32 1
  store i64 %145, i64* %149, align 8
  %150 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %151 = load i32, i32* %24, align 4
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %153
  %155 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 16
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %158
  %160 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @tcp_is_sackblock_valid(%struct.tcp_sock* %150, i32 %151, i64 %156, i64 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %209, label %164

164:                                              ; preds = %125
  %165 = load i32, i32* %24, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %169 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %168, i32 0, i32 9
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* @LINUX_MIB_TCPDSACKIGNOREDNOUNDO, align 4
  store i32 %173, i32* %25, align 4
  br label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @LINUX_MIB_TCPDSACKIGNOREDOLD, align 4
  store i32 %175, i32* %25, align 4
  br label %176

176:                                              ; preds = %174, %172
  br label %200

177:                                              ; preds = %164
  %178 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %179 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %178)
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %183 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %181, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %177
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %188
  %190 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %193 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = call i64 @after(i64 %191, i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %186
  br label %222

198:                                              ; preds = %186, %177
  %199 = load i32, i32* @LINUX_MIB_TCPSACKDISCARD, align 4
  store i32 %199, i32* %25, align 4
  br label %200

200:                                              ; preds = %198, %176
  %201 = load %struct.sock*, %struct.sock** %5, align 8
  %202 = call i32 @sock_net(%struct.sock* %201)
  %203 = load i32, i32* %25, align 4
  %204 = call i32 @NET_INC_STATS_BH(i32 %202, i32 %203)
  %205 = load i32, i32* %20, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  store i32 -1, i32* %22, align 4
  br label %208

208:                                              ; preds = %207, %200
  br label %222

209:                                              ; preds = %125
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %211
  %213 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %7, align 8
  %216 = call i64 @after(i64 %214, i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %209
  br label %222

219:                                              ; preds = %209
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %18, align 4
  br label %222

222:                                              ; preds = %219, %218, %208, %197
  %223 = load i32, i32* %20, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %20, align 4
  br label %115

225:                                              ; preds = %115
  %226 = load i32, i32* %18, align 4
  %227 = sub nsw i32 %226, 1
  store i32 %227, i32* %20, align 4
  br label %228

228:                                              ; preds = %281, %225
  %229 = load i32, i32* %20, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %284

231:                                              ; preds = %228
  store i32 0, i32* %21, align 4
  br label %232

232:                                              ; preds = %277, %231
  %233 = load i32, i32* %21, align 4
  %234 = load i32, i32* %20, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %280

236:                                              ; preds = %232
  %237 = load i32, i32* %21, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %238
  %240 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 16
  %242 = load i32, i32* %21, align 4
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %244
  %246 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 16
  %248 = call i64 @after(i64 %241, i64 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %276

250:                                              ; preds = %236
  %251 = load i32, i32* %21, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %252
  %254 = load i32, i32* %21, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %256
  %258 = bitcast %struct.tcp_sack_block* %253 to { i64, i64 }*
  %259 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 16
  %261 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = bitcast %struct.tcp_sack_block* %257 to { i64, i64 }*
  %264 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 16
  %266 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %263, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @swap(i64 %260, i64 %262, i64 %265, i64 %267)
  %269 = load i32, i32* %21, align 4
  %270 = load i32, i32* %22, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %250
  %273 = load i32, i32* %21, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %22, align 4
  br label %275

275:                                              ; preds = %272, %250
  br label %276

276:                                              ; preds = %275, %236
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %21, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %21, align 4
  br label %232

280:                                              ; preds = %232
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %20, align 4
  %283 = add nsw i32 %282, -1
  store i32 %283, i32* %20, align 4
  br label %228

284:                                              ; preds = %228
  %285 = load %struct.sock*, %struct.sock** %5, align 8
  %286 = call %struct.sk_buff* @tcp_write_queue_head(%struct.sock* %285)
  store %struct.sk_buff* %286, %struct.sk_buff** %16, align 8
  %287 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 2
  store i32 0, i32* %287, align 8
  store i32 0, i32* %20, align 4
  %288 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %289 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %288, i32 0, i32 8
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %302, label %292

292:                                              ; preds = %284
  %293 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %294 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %293, i32 0, i32 10
  %295 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %294, align 8
  %296 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %297 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %296, i32 0, i32 10
  %298 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %297, align 8
  %299 = call i32 @ARRAY_SIZE(%struct.tcp_sack_block* %298)
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %295, i64 %300
  store %struct.tcp_sack_block* %301, %struct.tcp_sack_block** %14, align 8
  br label %328

302:                                              ; preds = %284
  %303 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %304 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %303, i32 0, i32 10
  %305 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %304, align 8
  store %struct.tcp_sack_block* %305, %struct.tcp_sack_block** %14, align 8
  br label %306

306:                                              ; preds = %324, %302
  %307 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %308 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %309 = call i64 @tcp_sack_cache_ok(%struct.tcp_sock* %307, %struct.tcp_sack_block* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %306
  %312 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %313 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %311
  %317 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %318 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  %321 = xor i1 %320, true
  br label %322

322:                                              ; preds = %316, %311, %306
  %323 = phi i1 [ false, %311 ], [ false, %306 ], [ %321, %316 ]
  br i1 %323, label %324, label %327

324:                                              ; preds = %322
  %325 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %326 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %325, i32 1
  store %struct.tcp_sack_block* %326, %struct.tcp_sack_block** %14, align 8
  br label %306

327:                                              ; preds = %322
  br label %328

328:                                              ; preds = %327, %292
  br label %329

329:                                              ; preds = %519, %467, %328
  %330 = load i32, i32* %20, align 4
  %331 = load i32, i32* %18, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %522

333:                                              ; preds = %329
  %334 = load i32, i32* %20, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %335
  %337 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 16
  store i64 %338, i64* %26, align 8
  %339 = load i32, i32* %20, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %340
  %342 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %27, align 8
  %344 = load i32, i32* %19, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %333
  %347 = load i32, i32* %20, align 4
  %348 = load i32, i32* %22, align 4
  %349 = icmp eq i32 %347, %348
  br label %350

350:                                              ; preds = %346, %333
  %351 = phi i1 [ false, %333 ], [ %349, %346 ]
  %352 = zext i1 %351 to i32
  store i32 %352, i32* %28, align 4
  store %struct.tcp_sack_block* null, %struct.tcp_sack_block** %29, align 8
  %353 = load i32, i32* %19, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %350
  %356 = load i32, i32* %20, align 4
  %357 = add nsw i32 %356, 1
  %358 = load i32, i32* %22, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %365

360:                                              ; preds = %355
  %361 = load i32, i32* %20, align 4
  %362 = add nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %363
  store %struct.tcp_sack_block* %364, %struct.tcp_sack_block** %29, align 8
  br label %365

365:                                              ; preds = %360, %355, %350
  %366 = load i64, i64* %27, align 8
  %367 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %368 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %367, i32 0, i32 4
  %369 = load i64, i64* %368, align 8
  %370 = call i64 @after(i64 %366, i64 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %365
  %373 = load i32, i32* @FLAG_DATA_LOST, align 4
  %374 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = or i32 %375, %373
  store i32 %376, i32* %374, align 8
  br label %377

377:                                              ; preds = %372, %365
  br label %378

378:                                              ; preds = %393, %377
  %379 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %380 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %381 = call i64 @tcp_sack_cache_ok(%struct.tcp_sock* %379, %struct.tcp_sack_block* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %391

383:                                              ; preds = %378
  %384 = load i64, i64* %26, align 8
  %385 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %386 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = call i64 @before(i64 %384, i64 %387)
  %389 = icmp ne i64 %388, 0
  %390 = xor i1 %389, true
  br label %391

391:                                              ; preds = %383, %378
  %392 = phi i1 [ false, %378 ], [ %390, %383 ]
  br i1 %392, label %393, label %396

393:                                              ; preds = %391
  %394 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %395 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %394, i32 1
  store %struct.tcp_sack_block* %395, %struct.tcp_sack_block** %14, align 8
  br label %378

396:                                              ; preds = %391
  %397 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %398 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %399 = call i64 @tcp_sack_cache_ok(%struct.tcp_sock* %397, %struct.tcp_sack_block* %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %476

401:                                              ; preds = %396
  %402 = load i32, i32* %28, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %476, label %404

404:                                              ; preds = %401
  %405 = load i64, i64* %27, align 8
  %406 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %407 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = call i64 @after(i64 %405, i64 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %476

411:                                              ; preds = %404
  %412 = load i64, i64* %26, align 8
  %413 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %414 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = call i64 @before(i64 %412, i64 %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %432

418:                                              ; preds = %411
  %419 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %420 = load %struct.sock*, %struct.sock** %5, align 8
  %421 = load i64, i64* %26, align 8
  %422 = call %struct.sk_buff* @tcp_sacktag_skip(%struct.sk_buff* %419, %struct.sock* %420, %struct.tcp_sacktag_state* %15, i64 %421)
  store %struct.sk_buff* %422, %struct.sk_buff** %16, align 8
  %423 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %424 = load %struct.sock*, %struct.sock** %5, align 8
  %425 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %29, align 8
  %426 = load i64, i64* %26, align 8
  %427 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %428 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i32, i32* %28, align 4
  %431 = call %struct.sk_buff* @tcp_sacktag_walk(%struct.sk_buff* %423, %struct.sock* %424, %struct.tcp_sack_block* %425, %struct.tcp_sacktag_state* %15, i64 %426, i64 %429, i32 %430)
  store %struct.sk_buff* %431, %struct.sk_buff** %16, align 8
  br label %432

432:                                              ; preds = %418, %411
  %433 = load i64, i64* %27, align 8
  %434 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %435 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = call i64 @after(i64 %433, i64 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %440, label %439

439:                                              ; preds = %432
  br label %506

440:                                              ; preds = %432
  %441 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %442 = load %struct.sock*, %struct.sock** %5, align 8
  %443 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %29, align 8
  %444 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %445 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  %447 = call %struct.sk_buff* @tcp_maybe_skipping_dsack(%struct.sk_buff* %441, %struct.sock* %442, %struct.tcp_sack_block* %443, %struct.tcp_sacktag_state* %15, i64 %446)
  store %struct.sk_buff* %447, %struct.sk_buff** %16, align 8
  %448 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %449 = call i64 @tcp_highest_sack_seq(%struct.tcp_sock* %448)
  %450 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %451 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = icmp eq i64 %449, %452
  br i1 %453, label %454, label %467

454:                                              ; preds = %440
  %455 = load %struct.sock*, %struct.sock** %5, align 8
  %456 = call %struct.sk_buff* @tcp_highest_sack(%struct.sock* %455)
  store %struct.sk_buff* %456, %struct.sk_buff** %16, align 8
  %457 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %458 = icmp eq %struct.sk_buff* %457, null
  br i1 %458, label %459, label %460

459:                                              ; preds = %454
  br label %522

460:                                              ; preds = %454
  %461 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %462 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 8
  %464 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 2
  store i32 %463, i32* %464, align 8
  %465 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %466 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %465, i32 1
  store %struct.tcp_sack_block* %466, %struct.tcp_sack_block** %14, align 8
  br label %498

467:                                              ; preds = %440
  %468 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %469 = load %struct.sock*, %struct.sock** %5, align 8
  %470 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %471 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %470, i32 0, i32 1
  %472 = load i64, i64* %471, align 8
  %473 = call %struct.sk_buff* @tcp_sacktag_skip(%struct.sk_buff* %468, %struct.sock* %469, %struct.tcp_sacktag_state* %15, i64 %472)
  store %struct.sk_buff* %473, %struct.sk_buff** %16, align 8
  %474 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %475 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %474, i32 1
  store %struct.tcp_sack_block* %475, %struct.tcp_sack_block** %14, align 8
  br label %329

476:                                              ; preds = %404, %401, %396
  %477 = load i64, i64* %26, align 8
  %478 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %479 = call i64 @tcp_highest_sack_seq(%struct.tcp_sock* %478)
  %480 = call i64 @before(i64 %477, i64 %479)
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %493, label %482

482:                                              ; preds = %476
  %483 = load %struct.sock*, %struct.sock** %5, align 8
  %484 = call %struct.sk_buff* @tcp_highest_sack(%struct.sock* %483)
  store %struct.sk_buff* %484, %struct.sk_buff** %16, align 8
  %485 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %486 = icmp eq %struct.sk_buff* %485, null
  br i1 %486, label %487, label %488

487:                                              ; preds = %482
  br label %522

488:                                              ; preds = %482
  %489 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %490 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 2
  store i32 %491, i32* %492, align 8
  br label %493

493:                                              ; preds = %488, %476
  %494 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %495 = load %struct.sock*, %struct.sock** %5, align 8
  %496 = load i64, i64* %26, align 8
  %497 = call %struct.sk_buff* @tcp_sacktag_skip(%struct.sk_buff* %494, %struct.sock* %495, %struct.tcp_sacktag_state* %15, i64 %496)
  store %struct.sk_buff* %497, %struct.sk_buff** %16, align 8
  br label %498

498:                                              ; preds = %493, %460
  %499 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %500 = load %struct.sock*, %struct.sock** %5, align 8
  %501 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %29, align 8
  %502 = load i64, i64* %26, align 8
  %503 = load i64, i64* %27, align 8
  %504 = load i32, i32* %28, align 4
  %505 = call %struct.sk_buff* @tcp_sacktag_walk(%struct.sk_buff* %499, %struct.sock* %500, %struct.tcp_sack_block* %501, %struct.tcp_sacktag_state* %15, i64 %502, i64 %503, i32 %504)
  store %struct.sk_buff* %505, %struct.sk_buff** %16, align 8
  br label %506

506:                                              ; preds = %498, %439
  %507 = load i64, i64* %27, align 8
  %508 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %509 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %508, i32 0, i32 5
  %510 = load i64, i64* %509, align 8
  %511 = call i64 @after(i64 %507, i64 %510)
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %519

513:                                              ; preds = %506
  %514 = load i32, i32* @FLAG_ONLY_ORIG_SACKED, align 4
  %515 = xor i32 %514, -1
  %516 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = and i32 %517, %515
  store i32 %518, i32* %516, align 8
  br label %519

519:                                              ; preds = %513, %506
  %520 = load i32, i32* %20, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %20, align 4
  br label %329

522:                                              ; preds = %487, %459, %329
  store i32 0, i32* %20, align 4
  br label %523

523:                                              ; preds = %547, %522
  %524 = load i32, i32* %20, align 4
  %525 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %526 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %525, i32 0, i32 10
  %527 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %526, align 8
  %528 = call i32 @ARRAY_SIZE(%struct.tcp_sack_block* %527)
  %529 = load i32, i32* %18, align 4
  %530 = sub nsw i32 %528, %529
  %531 = icmp slt i32 %524, %530
  br i1 %531, label %532, label %550

532:                                              ; preds = %523
  %533 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %534 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %533, i32 0, i32 10
  %535 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %534, align 8
  %536 = load i32, i32* %20, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %535, i64 %537
  %539 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %538, i32 0, i32 0
  store i64 0, i64* %539, align 8
  %540 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %541 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %540, i32 0, i32 10
  %542 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %541, align 8
  %543 = load i32, i32* %20, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %542, i64 %544
  %546 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %545, i32 0, i32 1
  store i64 0, i64* %546, align 8
  br label %547

547:                                              ; preds = %532
  %548 = load i32, i32* %20, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %20, align 4
  br label %523

550:                                              ; preds = %523
  store i32 0, i32* %21, align 4
  br label %551

551:                                              ; preds = %568, %550
  %552 = load i32, i32* %21, align 4
  %553 = load i32, i32* %18, align 4
  %554 = icmp slt i32 %552, %553
  br i1 %554, label %555, label %571

555:                                              ; preds = %551
  %556 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %557 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %556, i32 0, i32 10
  %558 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %557, align 8
  %559 = load i32, i32* %20, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %20, align 4
  %561 = sext i32 %559 to i64
  %562 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %558, i64 %561
  %563 = load i32, i32* %21, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %48, i64 %564
  %566 = bitcast %struct.tcp_sack_block* %562 to i8*
  %567 = bitcast %struct.tcp_sack_block* %565 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %566, i8* align 16 %567, i64 16, i1 false)
  br label %568

568:                                              ; preds = %555
  %569 = load i32, i32* %21, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %21, align 4
  br label %551

571:                                              ; preds = %551
  %572 = load %struct.sock*, %struct.sock** %5, align 8
  %573 = call i32 @tcp_mark_lost_retrans(%struct.sock* %572)
  %574 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %575 = call i32 @tcp_verify_left_out(%struct.tcp_sock* %574)
  %576 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 1
  %577 = load i64, i64* %576, align 8
  %578 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %579 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %578, i32 0, i32 1
  %580 = load i32, i32* %579, align 8
  %581 = sext i32 %580 to i64
  %582 = icmp slt i64 %577, %581
  br i1 %582, label %583, label %618

583:                                              ; preds = %571
  %584 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %585 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %584, i32 0, i32 0
  %586 = load i64, i64* %585, align 8
  %587 = load i64, i64* @TCP_CA_Loss, align 8
  %588 = icmp ne i64 %586, %587
  br i1 %588, label %594, label %589

589:                                              ; preds = %583
  %590 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %591 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %590, i32 0, i32 9
  %592 = load i64, i64* %591, align 8
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %618

594:                                              ; preds = %589, %583
  %595 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %596 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %595, i32 0, i32 5
  %597 = load i64, i64* %596, align 8
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %608

599:                                              ; preds = %594
  %600 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %601 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %600, i32 0, i32 3
  %602 = load i64, i64* %601, align 8
  %603 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %604 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %603, i32 0, i32 5
  %605 = load i64, i64* %604, align 8
  %606 = call i64 @after(i64 %602, i64 %605)
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %618

608:                                              ; preds = %599, %594
  %609 = load %struct.sock*, %struct.sock** %5, align 8
  %610 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %611 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %610, i32 0, i32 1
  %612 = load i32, i32* %611, align 8
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 1
  %615 = load i64, i64* %614, align 8
  %616 = sub nsw i64 %613, %615
  %617 = call i32 @tcp_update_reordering(%struct.sock* %609, i64 %616, i32 0)
  br label %618

618:                                              ; preds = %608, %599, %589, %571
  br label %619

619:                                              ; preds = %618, %113
  %620 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %15, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  store i32 %621, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %622

622:                                              ; preds = %619, %107
  %623 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %623)
  %624 = load i32, i32* %4, align 4
  ret i32 %624
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i8* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @min(i32, i8 zeroext) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tcp_highest_sack_reset(%struct.sock*) #1

declare dso_local i32 @tcp_check_dsack(%struct.sock*, %struct.sk_buff*, %struct.tcp_sack_block_wire*, i32, i64) #1

declare dso_local i64 @before(i64, i64) #1

declare dso_local i8* @get_unaligned_be32(i32*) #1

declare dso_local i32 @tcp_is_sackblock_valid(%struct.tcp_sock*, i32, i64, i64) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @swap(i64, i64, i64, i64) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_head(%struct.sock*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.tcp_sack_block*) #1

declare dso_local i64 @tcp_sack_cache_ok(%struct.tcp_sock*, %struct.tcp_sack_block*) #1

declare dso_local %struct.sk_buff* @tcp_sacktag_skip(%struct.sk_buff*, %struct.sock*, %struct.tcp_sacktag_state*, i64) #1

declare dso_local %struct.sk_buff* @tcp_sacktag_walk(%struct.sk_buff*, %struct.sock*, %struct.tcp_sack_block*, %struct.tcp_sacktag_state*, i64, i64, i32) #1

declare dso_local %struct.sk_buff* @tcp_maybe_skipping_dsack(%struct.sk_buff*, %struct.sock*, %struct.tcp_sack_block*, %struct.tcp_sacktag_state*, i64) #1

declare dso_local i64 @tcp_highest_sack_seq(%struct.tcp_sock*) #1

declare dso_local %struct.sk_buff* @tcp_highest_sack(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @tcp_mark_lost_retrans(%struct.sock*) #1

declare dso_local i32 @tcp_verify_left_out(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_update_reordering(%struct.sock*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
