; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_fastretrans_alert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_fastretrans_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 (%struct.sock*)* }
%struct.TYPE_4__ = type { i32 }
%struct.tcp_sock = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@FLAG_DATA_SACKED = common dso_local global i32 0, align 4
@FLAG_ECE = common dso_local global i32 0, align 4
@FLAG_DATA_LOST = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i32 0, align 4
@LINUX_MIB_TCPLOSS = common dso_local global i32 0, align 4
@FLAG_SND_UNA_ADVANCED = common dso_local global i32 0, align 4
@FLAG_DATA_ACKED = common dso_local global i32 0, align 4
@TCP_CA_Disorder = common dso_local global i32 0, align 4
@LINUX_MIB_TCPRENORECOVERY = common dso_local global i32 0, align 4
@LINUX_MIB_TCPSACKRECOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32, i32, i32)* @tcp_fastretrans_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_fastretrans_alert(%struct.sock* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inet_connection_sock*, align 8
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %16)
  store %struct.inet_connection_sock* %17, %struct.inet_connection_sock** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %18)
  store %struct.tcp_sock* %19, %struct.tcp_sock** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @FLAG_DATA_SACKED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %29 = call i64 @tcp_fackets_out(%struct.tcp_sock* %28)
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br label %34

34:                                               ; preds = %27, %22
  %35 = phi i1 [ false, %22 ], [ %33, %27 ]
  br label %36

36:                                               ; preds = %34, %5
  %37 = phi i1 [ true, %5 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 19
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 18
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi i1 [ false, %36 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %55 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %54, i32 0, i32 18
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 18
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i64 @WARN_ON(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %73 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @FLAG_ECE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %80, i32 0, i32 11
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @tcp_check_sack_reneging(%struct.sock* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %431

88:                                               ; preds = %82
  %89 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %90 = call i64 @tcp_is_fack(%struct.tcp_sock* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %134

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @FLAG_DATA_LOST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %134

97:                                               ; preds = %92
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %99 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %102 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %101, i32 0, i32 15
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @before(i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %97
  %107 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %108 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @TCP_CA_Open, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %106
  %113 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %114 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %117 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %112
  %121 = load %struct.sock*, %struct.sock** %6, align 8
  %122 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %123 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %126 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  %129 = call i32 @tcp_mark_head_lost(%struct.sock* %121, i64 %128)
  %130 = load %struct.sock*, %struct.sock** %6, align 8
  %131 = call i32 @sock_net(%struct.sock* %130)
  %132 = load i32, i32* @LINUX_MIB_TCPLOSS, align 4
  %133 = call i32 @NET_INC_STATS_BH(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %120, %112, %106, %97, %92, %88
  %135 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %136 = call i32 @tcp_verify_left_out(%struct.tcp_sock* %135)
  %137 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %138 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @TCP_CA_Open, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %144 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i64 @WARN_ON(i32 %147)
  %149 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %150 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %149, i32 0, i32 17
  store i64 0, i64* %150, align 8
  br label %204

151:                                              ; preds = %134
  %152 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %153 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %152, i32 0, i32 12
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %156 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %155, i32 0, i32 15
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @before(i32 %154, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %203, label %160

160:                                              ; preds = %151
  %161 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %162 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  switch i32 %163, label %202 [
    i32 129, label %164
    i32 130, label %172
    i32 128, label %187
  ]

164:                                              ; preds = %160
  %165 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %166 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %165, i32 0, i32 3
  store i32 0, i32* %166, align 4
  %167 = load %struct.sock*, %struct.sock** %6, align 8
  %168 = call i32 @tcp_try_undo_recovery(%struct.sock* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %431

171:                                              ; preds = %164
  br label %202

172:                                              ; preds = %160
  %173 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %174 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %177 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %176, i32 0, i32 15
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %175, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %172
  %181 = load %struct.sock*, %struct.sock** %6, align 8
  %182 = call i32 @tcp_complete_cwr(%struct.sock* %181)
  %183 = load %struct.sock*, %struct.sock** %6, align 8
  %184 = load i32, i32* @TCP_CA_Open, align 4
  %185 = call i32 @tcp_set_ca_state(%struct.sock* %183, i32 %184)
  br label %186

186:                                              ; preds = %180, %172
  br label %202

187:                                              ; preds = %160
  %188 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %189 = call i32 @tcp_is_reno(%struct.tcp_sock* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %193 = call i32 @tcp_reset_reno_sack(%struct.tcp_sock* %192)
  br label %194

194:                                              ; preds = %191, %187
  %195 = load %struct.sock*, %struct.sock** %6, align 8
  %196 = call i32 @tcp_try_undo_recovery(%struct.sock* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %431

199:                                              ; preds = %194
  %200 = load %struct.sock*, %struct.sock** %6, align 8
  %201 = call i32 @tcp_complete_cwr(%struct.sock* %200)
  br label %202

202:                                              ; preds = %160, %199, %186, %171
  br label %203

203:                                              ; preds = %202, %151
  br label %204

204:                                              ; preds = %203, %142
  %205 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %206 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  switch i32 %207, label %266 [
    i32 128, label %208
    i32 129, label %229
  ]

208:                                              ; preds = %204
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @FLAG_SND_UNA_ADVANCED, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %224, label %213

213:                                              ; preds = %208
  %214 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %215 = call i32 @tcp_is_reno(%struct.tcp_sock* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load %struct.sock*, %struct.sock** %6, align 8
  %222 = call i32 @tcp_add_reno_sack(%struct.sock* %221)
  br label %223

223:                                              ; preds = %220, %217, %213
  br label %228

224:                                              ; preds = %208
  %225 = load %struct.sock*, %struct.sock** %6, align 8
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @tcp_try_undo_partial(%struct.sock* %225, i32 %226)
  store i32 %227, i32* %13, align 4
  br label %228

228:                                              ; preds = %224, %223
  br label %403

229:                                              ; preds = %204
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @FLAG_DATA_ACKED, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %236 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %235, i32 0, i32 3
  store i32 0, i32* %236, align 4
  br label %237

237:                                              ; preds = %234, %229
  %238 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %239 = call i32 @tcp_is_reno(%struct.tcp_sock* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* @FLAG_SND_UNA_ADVANCED, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %248 = call i32 @tcp_reset_reno_sack(%struct.tcp_sock* %247)
  br label %249

249:                                              ; preds = %246, %241, %237
  %250 = load %struct.sock*, %struct.sock** %6, align 8
  %251 = call i32 @tcp_try_undo_loss(%struct.sock* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %249
  %254 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %255 = call i32 @tcp_moderate_cwnd(%struct.tcp_sock* %254)
  %256 = load %struct.sock*, %struct.sock** %6, align 8
  %257 = call i32 @tcp_xmit_retransmit_queue(%struct.sock* %256)
  br label %431

258:                                              ; preds = %249
  %259 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %260 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @TCP_CA_Open, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %431

265:                                              ; preds = %258
  br label %266

266:                                              ; preds = %204, %265
  %267 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %268 = call i32 @tcp_is_reno(%struct.tcp_sock* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %266
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* @FLAG_SND_UNA_ADVANCED, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %277 = call i32 @tcp_reset_reno_sack(%struct.tcp_sock* %276)
  br label %278

278:                                              ; preds = %275, %270
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load %struct.sock*, %struct.sock** %6, align 8
  %283 = call i32 @tcp_add_reno_sack(%struct.sock* %282)
  br label %284

284:                                              ; preds = %281, %278
  br label %285

285:                                              ; preds = %284, %266
  %286 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %287 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @TCP_CA_Disorder, align 4
  %290 = icmp sle i32 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load %struct.sock*, %struct.sock** %6, align 8
  %293 = call i32 @tcp_try_undo_dsack(%struct.sock* %292)
  br label %294

294:                                              ; preds = %291, %285
  %295 = load %struct.sock*, %struct.sock** %6, align 8
  %296 = call i32 @tcp_time_to_recover(%struct.sock* %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %294
  %299 = load %struct.sock*, %struct.sock** %6, align 8
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @tcp_try_to_open(%struct.sock* %299, i32 %300)
  br label %431

302:                                              ; preds = %294
  %303 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %304 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp slt i32 %305, 130
  br i1 %306, label %307, label %331

307:                                              ; preds = %302
  %308 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %309 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %331

313:                                              ; preds = %307
  %314 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %315 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %314, i32 0, i32 12
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %318 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %317, i32 0, i32 16
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %316, %320
  br i1 %321, label %322, label %331

322:                                              ; preds = %313
  %323 = load %struct.sock*, %struct.sock** %6, align 8
  %324 = call i32 @tcp_mtup_probe_failed(%struct.sock* %323)
  %325 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %326 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 8
  %329 = load %struct.sock*, %struct.sock** %6, align 8
  %330 = call i32 @tcp_simple_retransmit(%struct.sock* %329)
  br label %431

331:                                              ; preds = %313, %307, %302
  %332 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %333 = call i32 @tcp_is_reno(%struct.tcp_sock* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %331
  %336 = load i32, i32* @LINUX_MIB_TCPRENORECOVERY, align 4
  store i32 %336, i32* %15, align 4
  br label %339

337:                                              ; preds = %331
  %338 = load i32, i32* @LINUX_MIB_TCPSACKRECOVERY, align 4
  store i32 %338, i32* %15, align 4
  br label %339

339:                                              ; preds = %337, %335
  %340 = load %struct.sock*, %struct.sock** %6, align 8
  %341 = call i32 @sock_net(%struct.sock* %340)
  %342 = load i32, i32* %15, align 4
  %343 = call i32 @NET_INC_STATS_BH(i32 %341, i32 %342)
  %344 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %345 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %344, i32 0, i32 14
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %348 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %347, i32 0, i32 15
  store i32 %346, i32* %348, align 4
  %349 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %350 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %349, i32 0, i32 11
  store i64 0, i64* %350, align 8
  %351 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %352 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %351, i32 0, i32 12
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %355 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %354, i32 0, i32 13
  store i32 %353, i32* %355, align 4
  %356 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %357 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %360 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %359, i32 0, i32 3
  store i64 %358, i64* %360, align 8
  %361 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %362 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = icmp slt i32 %363, 130
  br i1 %364, label %365, label %387

365:                                              ; preds = %339
  %366 = load i32, i32* %10, align 4
  %367 = load i32, i32* @FLAG_ECE, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %365
  %371 = load %struct.sock*, %struct.sock** %6, align 8
  %372 = call i64 @tcp_current_ssthresh(%struct.sock* %371)
  %373 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %374 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %373, i32 0, i32 11
  store i64 %372, i64* %374, align 8
  br label %375

375:                                              ; preds = %370, %365
  %376 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %377 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %376, i32 0, i32 1
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 0
  %380 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %379, align 8
  %381 = load %struct.sock*, %struct.sock** %6, align 8
  %382 = call i32 %380(%struct.sock* %381)
  %383 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %384 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %383, i32 0, i32 10
  store i32 %382, i32* %384, align 8
  %385 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %386 = call i32 @TCP_ECN_queue_cwr(%struct.tcp_sock* %385)
  br label %387

387:                                              ; preds = %375, %339
  %388 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %389 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %388, i32 0, i32 9
  store i32 0, i32* %389, align 4
  %390 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %391 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %390, i32 0, i32 8
  store i32 0, i32* %391, align 8
  %392 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %393 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %392, i32 0, i32 6
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %396 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %395, i32 0, i32 7
  store i32 %394, i32* %396, align 4
  %397 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %398 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %397, i32 0, i32 4
  store i32 0, i32* %398, align 8
  %399 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %400 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %399, i32 0, i32 5
  store i32 0, i32* %400, align 4
  %401 = load %struct.sock*, %struct.sock** %6, align 8
  %402 = call i32 @tcp_set_ca_state(%struct.sock* %401, i32 128)
  store i32 1, i32* %14, align 4
  br label %403

403:                                              ; preds = %387, %228
  %404 = load i32, i32* %13, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %414, label %406

406:                                              ; preds = %403
  %407 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %408 = call i64 @tcp_is_fack(%struct.tcp_sock* %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %418

410:                                              ; preds = %406
  %411 = load %struct.sock*, %struct.sock** %6, align 8
  %412 = call i64 @tcp_head_timedout(%struct.sock* %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %410, %403
  %415 = load %struct.sock*, %struct.sock** %6, align 8
  %416 = load i32, i32* %14, align 4
  %417 = call i32 @tcp_update_scoreboard(%struct.sock* %415, i32 %416)
  br label %418

418:                                              ; preds = %414, %410, %406
  %419 = load i32, i32* %8, align 4
  %420 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %421 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, %419
  store i32 %423, i32* %421, align 8
  %424 = load %struct.sock*, %struct.sock** %6, align 8
  %425 = load i32, i32* %8, align 4
  %426 = load i32, i32* %14, align 4
  %427 = load i32, i32* %10, align 4
  %428 = call i32 @tcp_update_cwnd_in_recovery(%struct.sock* %424, i32 %425, i32 %426, i32 %427)
  %429 = load %struct.sock*, %struct.sock** %6, align 8
  %430 = call i32 @tcp_xmit_retransmit_queue(%struct.sock* %429)
  br label %431

431:                                              ; preds = %418, %322, %298, %264, %253, %198, %170, %87
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_fackets_out(%struct.tcp_sock*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @tcp_check_sack_reneging(%struct.sock*, i32) #1

declare dso_local i64 @tcp_is_fack(%struct.tcp_sock*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i32 @tcp_mark_head_lost(%struct.sock*, i64) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_verify_left_out(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_try_undo_recovery(%struct.sock*) #1

declare dso_local i32 @tcp_complete_cwr(%struct.sock*) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

declare dso_local i32 @tcp_is_reno(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_reset_reno_sack(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_add_reno_sack(%struct.sock*) #1

declare dso_local i32 @tcp_try_undo_partial(%struct.sock*, i32) #1

declare dso_local i32 @tcp_try_undo_loss(%struct.sock*) #1

declare dso_local i32 @tcp_moderate_cwnd(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_xmit_retransmit_queue(%struct.sock*) #1

declare dso_local i32 @tcp_try_undo_dsack(%struct.sock*) #1

declare dso_local i32 @tcp_time_to_recover(%struct.sock*) #1

declare dso_local i32 @tcp_try_to_open(%struct.sock*, i32) #1

declare dso_local i32 @tcp_mtup_probe_failed(%struct.sock*) #1

declare dso_local i32 @tcp_simple_retransmit(%struct.sock*) #1

declare dso_local i64 @tcp_current_ssthresh(%struct.sock*) #1

declare dso_local i32 @TCP_ECN_queue_cwr(%struct.tcp_sock*) #1

declare dso_local i64 @tcp_head_timedout(%struct.sock*) #1

declare dso_local i32 @tcp_update_scoreboard(%struct.sock*, i32) #1

declare dso_local i32 @tcp_update_cwnd_in_recovery(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
