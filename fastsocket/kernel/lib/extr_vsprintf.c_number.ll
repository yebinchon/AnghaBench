; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_vsprintf.c_number.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_vsprintf.c_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_spec = type { i32, i32, i64, i32 }

@number.digits = internal constant [16 x i8] c"0123456789ABCDEF", align 16
@SPECIAL = common dso_local global i32 0, align 4
@SMALL = common dso_local global i8 0, align 1
@LEFT = common dso_local global i32 0, align 4
@ZEROPAD = common dso_local global i32 0, align 4
@SIGN = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64, %struct.printf_spec*)* @number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @number(i8* %0, i8* %1, i64 %2, %struct.printf_spec* byval(%struct.printf_spec) align 8 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [66 x i8], align 16
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SPECIAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 10
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8, i8* @SMALL, align 1
  %31 = sext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %10, align 1
  %34 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LEFT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load i32, i32* @ZEROPAD, align 4
  %41 = xor i32 %40, -1
  %42 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %41
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %25
  store i8 0, i8* %9, align 1
  %46 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SIGN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %45
  %52 = load i64, i64* %7, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  store i8 45, i8* %9, align 1
  %55 = load i64, i64* %7, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* %7, align 8
  %57 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  br label %82

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PLUS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  store i8 43, i8* %9, align 1
  %67 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  br label %81

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SPACE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  store i8 32, i8* %9, align 1
  %77 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81, %54
  br label %83

83:                                               ; preds = %82, %45
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %87, align 8
  %90 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 16
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %93, %86
  br label %98

98:                                               ; preds = %97, %83
  store i32 0, i32* %12, align 4
  %99 = load i64, i64* %7, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 %104
  store i8 48, i8* %105, align 1
  br label %155

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 10
  br i1 %109, label %110, label %145

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %114 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 16
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 4, i32* %14, align 4
  br label %118

118:                                              ; preds = %117, %110
  br label %119

119:                                              ; preds = %141, %118
  %120 = load i64, i64* %7, align 8
  %121 = trunc i64 %120 to i8
  %122 = zext i8 %121 to i32
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [16 x i8], [16 x i8]* @number.digits, i64 0, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* %10, align 1
  %130 = sext i8 %129 to i32
  %131 = or i32 %128, %130
  %132 = trunc i32 %131 to i8
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 %135
  store i8 %132, i8* %136, align 1
  %137 = load i32, i32* %14, align 4
  %138 = load i64, i64* %7, align 8
  %139 = zext i32 %137 to i64
  %140 = lshr i64 %138, %139
  store i64 %140, i64* %7, align 8
  br label %141

141:                                              ; preds = %119
  %142 = load i64, i64* %7, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %119, label %144

144:                                              ; preds = %141
  br label %154

145:                                              ; preds = %106
  %146 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 0
  %147 = load i64, i64* %7, align 8
  %148 = call i8* @put_dec(i8* %146, i64 %147)
  %149 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 0
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %145, %144
  br label %155

155:                                              ; preds = %154, %101
  %156 = load i32, i32* %12, align 4
  %157 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %156, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 3
  store i32 %161, i32* %162, align 8
  br label %163

163:                                              ; preds = %160, %155
  %164 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %168, %166
  store i64 %169, i64* %167, align 8
  %170 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @ZEROPAD, align 4
  %173 = load i32, i32* @LEFT, align 4
  %174 = add nsw i32 %172, %173
  %175 = and i32 %171, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %193, label %177

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %189, %177
  %179 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, -1
  store i64 %181, i64* %179, align 8
  %182 = icmp sge i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load i8*, i8** %5, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = icmp ult i8* %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i8*, i8** %5, align 8
  store i8 32, i8* %188, align 1
  br label %189

189:                                              ; preds = %187, %183
  %190 = load i8*, i8** %5, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %5, align 8
  br label %178

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192, %163
  %194 = load i8, i8* %9, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %193
  %197 = load i8*, i8** %5, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = icmp ult i8* %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i8, i8* %9, align 1
  %202 = load i8*, i8** %5, align 8
  store i8 %201, i8* %202, align 1
  br label %203

203:                                              ; preds = %200, %196
  %204 = load i8*, i8** %5, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %5, align 8
  br label %206

206:                                              ; preds = %203, %193
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %235

209:                                              ; preds = %206
  %210 = load i8*, i8** %5, align 8
  %211 = load i8*, i8** %6, align 8
  %212 = icmp ult i8* %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = load i8*, i8** %5, align 8
  store i8 48, i8* %214, align 1
  br label %215

215:                                              ; preds = %213, %209
  %216 = load i8*, i8** %5, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %5, align 8
  %218 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 16
  br i1 %220, label %221, label %234

221:                                              ; preds = %215
  %222 = load i8*, i8** %5, align 8
  %223 = load i8*, i8** %6, align 8
  %224 = icmp ult i8* %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %221
  %226 = load i8, i8* %10, align 1
  %227 = sext i8 %226 to i32
  %228 = or i32 88, %227
  %229 = trunc i32 %228 to i8
  %230 = load i8*, i8** %5, align 8
  store i8 %229, i8* %230, align 1
  br label %231

231:                                              ; preds = %225, %221
  %232 = load i8*, i8** %5, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %5, align 8
  br label %234

234:                                              ; preds = %231, %215
  br label %235

235:                                              ; preds = %234, %206
  %236 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @LEFT, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %266, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @ZEROPAD, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 48, i32 32
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %15, align 1
  br label %250

250:                                              ; preds = %262, %241
  %251 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %252, -1
  store i64 %253, i64* %251, align 8
  %254 = icmp sge i64 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %250
  %256 = load i8*, i8** %5, align 8
  %257 = load i8*, i8** %6, align 8
  %258 = icmp ult i8* %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load i8, i8* %15, align 1
  %261 = load i8*, i8** %5, align 8
  store i8 %260, i8* %261, align 1
  br label %262

262:                                              ; preds = %259, %255
  %263 = load i8*, i8** %5, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %5, align 8
  br label %250

265:                                              ; preds = %250
  br label %266

266:                                              ; preds = %265, %235
  br label %267

267:                                              ; preds = %279, %266
  %268 = load i32, i32* %12, align 4
  %269 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %269, align 8
  %272 = icmp sle i32 %268, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %267
  %274 = load i8*, i8** %5, align 8
  %275 = load i8*, i8** %6, align 8
  %276 = icmp ult i8* %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = load i8*, i8** %5, align 8
  store i8 48, i8* %278, align 1
  br label %279

279:                                              ; preds = %277, %273
  %280 = load i8*, i8** %5, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %5, align 8
  br label %267

282:                                              ; preds = %267
  br label %283

283:                                              ; preds = %297, %282
  %284 = load i32, i32* %12, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* %12, align 4
  %286 = icmp sge i32 %285, 0
  br i1 %286, label %287, label %300

287:                                              ; preds = %283
  %288 = load i8*, i8** %5, align 8
  %289 = load i8*, i8** %6, align 8
  %290 = icmp ult i8* %288, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %287
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 %293
  %295 = load i8, i8* %294, align 1
  %296 = load i8*, i8** %5, align 8
  store i8 %295, i8* %296, align 1
  br label %297

297:                                              ; preds = %291, %287
  %298 = load i8*, i8** %5, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %5, align 8
  br label %283

300:                                              ; preds = %283
  br label %301

301:                                              ; preds = %312, %300
  %302 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %3, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, -1
  store i64 %304, i64* %302, align 8
  %305 = icmp sge i64 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %301
  %307 = load i8*, i8** %5, align 8
  %308 = load i8*, i8** %6, align 8
  %309 = icmp ult i8* %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = load i8*, i8** %5, align 8
  store i8 32, i8* %311, align 1
  br label %312

312:                                              ; preds = %310, %306
  %313 = load i8*, i8** %5, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %314, i8** %5, align 8
  br label %301

315:                                              ; preds = %301
  %316 = load i8*, i8** %5, align 8
  ret i8* %316
}

declare dso_local i8* @put_dec(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
