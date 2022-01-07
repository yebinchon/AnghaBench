; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_real_from_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_real_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64*, i64, i32 }

@SIGNIFICAND_BITS = common dso_local global i32 0, align 4
@_hex_bad = common dso_local global i32 0, align 4
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@MAX_EXP = common dso_local global i32 0, align 4
@rvc_normal = common dso_local global i64 0, align 8
@rvc_zero = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @real_from_string(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = call i32 @get_zero(%struct.TYPE_15__* %13, i32 0)
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  br label %31

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 43
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 48
  br i1 %36, label %37, label %260

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 120
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 88
  br i1 %48, label %49, label %260

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @SIGNIFICAND_BITS, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %7, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %59, %49
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 48
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  br label %54

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %105
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @hex_value(i8 signext %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @_hex_bad, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %110

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %79 = srem i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = shl i64 %76, %80
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %87 = sdiv i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %84, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %81
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %92, 4
  store i32 %93, i32* %7, align 4
  br label %105

94:                                               ; preds = %71
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = or i64 %102, 1
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %97, %94
  br label %105

105:                                              ; preds = %104, %74
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 4
  store i32 %107, i32* %5, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %4, align 8
  br label %63

110:                                              ; preds = %70
  %111 = load i8*, i8** %4, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 46
  br i1 %114, label %115, label %181

115:                                              ; preds = %110
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @SIGNIFICAND_BITS, align 4
  %120 = sub nsw i32 %119, 4
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %128, %122
  %124 = load i8*, i8** %4, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 48
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sub nsw i32 %131, 4
  store i32 %132, i32* %5, align 4
  br label %123

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %115
  br label %135

135:                                              ; preds = %134, %177
  %136 = load i8*, i8** %4, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i32 @hex_value(i8 signext %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @_hex_bad, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %180

143:                                              ; preds = %135
  %144 = load i32, i32* %7, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %143
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %151 = srem i32 %149, %150
  %152 = zext i32 %151 to i64
  %153 = shl i64 %148, %152
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %159 = sdiv i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %156, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = or i64 %162, %153
  store i64 %163, i64* %161, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %164, 4
  store i32 %165, i32* %7, align 4
  br label %177

166:                                              ; preds = %143
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = or i64 %174, 1
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %169, %166
  br label %177

177:                                              ; preds = %176, %146
  %178 = load i8*, i8** %4, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %4, align 8
  br label %135

180:                                              ; preds = %142
  br label %181

181:                                              ; preds = %180, %110
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %183 = call i32 @cmp_significand_0(%struct.TYPE_15__* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  br label %432

186:                                              ; preds = %181
  %187 = load i8*, i8** %4, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 112
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load i8*, i8** %4, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 80
  br i1 %195, label %196, label %251

196:                                              ; preds = %191, %186
  store i32 0, i32* %9, align 4
  %197 = load i8*, i8** %4, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %4, align 8
  %199 = load i8*, i8** %4, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 45
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  store i32 1, i32* %9, align 4
  %204 = load i8*, i8** %4, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %4, align 8
  br label %215

206:                                              ; preds = %196
  %207 = load i8*, i8** %4, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 43
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i8*, i8** %4, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %4, align 8
  br label %214

214:                                              ; preds = %211, %206
  br label %215

215:                                              ; preds = %214, %203
  store i32 0, i32* %8, align 4
  br label %216

216:                                              ; preds = %238, %215
  %217 = load i8*, i8** %4, align 8
  %218 = load i8, i8* %217, align 1
  %219 = call i64 @ISDIGIT(i8 signext %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %241

221:                                              ; preds = %216
  %222 = load i32, i32* %8, align 4
  %223 = mul nsw i32 %222, 10
  store i32 %223, i32* %8, align 4
  %224 = load i8*, i8** %4, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = sub nsw i32 %226, 48
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @MAX_EXP, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %221
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %432

237:                                              ; preds = %233
  br label %436

238:                                              ; preds = %221
  %239 = load i8*, i8** %4, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %4, align 8
  br label %216

241:                                              ; preds = %216
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* %8, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %8, align 4
  br label %247

247:                                              ; preds = %244, %241
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* %5, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %5, align 4
  br label %251

251:                                              ; preds = %247, %191
  %252 = load i64, i64* @rvc_normal, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 1
  store i64 %252, i64* %254, align 8
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %256 = load i32, i32* %5, align 4
  %257 = call i32 @SET_REAL_EXP(%struct.TYPE_15__* %255, i32 %256)
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %259 = call i32 @normalize(%struct.TYPE_15__* %258)
  br label %428

260:                                              ; preds = %43, %31
  %261 = call %struct.TYPE_15__* @ten_to_ptwo(i32 0)
  store %struct.TYPE_15__* %261, %struct.TYPE_15__** %10, align 8
  br label %262

262:                                              ; preds = %267, %260
  %263 = load i8*, i8** %4, align 8
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 48
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load i8*, i8** %4, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %4, align 8
  br label %262

270:                                              ; preds = %262
  br label %271

271:                                              ; preds = %294, %270
  %272 = load i8*, i8** %4, align 8
  %273 = load i8, i8* %272, align 1
  %274 = call i64 @ISDIGIT(i8 signext %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %295

276:                                              ; preds = %271
  %277 = load i8*, i8** %4, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %4, align 8
  %279 = load i8, i8* %277, align 1
  %280 = sext i8 %279 to i32
  %281 = sub nsw i32 %280, 48
  store i32 %281, i32* %11, align 4
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %285 = call i32 @do_multiply(%struct.TYPE_15__* %282, %struct.TYPE_15__* %283, %struct.TYPE_15__* %284)
  %286 = load i32, i32* %11, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %276
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %291 = load i32, i32* %11, align 4
  %292 = call i32 @real_digit(i32 %291)
  %293 = call i32 @do_add(%struct.TYPE_15__* %289, %struct.TYPE_15__* %290, i32 %292, i32 0)
  br label %294

294:                                              ; preds = %288, %276
  br label %271

295:                                              ; preds = %271
  %296 = load i8*, i8** %4, align 8
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 46
  br i1 %299, label %300, label %348

300:                                              ; preds = %295
  %301 = load i8*, i8** %4, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %4, align 8
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @rvc_zero, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %320

308:                                              ; preds = %300
  br label %309

309:                                              ; preds = %314, %308
  %310 = load i8*, i8** %4, align 8
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 48
  br i1 %313, label %314, label %319

314:                                              ; preds = %309
  %315 = load i8*, i8** %4, align 8
  %316 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %316, i8** %4, align 8
  %317 = load i32, i32* %5, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %5, align 4
  br label %309

319:                                              ; preds = %309
  br label %320

320:                                              ; preds = %319, %300
  br label %321

321:                                              ; preds = %344, %320
  %322 = load i8*, i8** %4, align 8
  %323 = load i8, i8* %322, align 1
  %324 = call i64 @ISDIGIT(i8 signext %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %347

326:                                              ; preds = %321
  %327 = load i8*, i8** %4, align 8
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %4, align 8
  %329 = load i8, i8* %327, align 1
  %330 = sext i8 %329 to i32
  %331 = sub nsw i32 %330, 48
  store i32 %331, i32* %11, align 4
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %335 = call i32 @do_multiply(%struct.TYPE_15__* %332, %struct.TYPE_15__* %333, %struct.TYPE_15__* %334)
  %336 = load i32, i32* %11, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %326
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %341 = load i32, i32* %11, align 4
  %342 = call i32 @real_digit(i32 %341)
  %343 = call i32 @do_add(%struct.TYPE_15__* %339, %struct.TYPE_15__* %340, i32 %342, i32 0)
  br label %344

344:                                              ; preds = %338, %326
  %345 = load i32, i32* %5, align 4
  %346 = add nsw i32 %345, -1
  store i32 %346, i32* %5, align 4
  br label %321

347:                                              ; preds = %321
  br label %348

348:                                              ; preds = %347, %295
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @rvc_zero, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %348
  br label %432

355:                                              ; preds = %348
  %356 = load i8*, i8** %4, align 8
  %357 = load i8, i8* %356, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp eq i32 %358, 101
  br i1 %359, label %365, label %360

360:                                              ; preds = %355
  %361 = load i8*, i8** %4, align 8
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 69
  br i1 %364, label %365, label %420

365:                                              ; preds = %360, %355
  store i32 0, i32* %12, align 4
  %366 = load i8*, i8** %4, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %367, i8** %4, align 8
  %368 = load i8*, i8** %4, align 8
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp eq i32 %370, 45
  br i1 %371, label %372, label %375

372:                                              ; preds = %365
  store i32 1, i32* %12, align 4
  %373 = load i8*, i8** %4, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %4, align 8
  br label %384

375:                                              ; preds = %365
  %376 = load i8*, i8** %4, align 8
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 43
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load i8*, i8** %4, align 8
  %382 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %382, i8** %4, align 8
  br label %383

383:                                              ; preds = %380, %375
  br label %384

384:                                              ; preds = %383, %372
  store i32 0, i32* %11, align 4
  br label %385

385:                                              ; preds = %407, %384
  %386 = load i8*, i8** %4, align 8
  %387 = load i8, i8* %386, align 1
  %388 = call i64 @ISDIGIT(i8 signext %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %410

390:                                              ; preds = %385
  %391 = load i32, i32* %11, align 4
  %392 = mul nsw i32 %391, 10
  store i32 %392, i32* %11, align 4
  %393 = load i8*, i8** %4, align 8
  %394 = load i8, i8* %393, align 1
  %395 = sext i8 %394 to i32
  %396 = sub nsw i32 %395, 48
  %397 = load i32, i32* %11, align 4
  %398 = add nsw i32 %397, %396
  store i32 %398, i32* %11, align 4
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* @MAX_EXP, align 4
  %401 = icmp sgt i32 %399, %400
  br i1 %401, label %402, label %407

402:                                              ; preds = %390
  %403 = load i32, i32* %12, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  br label %432

406:                                              ; preds = %402
  br label %436

407:                                              ; preds = %390
  %408 = load i8*, i8** %4, align 8
  %409 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %409, i8** %4, align 8
  br label %385

410:                                              ; preds = %385
  %411 = load i32, i32* %12, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %410
  %414 = load i32, i32* %11, align 4
  %415 = sub nsw i32 0, %414
  store i32 %415, i32* %11, align 4
  br label %416

416:                                              ; preds = %413, %410
  %417 = load i32, i32* %11, align 4
  %418 = load i32, i32* %5, align 4
  %419 = add nsw i32 %418, %417
  store i32 %419, i32* %5, align 4
  br label %420

420:                                              ; preds = %416, %360
  %421 = load i32, i32* %5, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %420
  %424 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %425 = load i32, i32* %5, align 4
  %426 = call i32 @times_pten(%struct.TYPE_15__* %424, i32 %425)
  br label %427

427:                                              ; preds = %423, %420
  br label %428

428:                                              ; preds = %427, %251
  %429 = load i32, i32* %6, align 4
  %430 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 2
  store i32 %429, i32* %431, align 8
  br label %440

432:                                              ; preds = %405, %354, %236, %185
  %433 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %434 = load i32, i32* %6, align 4
  %435 = call i32 @get_zero(%struct.TYPE_15__* %433, i32 %434)
  br label %440

436:                                              ; preds = %406, %237
  %437 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %438 = load i32, i32* %6, align 4
  %439 = call i32 @get_inf(%struct.TYPE_15__* %437, i32 %438)
  br label %440

440:                                              ; preds = %436, %432, %428
  ret void
}

declare dso_local i32 @get_zero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @hex_value(i8 signext) #1

declare dso_local i32 @cmp_significand_0(%struct.TYPE_15__*) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @SET_REAL_EXP(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @normalize(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ten_to_ptwo(i32) #1

declare dso_local i32 @do_multiply(%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @do_add(%struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @real_digit(i32) #1

declare dso_local i32 @times_pten(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @get_inf(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
