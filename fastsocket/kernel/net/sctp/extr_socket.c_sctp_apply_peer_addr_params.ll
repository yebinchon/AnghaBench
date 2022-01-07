; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_apply_peer_addr_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_apply_peer_addr_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_paddrparams = type { i32, i64, i64, i64, i64 }
%struct.sctp_transport = type { i32, i64, i8*, i64, i8*, i32 }
%struct.sctp_association = type { i32, i64, i8*, i64, i8* }
%struct.sctp_sock = type { i32, i64, i64, i64, i64 }

@SPP_HB_DEMAND = common dso_local global i32 0, align 4
@SPP_HB_ENABLE = common dso_local global i32 0, align 4
@SPP_HB_TIME_IS_ZERO = common dso_local global i32 0, align 4
@SPP_HB = common dso_local global i32 0, align 4
@SPP_PMTUD_DISABLE = common dso_local global i32 0, align 4
@SPP_PMTUD_ENABLE = common dso_local global i32 0, align 4
@SPP_PMTUD = common dso_local global i32 0, align 4
@SPP_SACKDELAY_ENABLE = common dso_local global i32 0, align 4
@SPP_SACKDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_paddrparams*, %struct.sctp_transport*, %struct.sctp_association*, %struct.sctp_sock*, i32, i32, i32)* @sctp_apply_peer_addr_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_apply_peer_addr_params(%struct.sctp_paddrparams* %0, %struct.sctp_transport* %1, %struct.sctp_association* %2, %struct.sctp_sock* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_paddrparams*, align 8
  %10 = alloca %struct.sctp_transport*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca %struct.sctp_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sctp_paddrparams* %0, %struct.sctp_paddrparams** %9, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store %struct.sctp_sock* %3, %struct.sctp_sock** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %19 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SPP_HB_DEMAND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %7
  %25 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %26 = icmp ne %struct.sctp_transport* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %29 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %32 = call i32 @sctp_primitive_REQUESTHEARTBEAT(i32 %30, %struct.sctp_transport* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %8, align 4
  br label %371

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %24, %7
  %39 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %40 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SPP_HB_ENABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %38
  %46 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %47 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SPP_HB_TIME_IS_ZERO, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %54 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %57 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %62 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SPP_HB_TIME_IS_ZERO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %60, %55
  %68 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %69 = icmp ne %struct.sctp_transport* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %72 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @msecs_to_jiffies(i64 %73)
  %75 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %76 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  br label %94

77:                                               ; preds = %67
  %78 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %79 = icmp ne %struct.sctp_association* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %82 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @msecs_to_jiffies(i64 %83)
  %85 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %86 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  br label %93

87:                                               ; preds = %77
  %88 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %89 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %92 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %87, %80
  br label %94

94:                                               ; preds = %93, %70
  br label %95

95:                                               ; preds = %94, %60
  br label %96

96:                                               ; preds = %95, %38
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %140

99:                                               ; preds = %96
  %100 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %101 = icmp ne %struct.sctp_transport* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %104 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SPP_HB, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load i32, i32* %13, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %112 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %139

113:                                              ; preds = %99
  %114 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %115 = icmp ne %struct.sctp_association* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %118 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @SPP_HB, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = load i32, i32* %13, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %126 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %138

127:                                              ; preds = %113
  %128 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %129 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @SPP_HB, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %130, %132
  %134 = load i32, i32* %13, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %137 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %127, %116
  br label %139

139:                                              ; preds = %138, %102
  br label %140

140:                                              ; preds = %139, %96
  %141 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %142 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @SPP_PMTUD_DISABLE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %140
  %148 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %149 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %147
  %153 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %154 = icmp ne %struct.sctp_transport* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %157 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %160 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  %161 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %162 = call i32 @sctp_assoc_sync_pmtu(%struct.sctp_association* %161)
  br label %184

163:                                              ; preds = %152
  %164 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %165 = icmp ne %struct.sctp_association* %164, null
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %168 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %171 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %170, i32 0, i32 3
  store i64 %169, i64* %171, align 8
  %172 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %173 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %174 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @sctp_frag_point(%struct.sctp_association* %172, i64 %175)
  br label %183

177:                                              ; preds = %163
  %178 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %179 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %182 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %181, i32 0, i32 3
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %177, %166
  br label %184

184:                                              ; preds = %183, %155
  br label %185

185:                                              ; preds = %184, %147, %140
  %186 = load i32, i32* %14, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %255

188:                                              ; preds = %185
  %189 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %190 = icmp ne %struct.sctp_transport* %189, null
  br i1 %190, label %191, label %228

191:                                              ; preds = %188
  %192 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %193 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @SPP_PMTUD_DISABLE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %191
  %199 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %200 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @SPP_PMTUD_ENABLE, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br label %205

205:                                              ; preds = %198, %191
  %206 = phi i1 [ false, %191 ], [ %204, %198 ]
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %17, align 4
  %208 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %209 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @SPP_PMTUD, align 4
  %212 = xor i32 %211, -1
  %213 = and i32 %210, %212
  %214 = load i32, i32* %14, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %217 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* %17, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %205
  %221 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %222 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %223 = call i32 @sctp_opt2sk(%struct.sctp_sock* %222)
  %224 = call i32 @sctp_transport_pmtu(%struct.sctp_transport* %221, i32 %223)
  %225 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %226 = call i32 @sctp_assoc_sync_pmtu(%struct.sctp_association* %225)
  br label %227

227:                                              ; preds = %220, %205
  br label %254

228:                                              ; preds = %188
  %229 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %230 = icmp ne %struct.sctp_association* %229, null
  br i1 %230, label %231, label %242

231:                                              ; preds = %228
  %232 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %233 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @SPP_PMTUD, align 4
  %236 = xor i32 %235, -1
  %237 = and i32 %234, %236
  %238 = load i32, i32* %14, align 4
  %239 = or i32 %237, %238
  %240 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %241 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  br label %253

242:                                              ; preds = %228
  %243 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %244 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @SPP_PMTUD, align 4
  %247 = xor i32 %246, -1
  %248 = and i32 %245, %247
  %249 = load i32, i32* %14, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %252 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  br label %253

253:                                              ; preds = %242, %231
  br label %254

254:                                              ; preds = %253, %227
  br label %255

255:                                              ; preds = %254, %185
  %256 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %257 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @SPP_SACKDELAY_ENABLE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %295

262:                                              ; preds = %255
  %263 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %264 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %295

267:                                              ; preds = %262
  %268 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %269 = icmp ne %struct.sctp_transport* %268, null
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %272 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = call i8* @msecs_to_jiffies(i64 %273)
  %275 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %276 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %275, i32 0, i32 2
  store i8* %274, i8** %276, align 8
  br label %294

277:                                              ; preds = %267
  %278 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %279 = icmp ne %struct.sctp_association* %278, null
  br i1 %279, label %280, label %287

280:                                              ; preds = %277
  %281 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %282 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = call i8* @msecs_to_jiffies(i64 %283)
  %285 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %286 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  br label %293

287:                                              ; preds = %277
  %288 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %289 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %292 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %291, i32 0, i32 2
  store i64 %290, i64* %292, align 8
  br label %293

293:                                              ; preds = %287, %280
  br label %294

294:                                              ; preds = %293, %270
  br label %295

295:                                              ; preds = %294, %262, %255
  %296 = load i32, i32* %15, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %339

298:                                              ; preds = %295
  %299 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %300 = icmp ne %struct.sctp_transport* %299, null
  br i1 %300, label %301, label %312

301:                                              ; preds = %298
  %302 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %303 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @SPP_SACKDELAY, align 4
  %306 = xor i32 %305, -1
  %307 = and i32 %304, %306
  %308 = load i32, i32* %15, align 4
  %309 = or i32 %307, %308
  %310 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %311 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %310, i32 0, i32 0
  store i32 %309, i32* %311, align 8
  br label %338

312:                                              ; preds = %298
  %313 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %314 = icmp ne %struct.sctp_association* %313, null
  br i1 %314, label %315, label %326

315:                                              ; preds = %312
  %316 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %317 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @SPP_SACKDELAY, align 4
  %320 = xor i32 %319, -1
  %321 = and i32 %318, %320
  %322 = load i32, i32* %15, align 4
  %323 = or i32 %321, %322
  %324 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %325 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %324, i32 0, i32 0
  store i32 %323, i32* %325, align 8
  br label %337

326:                                              ; preds = %312
  %327 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %328 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @SPP_SACKDELAY, align 4
  %331 = xor i32 %330, -1
  %332 = and i32 %329, %331
  %333 = load i32, i32* %15, align 4
  %334 = or i32 %332, %333
  %335 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %336 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  br label %337

337:                                              ; preds = %326, %315
  br label %338

338:                                              ; preds = %337, %301
  br label %339

339:                                              ; preds = %338, %295
  %340 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %341 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %370

344:                                              ; preds = %339
  %345 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %346 = icmp ne %struct.sctp_transport* %345, null
  br i1 %346, label %347, label %353

347:                                              ; preds = %344
  %348 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %349 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %352 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %351, i32 0, i32 1
  store i64 %350, i64* %352, align 8
  br label %369

353:                                              ; preds = %344
  %354 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %355 = icmp ne %struct.sctp_association* %354, null
  br i1 %355, label %356, label %362

356:                                              ; preds = %353
  %357 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %358 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %361 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %360, i32 0, i32 1
  store i64 %359, i64* %361, align 8
  br label %368

362:                                              ; preds = %353
  %363 = load %struct.sctp_paddrparams*, %struct.sctp_paddrparams** %9, align 8
  %364 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %367 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %366, i32 0, i32 1
  store i64 %365, i64* %367, align 8
  br label %368

368:                                              ; preds = %362, %356
  br label %369

369:                                              ; preds = %368, %347
  br label %370

370:                                              ; preds = %369, %339
  store i32 0, i32* %8, align 4
  br label %371

371:                                              ; preds = %370, %35
  %372 = load i32, i32* %8, align 4
  ret i32 %372
}

declare dso_local i32 @sctp_primitive_REQUESTHEARTBEAT(i32, %struct.sctp_transport*) #1

declare dso_local i8* @msecs_to_jiffies(i64) #1

declare dso_local i32 @sctp_assoc_sync_pmtu(%struct.sctp_association*) #1

declare dso_local i32 @sctp_frag_point(%struct.sctp_association*, i64) #1

declare dso_local i32 @sctp_transport_pmtu(%struct.sctp_transport*, i32) #1

declare dso_local i32 @sctp_opt2sk(%struct.sctp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
