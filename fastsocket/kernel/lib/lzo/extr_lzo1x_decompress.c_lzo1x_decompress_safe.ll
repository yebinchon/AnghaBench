; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/lzo/extr_lzo1x_decompress.c_lzo1x_decompress_safe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/lzo/extr_lzo1x_decompress.c_lzo1x_decompress_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M2_MAX_OFFSET = common dso_local global i8* null, align 8
@LZO_E_EOF_NOT_FOUND = common dso_local global i32 0, align 4
@LZO_E_OK = common dso_local global i32 0, align 4
@LZO_E_INPUT_NOT_CONSUMED = common dso_local global i32 0, align 4
@LZO_E_INPUT_OVERRUN = common dso_local global i32 0, align 4
@LZO_E_OUTPUT_OVERRUN = common dso_local global i32 0, align 4
@LZO_E_LOOKBEHIND_OVERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzo1x_decompress_safe(i8* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %14, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sgt i32 %28, 17
  br i1 %29, label %30, label %67

30:                                               ; preds = %4
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %12, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = sub nsw i32 %34, 17
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp ult i64 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %545

40:                                               ; preds = %30
  %41 = load i64, i64* %15, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = call i64 @HAVE_OP(i64 %41, i8* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %633

47:                                               ; preds = %40
  %48 = load i64, i64* %15, align 8
  %49 = add i64 %48, 1
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i64 @HAVE_IP(i64 %49, i8* %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %625

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %62, %55
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %12, align 8
  %59 = load i8, i8* %57, align 1
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %14, align 8
  store i8 %59, i8* %60, align 1
  br label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %15, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %15, align 8
  %65 = icmp ugt i64 %64, 0
  br i1 %65, label %56, label %66

66:                                               ; preds = %62
  br label %189

67:                                               ; preds = %4
  br label %68

68:                                               ; preds = %592, %67
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ult i8* %69, %70
  br i1 %71, label %72, label %593

72:                                               ; preds = %68
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %12, align 8
  %75 = load i8, i8* %73, align 1
  %76 = zext i8 %75 to i64
  store i64 %76, i64* %15, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp uge i64 %77, 16
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %248

80:                                               ; preds = %72
  %81 = load i64, i64* %15, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %80
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = call i64 @HAVE_IP(i64 1, i8* %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %625

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %105, %89
  %91 = load i8*, i8** %12, align 8
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load i64, i64* %15, align 8
  %97 = add i64 %96, 255
  store i64 %97, i64* %15, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %12, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i64 @HAVE_IP(i64 1, i8* %100, i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %625

105:                                              ; preds = %95
  br label %90

106:                                              ; preds = %90
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %12, align 8
  %109 = load i8, i8* %107, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 15, %110
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %15, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %15, align 8
  br label %115

115:                                              ; preds = %106, %80
  %116 = load i64, i64* %15, align 8
  %117 = add i64 %116, 3
  %118 = load i8*, i8** %11, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = call i64 @HAVE_OP(i64 %117, i8* %118, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %633

123:                                              ; preds = %115
  %124 = load i64, i64* %15, align 8
  %125 = add i64 %124, 4
  %126 = load i8*, i8** %10, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = call i64 @HAVE_IP(i64 %125, i8* %126, i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %625

131:                                              ; preds = %123
  %132 = load i8*, i8** %14, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @COPY4(i8* %132, i8* %133)
  %135 = load i8*, i8** %14, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  store i8* %136, i8** %14, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  store i8* %138, i8** %12, align 8
  %139 = load i64, i64* %15, align 8
  %140 = add i64 %139, -1
  store i64 %140, i64* %15, align 8
  %141 = icmp ugt i64 %140, 0
  br i1 %141, label %142, label %188

142:                                              ; preds = %131
  %143 = load i64, i64* %15, align 8
  %144 = icmp uge i64 %143, 4
  br i1 %144, label %145, label %175

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %156, %145
  %147 = load i8*, i8** %14, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 @COPY4(i8* %147, i8* %148)
  %150 = load i8*, i8** %14, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 4
  store i8* %151, i8** %14, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 4
  store i8* %153, i8** %12, align 8
  %154 = load i64, i64* %15, align 8
  %155 = sub i64 %154, 4
  store i64 %155, i64* %15, align 8
  br label %156

156:                                              ; preds = %146
  %157 = load i64, i64* %15, align 8
  %158 = icmp uge i64 %157, 4
  br i1 %158, label %146, label %159

159:                                              ; preds = %156
  %160 = load i64, i64* %15, align 8
  %161 = icmp ugt i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %169, %162
  %164 = load i8*, i8** %12, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %12, align 8
  %166 = load i8, i8* %164, align 1
  %167 = load i8*, i8** %14, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %14, align 8
  store i8 %166, i8* %167, align 1
  br label %169

169:                                              ; preds = %163
  %170 = load i64, i64* %15, align 8
  %171 = add i64 %170, -1
  store i64 %171, i64* %15, align 8
  %172 = icmp ugt i64 %171, 0
  br i1 %172, label %163, label %173

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173, %159
  br label %187

175:                                              ; preds = %142
  br label %176

176:                                              ; preds = %182, %175
  %177 = load i8*, i8** %12, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %12, align 8
  %179 = load i8, i8* %177, align 1
  %180 = load i8*, i8** %14, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %14, align 8
  store i8 %179, i8* %180, align 1
  br label %182

182:                                              ; preds = %176
  %183 = load i64, i64* %15, align 8
  %184 = add i64 %183, -1
  store i64 %184, i64* %15, align 8
  %185 = icmp ugt i64 %184, 0
  br i1 %185, label %176, label %186

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186, %174
  br label %188

188:                                              ; preds = %187, %131
  br label %189

189:                                              ; preds = %188, %66
  %190 = load i8*, i8** %12, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %12, align 8
  %192 = load i8, i8* %190, align 1
  %193 = zext i8 %192 to i64
  store i64 %193, i64* %15, align 8
  %194 = load i64, i64* %15, align 8
  %195 = icmp uge i64 %194, 16
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %248

197:                                              ; preds = %189
  %198 = load i8*, i8** %14, align 8
  %199 = load i8*, i8** @M2_MAX_OFFSET, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = ptrtoint i8* %198 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = inttoptr i64 %203 to i8*
  store i8* %204, i8** %13, align 8
  %205 = load i64, i64* %15, align 8
  %206 = lshr i64 %205, 2
  %207 = load i8*, i8** %13, align 8
  %208 = sub i64 0, %206
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %13, align 8
  %210 = load i8*, i8** %12, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %12, align 8
  %212 = load i8, i8* %210, align 1
  %213 = zext i8 %212 to i32
  %214 = shl i32 %213, 2
  %215 = load i8*, i8** %13, align 8
  %216 = sext i32 %214 to i64
  %217 = sub i64 0, %216
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  store i8* %218, i8** %13, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = load i8*, i8** %8, align 8
  %221 = load i8*, i8** %14, align 8
  %222 = call i64 @HAVE_LB(i8* %219, i8* %220, i8* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %197
  br label %641

225:                                              ; preds = %197
  %226 = load i8*, i8** %11, align 8
  %227 = load i8*, i8** %14, align 8
  %228 = call i64 @HAVE_OP(i64 3, i8* %226, i8* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %633

231:                                              ; preds = %225
  %232 = load i8*, i8** %13, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %13, align 8
  %234 = load i8, i8* %232, align 1
  %235 = load i8*, i8** %14, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %14, align 8
  store i8 %234, i8* %235, align 1
  %237 = load i8*, i8** %13, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %13, align 8
  %239 = load i8, i8* %237, align 1
  %240 = load i8*, i8** %14, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %14, align 8
  store i8 %239, i8* %240, align 1
  %242 = load i8*, i8** %13, align 8
  %243 = load i8, i8* %242, align 1
  %244 = load i8*, i8** %14, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %14, align 8
  store i8 %243, i8* %244, align 1
  br label %534

246:                                              ; No predecessors!
  br label %247

247:                                              ; preds = %588, %246
  br label %248

248:                                              ; preds = %247, %196, %79
  %249 = load i64, i64* %15, align 8
  %250 = icmp uge i64 %249, 64
  br i1 %250, label %251, label %288

251:                                              ; preds = %248
  %252 = load i8*, i8** %14, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 -1
  store i8* %253, i8** %13, align 8
  %254 = load i64, i64* %15, align 8
  %255 = lshr i64 %254, 2
  %256 = and i64 %255, 7
  %257 = load i8*, i8** %13, align 8
  %258 = sub i64 0, %256
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  store i8* %259, i8** %13, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %12, align 8
  %262 = load i8, i8* %260, align 1
  %263 = zext i8 %262 to i32
  %264 = shl i32 %263, 3
  %265 = load i8*, i8** %13, align 8
  %266 = sext i32 %264 to i64
  %267 = sub i64 0, %266
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  store i8* %268, i8** %13, align 8
  %269 = load i64, i64* %15, align 8
  %270 = lshr i64 %269, 5
  %271 = sub i64 %270, 1
  store i64 %271, i64* %15, align 8
  %272 = load i8*, i8** %13, align 8
  %273 = load i8*, i8** %8, align 8
  %274 = load i8*, i8** %14, align 8
  %275 = call i64 @HAVE_LB(i8* %272, i8* %273, i8* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %251
  br label %641

278:                                              ; preds = %251
  %279 = load i64, i64* %15, align 8
  %280 = add i64 %279, 3
  %281 = sub i64 %280, 1
  %282 = load i8*, i8** %11, align 8
  %283 = load i8*, i8** %14, align 8
  %284 = call i64 @HAVE_OP(i64 %281, i8* %282, i8* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %278
  br label %633

287:                                              ; preds = %278
  br label %511

288:                                              ; preds = %248
  %289 = load i64, i64* %15, align 8
  %290 = icmp uge i64 %289, 32
  br i1 %290, label %291, label %340

291:                                              ; preds = %288
  %292 = load i64, i64* %15, align 8
  %293 = and i64 %292, 31
  store i64 %293, i64* %15, align 8
  %294 = load i64, i64* %15, align 8
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %328

296:                                              ; preds = %291
  %297 = load i8*, i8** %10, align 8
  %298 = load i8*, i8** %12, align 8
  %299 = call i64 @HAVE_IP(i64 1, i8* %297, i8* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %296
  br label %625

302:                                              ; preds = %296
  br label %303

303:                                              ; preds = %318, %302
  %304 = load i8*, i8** %12, align 8
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %303
  %309 = load i64, i64* %15, align 8
  %310 = add i64 %309, 255
  store i64 %310, i64* %15, align 8
  %311 = load i8*, i8** %12, align 8
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %12, align 8
  %313 = load i8*, i8** %10, align 8
  %314 = load i8*, i8** %12, align 8
  %315 = call i64 @HAVE_IP(i64 1, i8* %313, i8* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %308
  br label %625

318:                                              ; preds = %308
  br label %303

319:                                              ; preds = %303
  %320 = load i8*, i8** %12, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %12, align 8
  %322 = load i8, i8* %320, align 1
  %323 = zext i8 %322 to i32
  %324 = add nsw i32 31, %323
  %325 = sext i32 %324 to i64
  %326 = load i64, i64* %15, align 8
  %327 = add i64 %326, %325
  store i64 %327, i64* %15, align 8
  br label %328

328:                                              ; preds = %319, %291
  %329 = load i8*, i8** %14, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 -1
  store i8* %330, i8** %13, align 8
  %331 = load i8*, i8** %12, align 8
  %332 = call i32 @get_unaligned_le16(i8* %331)
  %333 = ashr i32 %332, 2
  %334 = load i8*, i8** %13, align 8
  %335 = sext i32 %333 to i64
  %336 = sub i64 0, %335
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  store i8* %337, i8** %13, align 8
  %338 = load i8*, i8** %12, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 2
  store i8* %339, i8** %12, align 8
  br label %444

340:                                              ; preds = %288
  %341 = load i64, i64* %15, align 8
  %342 = icmp uge i64 %341, 16
  br i1 %342, label %343, label %404

343:                                              ; preds = %340
  %344 = load i8*, i8** %14, align 8
  store i8* %344, i8** %13, align 8
  %345 = load i64, i64* %15, align 8
  %346 = and i64 %345, 8
  %347 = shl i64 %346, 11
  %348 = load i8*, i8** %13, align 8
  %349 = sub i64 0, %347
  %350 = getelementptr inbounds i8, i8* %348, i64 %349
  store i8* %350, i8** %13, align 8
  %351 = load i64, i64* %15, align 8
  %352 = and i64 %351, 7
  store i64 %352, i64* %15, align 8
  %353 = load i64, i64* %15, align 8
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %387

355:                                              ; preds = %343
  %356 = load i8*, i8** %10, align 8
  %357 = load i8*, i8** %12, align 8
  %358 = call i64 @HAVE_IP(i64 1, i8* %356, i8* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %355
  br label %625

361:                                              ; preds = %355
  br label %362

362:                                              ; preds = %377, %361
  %363 = load i8*, i8** %12, align 8
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %378

367:                                              ; preds = %362
  %368 = load i64, i64* %15, align 8
  %369 = add i64 %368, 255
  store i64 %369, i64* %15, align 8
  %370 = load i8*, i8** %12, align 8
  %371 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %371, i8** %12, align 8
  %372 = load i8*, i8** %10, align 8
  %373 = load i8*, i8** %12, align 8
  %374 = call i64 @HAVE_IP(i64 1, i8* %372, i8* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %367
  br label %625

377:                                              ; preds = %367
  br label %362

378:                                              ; preds = %362
  %379 = load i8*, i8** %12, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** %12, align 8
  %381 = load i8, i8* %379, align 1
  %382 = zext i8 %381 to i32
  %383 = add nsw i32 7, %382
  %384 = sext i32 %383 to i64
  %385 = load i64, i64* %15, align 8
  %386 = add i64 %385, %384
  store i64 %386, i64* %15, align 8
  br label %387

387:                                              ; preds = %378, %343
  %388 = load i8*, i8** %12, align 8
  %389 = call i32 @get_unaligned_le16(i8* %388)
  %390 = ashr i32 %389, 2
  %391 = load i8*, i8** %13, align 8
  %392 = sext i32 %390 to i64
  %393 = sub i64 0, %392
  %394 = getelementptr inbounds i8, i8* %391, i64 %393
  store i8* %394, i8** %13, align 8
  %395 = load i8*, i8** %12, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 2
  store i8* %396, i8** %12, align 8
  %397 = load i8*, i8** %13, align 8
  %398 = load i8*, i8** %14, align 8
  %399 = icmp eq i8* %397, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %387
  br label %601

401:                                              ; preds = %387
  %402 = load i8*, i8** %13, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 -16384
  store i8* %403, i8** %13, align 8
  br label %443

404:                                              ; preds = %340
  %405 = load i8*, i8** %14, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 -1
  store i8* %406, i8** %13, align 8
  %407 = load i64, i64* %15, align 8
  %408 = lshr i64 %407, 2
  %409 = load i8*, i8** %13, align 8
  %410 = sub i64 0, %408
  %411 = getelementptr inbounds i8, i8* %409, i64 %410
  store i8* %411, i8** %13, align 8
  %412 = load i8*, i8** %12, align 8
  %413 = getelementptr inbounds i8, i8* %412, i32 1
  store i8* %413, i8** %12, align 8
  %414 = load i8, i8* %412, align 1
  %415 = zext i8 %414 to i32
  %416 = shl i32 %415, 2
  %417 = load i8*, i8** %13, align 8
  %418 = sext i32 %416 to i64
  %419 = sub i64 0, %418
  %420 = getelementptr inbounds i8, i8* %417, i64 %419
  store i8* %420, i8** %13, align 8
  %421 = load i8*, i8** %13, align 8
  %422 = load i8*, i8** %8, align 8
  %423 = load i8*, i8** %14, align 8
  %424 = call i64 @HAVE_LB(i8* %421, i8* %422, i8* %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %404
  br label %641

427:                                              ; preds = %404
  %428 = load i8*, i8** %11, align 8
  %429 = load i8*, i8** %14, align 8
  %430 = call i64 @HAVE_OP(i64 2, i8* %428, i8* %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %427
  br label %633

433:                                              ; preds = %427
  %434 = load i8*, i8** %13, align 8
  %435 = getelementptr inbounds i8, i8* %434, i32 1
  store i8* %435, i8** %13, align 8
  %436 = load i8, i8* %434, align 1
  %437 = load i8*, i8** %14, align 8
  %438 = getelementptr inbounds i8, i8* %437, i32 1
  store i8* %438, i8** %14, align 8
  store i8 %436, i8* %437, align 1
  %439 = load i8*, i8** %13, align 8
  %440 = load i8, i8* %439, align 1
  %441 = load i8*, i8** %14, align 8
  %442 = getelementptr inbounds i8, i8* %441, i32 1
  store i8* %442, i8** %14, align 8
  store i8 %440, i8* %441, align 1
  br label %534

443:                                              ; preds = %401
  br label %444

444:                                              ; preds = %443, %328
  br label %445

445:                                              ; preds = %444
  %446 = load i8*, i8** %13, align 8
  %447 = load i8*, i8** %8, align 8
  %448 = load i8*, i8** %14, align 8
  %449 = call i64 @HAVE_LB(i8* %446, i8* %447, i8* %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %445
  br label %641

452:                                              ; preds = %445
  %453 = load i64, i64* %15, align 8
  %454 = add i64 %453, 3
  %455 = sub i64 %454, 1
  %456 = load i8*, i8** %11, align 8
  %457 = load i8*, i8** %14, align 8
  %458 = call i64 @HAVE_OP(i64 %455, i8* %456, i8* %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %452
  br label %633

461:                                              ; preds = %452
  %462 = load i64, i64* %15, align 8
  %463 = icmp uge i64 %462, 6
  br i1 %463, label %464, label %510

464:                                              ; preds = %461
  %465 = load i8*, i8** %14, align 8
  %466 = load i8*, i8** %13, align 8
  %467 = ptrtoint i8* %465 to i64
  %468 = ptrtoint i8* %466 to i64
  %469 = sub i64 %467, %468
  %470 = icmp sge i64 %469, 4
  br i1 %470, label %471, label %510

471:                                              ; preds = %464
  %472 = load i8*, i8** %14, align 8
  %473 = load i8*, i8** %13, align 8
  %474 = call i32 @COPY4(i8* %472, i8* %473)
  %475 = load i8*, i8** %14, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 4
  store i8* %476, i8** %14, align 8
  %477 = load i8*, i8** %13, align 8
  %478 = getelementptr inbounds i8, i8* %477, i64 4
  store i8* %478, i8** %13, align 8
  %479 = load i64, i64* %15, align 8
  %480 = sub i64 %479, 2
  store i64 %480, i64* %15, align 8
  br label %481

481:                                              ; preds = %491, %471
  %482 = load i8*, i8** %14, align 8
  %483 = load i8*, i8** %13, align 8
  %484 = call i32 @COPY4(i8* %482, i8* %483)
  %485 = load i8*, i8** %14, align 8
  %486 = getelementptr inbounds i8, i8* %485, i64 4
  store i8* %486, i8** %14, align 8
  %487 = load i8*, i8** %13, align 8
  %488 = getelementptr inbounds i8, i8* %487, i64 4
  store i8* %488, i8** %13, align 8
  %489 = load i64, i64* %15, align 8
  %490 = sub i64 %489, 4
  store i64 %490, i64* %15, align 8
  br label %491

491:                                              ; preds = %481
  %492 = load i64, i64* %15, align 8
  %493 = icmp uge i64 %492, 4
  br i1 %493, label %481, label %494

494:                                              ; preds = %491
  %495 = load i64, i64* %15, align 8
  %496 = icmp ugt i64 %495, 0
  br i1 %496, label %497, label %509

497:                                              ; preds = %494
  br label %498

498:                                              ; preds = %504, %497
  %499 = load i8*, i8** %13, align 8
  %500 = getelementptr inbounds i8, i8* %499, i32 1
  store i8* %500, i8** %13, align 8
  %501 = load i8, i8* %499, align 1
  %502 = load i8*, i8** %14, align 8
  %503 = getelementptr inbounds i8, i8* %502, i32 1
  store i8* %503, i8** %14, align 8
  store i8 %501, i8* %502, align 1
  br label %504

504:                                              ; preds = %498
  %505 = load i64, i64* %15, align 8
  %506 = add i64 %505, -1
  store i64 %506, i64* %15, align 8
  %507 = icmp ugt i64 %506, 0
  br i1 %507, label %498, label %508

508:                                              ; preds = %504
  br label %509

509:                                              ; preds = %508, %494
  br label %533

510:                                              ; preds = %464, %461
  br label %511

511:                                              ; preds = %510, %287
  %512 = load i8*, i8** %13, align 8
  %513 = getelementptr inbounds i8, i8* %512, i32 1
  store i8* %513, i8** %13, align 8
  %514 = load i8, i8* %512, align 1
  %515 = load i8*, i8** %14, align 8
  %516 = getelementptr inbounds i8, i8* %515, i32 1
  store i8* %516, i8** %14, align 8
  store i8 %514, i8* %515, align 1
  %517 = load i8*, i8** %13, align 8
  %518 = getelementptr inbounds i8, i8* %517, i32 1
  store i8* %518, i8** %13, align 8
  %519 = load i8, i8* %517, align 1
  %520 = load i8*, i8** %14, align 8
  %521 = getelementptr inbounds i8, i8* %520, i32 1
  store i8* %521, i8** %14, align 8
  store i8 %519, i8* %520, align 1
  br label %522

522:                                              ; preds = %528, %511
  %523 = load i8*, i8** %13, align 8
  %524 = getelementptr inbounds i8, i8* %523, i32 1
  store i8* %524, i8** %13, align 8
  %525 = load i8, i8* %523, align 1
  %526 = load i8*, i8** %14, align 8
  %527 = getelementptr inbounds i8, i8* %526, i32 1
  store i8* %527, i8** %14, align 8
  store i8 %525, i8* %526, align 1
  br label %528

528:                                              ; preds = %522
  %529 = load i64, i64* %15, align 8
  %530 = add i64 %529, -1
  store i64 %530, i64* %15, align 8
  %531 = icmp ugt i64 %530, 0
  br i1 %531, label %522, label %532

532:                                              ; preds = %528
  br label %533

533:                                              ; preds = %532, %509
  br label %534

534:                                              ; preds = %533, %433, %231
  %535 = load i8*, i8** %12, align 8
  %536 = getelementptr inbounds i8, i8* %535, i64 -2
  %537 = load i8, i8* %536, align 1
  %538 = zext i8 %537 to i32
  %539 = and i32 %538, 3
  %540 = sext i32 %539 to i64
  store i64 %540, i64* %15, align 8
  %541 = load i64, i64* %15, align 8
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %543, label %544

543:                                              ; preds = %534
  br label %592

544:                                              ; preds = %534
  br label %545

545:                                              ; preds = %544, %39
  %546 = load i64, i64* %15, align 8
  %547 = load i8*, i8** %11, align 8
  %548 = load i8*, i8** %14, align 8
  %549 = call i64 @HAVE_OP(i64 %546, i8* %547, i8* %548)
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %545
  br label %633

552:                                              ; preds = %545
  %553 = load i64, i64* %15, align 8
  %554 = add i64 %553, 1
  %555 = load i8*, i8** %10, align 8
  %556 = load i8*, i8** %12, align 8
  %557 = call i64 @HAVE_IP(i64 %554, i8* %555, i8* %556)
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %560

559:                                              ; preds = %552
  br label %625

560:                                              ; preds = %552
  %561 = load i8*, i8** %12, align 8
  %562 = getelementptr inbounds i8, i8* %561, i32 1
  store i8* %562, i8** %12, align 8
  %563 = load i8, i8* %561, align 1
  %564 = load i8*, i8** %14, align 8
  %565 = getelementptr inbounds i8, i8* %564, i32 1
  store i8* %565, i8** %14, align 8
  store i8 %563, i8* %564, align 1
  %566 = load i64, i64* %15, align 8
  %567 = icmp ugt i64 %566, 1
  br i1 %567, label %568, label %583

568:                                              ; preds = %560
  %569 = load i8*, i8** %12, align 8
  %570 = getelementptr inbounds i8, i8* %569, i32 1
  store i8* %570, i8** %12, align 8
  %571 = load i8, i8* %569, align 1
  %572 = load i8*, i8** %14, align 8
  %573 = getelementptr inbounds i8, i8* %572, i32 1
  store i8* %573, i8** %14, align 8
  store i8 %571, i8* %572, align 1
  %574 = load i64, i64* %15, align 8
  %575 = icmp ugt i64 %574, 2
  br i1 %575, label %576, label %582

576:                                              ; preds = %568
  %577 = load i8*, i8** %12, align 8
  %578 = getelementptr inbounds i8, i8* %577, i32 1
  store i8* %578, i8** %12, align 8
  %579 = load i8, i8* %577, align 1
  %580 = load i8*, i8** %14, align 8
  %581 = getelementptr inbounds i8, i8* %580, i32 1
  store i8* %581, i8** %14, align 8
  store i8 %579, i8* %580, align 1
  br label %582

582:                                              ; preds = %576, %568
  br label %583

583:                                              ; preds = %582, %560
  %584 = load i8*, i8** %12, align 8
  %585 = getelementptr inbounds i8, i8* %584, i32 1
  store i8* %585, i8** %12, align 8
  %586 = load i8, i8* %584, align 1
  %587 = zext i8 %586 to i64
  store i64 %587, i64* %15, align 8
  br label %588

588:                                              ; preds = %583
  %589 = load i8*, i8** %12, align 8
  %590 = load i8*, i8** %10, align 8
  %591 = icmp ult i8* %589, %590
  br i1 %591, label %247, label %592

592:                                              ; preds = %588, %543
  br label %68

593:                                              ; preds = %68
  %594 = load i8*, i8** %14, align 8
  %595 = load i8*, i8** %8, align 8
  %596 = ptrtoint i8* %594 to i64
  %597 = ptrtoint i8* %595 to i64
  %598 = sub i64 %596, %597
  %599 = load i64*, i64** %9, align 8
  store i64 %598, i64* %599, align 8
  %600 = load i32, i32* @LZO_E_EOF_NOT_FOUND, align 4
  store i32 %600, i32* %5, align 4
  br label %649

601:                                              ; preds = %400
  %602 = load i8*, i8** %14, align 8
  %603 = load i8*, i8** %8, align 8
  %604 = ptrtoint i8* %602 to i64
  %605 = ptrtoint i8* %603 to i64
  %606 = sub i64 %604, %605
  %607 = load i64*, i64** %9, align 8
  store i64 %606, i64* %607, align 8
  %608 = load i8*, i8** %12, align 8
  %609 = load i8*, i8** %10, align 8
  %610 = icmp eq i8* %608, %609
  br i1 %610, label %611, label %613

611:                                              ; preds = %601
  %612 = load i32, i32* @LZO_E_OK, align 4
  br label %623

613:                                              ; preds = %601
  %614 = load i8*, i8** %12, align 8
  %615 = load i8*, i8** %10, align 8
  %616 = icmp ult i8* %614, %615
  br i1 %616, label %617, label %619

617:                                              ; preds = %613
  %618 = load i32, i32* @LZO_E_INPUT_NOT_CONSUMED, align 4
  br label %621

619:                                              ; preds = %613
  %620 = load i32, i32* @LZO_E_INPUT_OVERRUN, align 4
  br label %621

621:                                              ; preds = %619, %617
  %622 = phi i32 [ %618, %617 ], [ %620, %619 ]
  br label %623

623:                                              ; preds = %621, %611
  %624 = phi i32 [ %612, %611 ], [ %622, %621 ]
  store i32 %624, i32* %5, align 4
  br label %649

625:                                              ; preds = %559, %376, %360, %317, %301, %130, %104, %88, %54
  %626 = load i8*, i8** %14, align 8
  %627 = load i8*, i8** %8, align 8
  %628 = ptrtoint i8* %626 to i64
  %629 = ptrtoint i8* %627 to i64
  %630 = sub i64 %628, %629
  %631 = load i64*, i64** %9, align 8
  store i64 %630, i64* %631, align 8
  %632 = load i32, i32* @LZO_E_INPUT_OVERRUN, align 4
  store i32 %632, i32* %5, align 4
  br label %649

633:                                              ; preds = %551, %460, %432, %286, %230, %122, %46
  %634 = load i8*, i8** %14, align 8
  %635 = load i8*, i8** %8, align 8
  %636 = ptrtoint i8* %634 to i64
  %637 = ptrtoint i8* %635 to i64
  %638 = sub i64 %636, %637
  %639 = load i64*, i64** %9, align 8
  store i64 %638, i64* %639, align 8
  %640 = load i32, i32* @LZO_E_OUTPUT_OVERRUN, align 4
  store i32 %640, i32* %5, align 4
  br label %649

641:                                              ; preds = %451, %426, %277, %224
  %642 = load i8*, i8** %14, align 8
  %643 = load i8*, i8** %8, align 8
  %644 = ptrtoint i8* %642 to i64
  %645 = ptrtoint i8* %643 to i64
  %646 = sub i64 %644, %645
  %647 = load i64*, i64** %9, align 8
  store i64 %646, i64* %647, align 8
  %648 = load i32, i32* @LZO_E_LOOKBEHIND_OVERRUN, align 4
  store i32 %648, i32* %5, align 4
  br label %649

649:                                              ; preds = %641, %633, %625, %623, %593
  %650 = load i32, i32* %5, align 4
  ret i32 %650
}

declare dso_local i64 @HAVE_OP(i64, i8*, i8*) #1

declare dso_local i64 @HAVE_IP(i64, i8*, i8*) #1

declare dso_local i32 @COPY4(i8*, i8*) #1

declare dso_local i64 @HAVE_LB(i8*, i8*, i8*) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
