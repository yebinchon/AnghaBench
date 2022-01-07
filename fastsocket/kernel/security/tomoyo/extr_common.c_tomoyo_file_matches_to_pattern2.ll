; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_file_matches_to_pattern2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_file_matches_to_pattern2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @tomoyo_file_matches_to_pattern2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_file_matches_to_pattern2(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  br label %13

13:                                               ; preds = %280, %39, %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ult i8* %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %285

23:                                               ; preds = %21
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 92
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %8, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %321

39:                                               ; preds = %28
  br label %13

40:                                               ; preds = %23
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %10, align 1
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  switch i32 %47, label %203 [
    i32 63, label %48
    i32 92, label %79
    i32 43, label %92
    i32 120, label %98
    i32 97, label %104
    i32 48, label %110
    i32 49, label %110
    i32 50, label %110
    i32 51, label %110
    i32 42, label %131
    i32 64, label %131
  ]

48:                                               ; preds = %40
  %49 = load i8, i8* %10, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 47
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %321

53:                                               ; preds = %48
  %54 = load i8, i8* %10, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 92
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 92
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  br label %76

66:                                               ; preds = %57
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @tomoyo_is_byte_range(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  store i8* %73, i8** %6, align 8
  br label %75

74:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %321

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77
  br label %280

79:                                               ; preds = %40
  %80 = load i8, i8* %10, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 92
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %321

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 92
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %321

91:                                               ; preds = %84
  br label %280

92:                                               ; preds = %40
  %93 = load i8, i8* %10, align 1
  %94 = call i32 @isdigit(i8 signext %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  store i32 0, i32* %5, align 4
  br label %321

97:                                               ; preds = %92
  br label %280

98:                                               ; preds = %40
  %99 = load i8, i8* %10, align 1
  %100 = call i32 @isxdigit(i8 signext %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %321

103:                                              ; preds = %98
  br label %280

104:                                              ; preds = %40
  %105 = load i8, i8* %10, align 1
  %106 = call i32 @tomoyo_is_alphabet_char(i8 signext %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %321

109:                                              ; preds = %104
  br label %280

110:                                              ; preds = %40, %40, %40, %40
  %111 = load i8, i8* %10, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 92
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = call i32 @tomoyo_is_byte_range(i8* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @strncmp(i8* %121, i8* %122, i32 3)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 3
  store i8* %127, i8** %6, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  store i8* %129, i8** %8, align 8
  br label %280

130:                                              ; preds = %119, %114, %110
  store i32 0, i32* %5, align 4
  br label %321

131:                                              ; preds = %40, %40
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %199, %131
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = load i8*, i8** %7, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = icmp sle i64 %134, %139
  br i1 %140, label %141, label %202

141:                                              ; preds = %132
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8*, i8** %7, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @tomoyo_file_matches_to_pattern2(i8* %145, i8* %146, i8* %148, i8* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  store i32 1, i32* %5, align 4
  br label %321

153:                                              ; preds = %141
  %154 = load i8*, i8** %6, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  store i8 %158, i8* %10, align 1
  %159 = load i8, i8* %10, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 46
  br i1 %161, label %162, label %168

162:                                              ; preds = %153
  %163 = load i8*, i8** %8, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 64
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %202

168:                                              ; preds = %162, %153
  %169 = load i8, i8* %10, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 92
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %199

173:                                              ; preds = %168
  %174 = load i8*, i8** %6, align 8
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 92
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %198

185:                                              ; preds = %173
  %186 = load i8*, i8** %6, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = call i32 @tomoyo_is_byte_range(i8* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 3
  store i32 %195, i32* %11, align 4
  br label %197

196:                                              ; preds = %185
  br label %202

197:                                              ; preds = %193
  br label %198

198:                                              ; preds = %197, %182
  br label %199

199:                                              ; preds = %198, %172
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %11, align 4
  br label %132

202:                                              ; preds = %196, %167, %132
  store i32 0, i32* %5, align 4
  br label %321

203:                                              ; preds = %40
  store i32 0, i32* %12, align 4
  %204 = load i8*, i8** %8, align 8
  %205 = load i8, i8* %204, align 1
  store i8 %205, i8* %10, align 1
  %206 = load i8, i8* %10, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 36
  br i1 %208, label %209, label %222

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %218, %209
  %211 = load i8*, i8** %6, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = call i32 @isdigit(i8 signext %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %210
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %210

221:                                              ; preds = %210
  br label %258

222:                                              ; preds = %203
  %223 = load i8, i8* %10, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 88
  br i1 %225, label %226, label %239

226:                                              ; preds = %222
  br label %227

227:                                              ; preds = %235, %226
  %228 = load i8*, i8** %6, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = call i32 @isxdigit(i8 signext %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load i32, i32* %12, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %12, align 4
  br label %227

238:                                              ; preds = %227
  br label %257

239:                                              ; preds = %222
  %240 = load i8, i8* %10, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 65
  br i1 %242, label %243, label %256

243:                                              ; preds = %239
  br label %244

244:                                              ; preds = %252, %243
  %245 = load i8*, i8** %6, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = call i32 @tomoyo_is_alphabet_char(i8 signext %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %244
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %12, align 4
  br label %244

255:                                              ; preds = %244
  br label %256

256:                                              ; preds = %255, %239
  br label %257

257:                                              ; preds = %256, %238
  br label %258

258:                                              ; preds = %257, %221
  store i32 1, i32* %11, align 4
  br label %259

259:                                              ; preds = %276, %258
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %12, align 4
  %262 = icmp sle i32 %260, %261
  br i1 %262, label %263, label %279

263:                                              ; preds = %259
  %264 = load i8*, i8** %6, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = load i8*, i8** %7, align 8
  %269 = load i8*, i8** %8, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = load i8*, i8** %9, align 8
  %272 = call i32 @tomoyo_file_matches_to_pattern2(i8* %267, i8* %268, i8* %270, i8* %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %263
  store i32 1, i32* %5, align 4
  br label %321

275:                                              ; preds = %263
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %11, align 4
  br label %259

279:                                              ; preds = %259
  store i32 0, i32* %5, align 4
  br label %321

280:                                              ; preds = %125, %109, %103, %97, %91, %78
  %281 = load i8*, i8** %6, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %6, align 8
  %283 = load i8*, i8** %8, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %8, align 8
  br label %13

285:                                              ; preds = %21
  br label %286

286:                                              ; preds = %307, %285
  %287 = load i8*, i8** %8, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 92
  br i1 %290, label %291, label %305

291:                                              ; preds = %286
  %292 = load i8*, i8** %8, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 1
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp eq i32 %295, 42
  br i1 %296, label %303, label %297

297:                                              ; preds = %291
  %298 = load i8*, i8** %8, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 1
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %301, 64
  br label %303

303:                                              ; preds = %297, %291
  %304 = phi i1 [ true, %291 ], [ %302, %297 ]
  br label %305

305:                                              ; preds = %303, %286
  %306 = phi i1 [ false, %286 ], [ %304, %303 ]
  br i1 %306, label %307, label %310

307:                                              ; preds = %305
  %308 = load i8*, i8** %8, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 2
  store i8* %309, i8** %8, align 8
  br label %286

310:                                              ; preds = %305
  %311 = load i8*, i8** %6, align 8
  %312 = load i8*, i8** %7, align 8
  %313 = icmp eq i8* %311, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %310
  %315 = load i8*, i8** %8, align 8
  %316 = load i8*, i8** %9, align 8
  %317 = icmp eq i8* %315, %316
  br label %318

318:                                              ; preds = %314, %310
  %319 = phi i1 [ false, %310 ], [ %317, %314 ]
  %320 = zext i1 %319 to i32
  store i32 %320, i32* %5, align 4
  br label %321

321:                                              ; preds = %318, %279, %274, %202, %152, %130, %108, %102, %96, %90, %83, %74, %52, %38
  %322 = load i32, i32* %5, align 4
  ret i32 %322
}

declare dso_local i32 @tomoyo_is_byte_range(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @tomoyo_is_alphabet_char(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
