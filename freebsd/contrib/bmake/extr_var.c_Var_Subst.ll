; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_Var_Subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_Var_Subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Var_Subst.errorReported = internal global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@save_dollars = common dso_local global i64 0, align 8
@VARF_ASSIGN = common dso_local global i32 0, align 4
@PROPEN = common dso_local global i8 0, align 1
@BROPEN = common dso_local global i8 0, align 1
@TRUE = common dso_local global i8* null, align 8
@PRCLOSE = common dso_local global i8 0, align 1
@BRCLOSE = common dso_local global i8 0, align 1
@var_Error = common dso_local global i8* null, align 8
@varNoError = common dso_local global i8* null, align 8
@oldVars = common dso_local global i64 0, align 8
@VARF_UNDEFERR = common dso_local global i32 0, align 4
@PARSE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Undefined variable \22%.*s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Var_Subst(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %13, align 8
  %17 = call i32 @Buf_Init(i32* %9, i32 0)
  %18 = load i8*, i8** @FALSE, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* @Var_Subst.errorReported, align 4
  %20 = load i8*, i8** @FALSE, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %360, %278, %4
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %361

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @Buf_AddByte(i32* %9, i8 signext 32)
  br label %36

36:                                               ; preds = %34, %31, %26
  %37 = load i8*, i8** %5, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 36
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 36
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i64, i64* @save_dollars, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @VARF_ASSIGN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @Buf_AddByte(i32* %9, i8 signext %60)
  br label %62

62:                                               ; preds = %58, %53, %50
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @Buf_AddByte(i32* %9, i8 signext %66)
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  br label %360

70:                                               ; preds = %44, %39, %36
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 36
  br i1 %74, label %75, label %103

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  store i8* %76, i8** %14, align 8
  br label %78

78:                                               ; preds = %91, %75
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 36
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ false, %78 ], [ %87, %83 ]
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  br label %78

94:                                               ; preds = %88
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 @Buf_AddBytes(i32* %9, i32 %100, i8* %101)
  br label %359

103:                                              ; preds = %70
  %104 = load i8*, i8** %5, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %280

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %274, %206, %106
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @Buf_AddByte(i32* %9, i8 signext %116)
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %6, align 8
  %120 = load i8*, i8** @FALSE, align 8
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %15, align 4
  br label %274

122:                                              ; preds = %107
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = load i8, i8* @PROPEN, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %122
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* @BROPEN, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %162

138:                                              ; preds = %130
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8*, i8** %5, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %142, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %138
  %148 = load i8*, i8** %5, align 8
  %149 = call i32 @strlen(i8* %148)
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %151, label %158

151:                                              ; preds = %147, %138
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 @Buf_AddBytes(i32* %9, i32 2, i8* %152)
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  store i8* %155, i8** %6, align 8
  %156 = load i8*, i8** @FALSE, align 8
  %157 = ptrtoint i8* %156 to i32
  store i32 %157, i32* %15, align 4
  br label %161

158:                                              ; preds = %147
  %159 = load i8*, i8** @TRUE, align 8
  %160 = ptrtoint i8* %159 to i32
  store i32 %160, i32* %15, align 4
  br label %161

161:                                              ; preds = %158, %151
  br label %275

162:                                              ; preds = %130, %122
  %163 = load i8*, i8** %6, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  store i8* %164, i8** %16, align 8
  br label %165

165:                                              ; preds = %198, %162
  %166 = load i8*, i8** %16, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %165
  %171 = load i8*, i8** %16, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 58
  br i1 %174, label %175, label %189

175:                                              ; preds = %170
  %176 = load i8*, i8** %16, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = load i8, i8* @PRCLOSE, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %178, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %175
  %183 = load i8*, i8** %16, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = load i8, i8* @BRCLOSE, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %185, %187
  br label %189

189:                                              ; preds = %182, %175, %170, %165
  %190 = phi i1 [ false, %175 ], [ false, %170 ], [ false, %165 ], [ %188, %182 ]
  br i1 %190, label %191, label %201

191:                                              ; preds = %189
  %192 = load i8*, i8** %16, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 36
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %201

197:                                              ; preds = %191
  br label %198

198:                                              ; preds = %197
  %199 = load i8*, i8** %16, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %16, align 8
  br label %165

201:                                              ; preds = %196, %189
  %202 = load i8*, i8** %16, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 36
  br i1 %205, label %206, label %216

206:                                              ; preds = %201
  %207 = load i8*, i8** %16, align 8
  %208 = load i8*, i8** %6, align 8
  %209 = ptrtoint i8* %207 to i64
  %210 = ptrtoint i8* %208 to i64
  %211 = sub i64 %209, %210
  %212 = trunc i64 %211 to i32
  %213 = load i8*, i8** %6, align 8
  %214 = call i32 @Buf_AddBytes(i32* %9, i32 %212, i8* %213)
  %215 = load i8*, i8** %16, align 8
  store i8* %215, i8** %6, align 8
  br label %107

216:                                              ; preds = %201
  %217 = load i8*, i8** %5, align 8
  %218 = load i8*, i8** %6, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 2
  %220 = load i8*, i8** %16, align 8
  %221 = load i8*, i8** %6, align 8
  %222 = ptrtoint i8* %220 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = sub nsw i64 %224, 2
  %226 = trunc i64 %225 to i32
  %227 = call i64 @strncmp(i8* %217, i8* %219, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %241, label %229

229:                                              ; preds = %216
  %230 = load i8*, i8** %5, align 8
  %231 = load i8*, i8** %16, align 8
  %232 = load i8*, i8** %6, align 8
  %233 = ptrtoint i8* %231 to i64
  %234 = ptrtoint i8* %232 to i64
  %235 = sub i64 %233, %234
  %236 = sub nsw i64 %235, 2
  %237 = getelementptr inbounds i8, i8* %230, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %270

241:                                              ; preds = %229, %216
  br label %242

242:                                              ; preds = %255, %241
  %243 = load i8*, i8** %16, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp ne i32 %245, 36
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load i8*, i8** %16, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp ne i32 %250, 0
  br label %252

252:                                              ; preds = %247, %242
  %253 = phi i1 [ false, %242 ], [ %251, %247 ]
  br i1 %253, label %254, label %258

254:                                              ; preds = %252
  br label %255

255:                                              ; preds = %254
  %256 = load i8*, i8** %16, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %16, align 8
  br label %242

258:                                              ; preds = %252
  %259 = load i8*, i8** %16, align 8
  %260 = load i8*, i8** %6, align 8
  %261 = ptrtoint i8* %259 to i64
  %262 = ptrtoint i8* %260 to i64
  %263 = sub i64 %261, %262
  %264 = trunc i64 %263 to i32
  %265 = load i8*, i8** %6, align 8
  %266 = call i32 @Buf_AddBytes(i32* %9, i32 %264, i8* %265)
  %267 = load i8*, i8** %16, align 8
  store i8* %267, i8** %6, align 8
  %268 = load i8*, i8** @FALSE, align 8
  %269 = ptrtoint i8* %268 to i32
  store i32 %269, i32* %15, align 4
  br label %273

270:                                              ; preds = %229
  %271 = load i8*, i8** @TRUE, align 8
  %272 = ptrtoint i8* %271 to i32
  store i32 %272, i32* %15, align 4
  br label %273

273:                                              ; preds = %270, %258
  br label %275

274:                                              ; preds = %113
  br label %107

275:                                              ; preds = %273, %161
  %276 = load i32, i32* %15, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %275
  br label %22

279:                                              ; preds = %275
  br label %280

280:                                              ; preds = %279, %103
  %281 = load i8*, i8** %6, align 8
  %282 = load i32*, i32** %7, align 8
  %283 = load i32, i32* %8, align 4
  %284 = call i8* @Var_Parse(i8* %281, i32* %282, i32 %283, i32* %11, i8** %13)
  store i8* %284, i8** %10, align 8
  %285 = load i8*, i8** %10, align 8
  %286 = load i8*, i8** @var_Error, align 8
  %287 = icmp eq i8* %285, %286
  br i1 %287, label %292, label %288

288:                                              ; preds = %280
  %289 = load i8*, i8** %10, align 8
  %290 = load i8*, i8** @varNoError, align 8
  %291 = icmp eq i8* %289, %290
  br i1 %291, label %292, label %332

292:                                              ; preds = %288, %280
  %293 = load i64, i64* @oldVars, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %292
  %296 = load i32, i32* %11, align 4
  %297 = load i8*, i8** %6, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  store i8* %299, i8** %6, align 8
  br label %331

300:                                              ; preds = %292
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* @VARF_UNDEFERR, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %300
  %306 = load i8*, i8** %10, align 8
  %307 = load i8*, i8** @var_Error, align 8
  %308 = icmp eq i8* %306, %307
  br i1 %308, label %309, label %324

309:                                              ; preds = %305, %300
  %310 = load i32, i32* @Var_Subst.errorReported, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %317, label %312

312:                                              ; preds = %309
  %313 = load i32, i32* @PARSE_FATAL, align 4
  %314 = load i32, i32* %11, align 4
  %315 = load i8*, i8** %6, align 8
  %316 = call i32 @Parse_Error(i32 %313, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %314, i8* %315)
  br label %317

317:                                              ; preds = %312, %309
  %318 = load i32, i32* %11, align 4
  %319 = load i8*, i8** %6, align 8
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i8, i8* %319, i64 %320
  store i8* %321, i8** %6, align 8
  %322 = load i8*, i8** @TRUE, align 8
  %323 = ptrtoint i8* %322 to i32
  store i32 %323, i32* @Var_Subst.errorReported, align 4
  br label %330

324:                                              ; preds = %305
  %325 = load i8*, i8** %6, align 8
  %326 = load i8, i8* %325, align 1
  %327 = call i32 @Buf_AddByte(i32* %9, i8 signext %326)
  %328 = load i8*, i8** %6, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 1
  store i8* %329, i8** %6, align 8
  br label %330

330:                                              ; preds = %324, %317
  br label %331

331:                                              ; preds = %330, %295
  br label %356

332:                                              ; preds = %288
  %333 = load i32, i32* %11, align 4
  %334 = load i8*, i8** %6, align 8
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8* %336, i8** %6, align 8
  %337 = load i8*, i8** %10, align 8
  %338 = call i32 @strlen(i8* %337)
  store i32 %338, i32* %11, align 4
  %339 = load i32, i32* %11, align 4
  %340 = load i8*, i8** %10, align 8
  %341 = call i32 @Buf_AddBytes(i32* %9, i32 %339, i8* %340)
  %342 = load i32, i32* %11, align 4
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %353

344:                                              ; preds = %332
  %345 = load i8*, i8** %10, align 8
  %346 = load i32, i32* %11, align 4
  %347 = sub nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %345, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = icmp eq i32 %351, 92
  br label %353

353:                                              ; preds = %344, %332
  %354 = phi i1 [ false, %332 ], [ %352, %344 ]
  %355 = zext i1 %354 to i32
  store i32 %355, i32* %12, align 4
  br label %356

356:                                              ; preds = %353, %331
  %357 = load i8*, i8** %13, align 8
  %358 = call i32 @free(i8* %357)
  store i8* null, i8** %13, align 8
  br label %359

359:                                              ; preds = %356, %94
  br label %360

360:                                              ; preds = %359, %62
  br label %22

361:                                              ; preds = %22
  %362 = call i8* @Buf_DestroyCompact(i32* %9)
  ret i8* %362
}

declare dso_local i32 @Buf_Init(i32*, i32) #1

declare dso_local i32 @Buf_AddByte(i32*, i8 signext) #1

declare dso_local i32 @Buf_AddBytes(i32*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @Var_Parse(i8*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @Parse_Error(i32, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @Buf_DestroyCompact(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
