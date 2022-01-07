; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_demangle_info = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"NoSuchStrinG__\00", align 1
@DMGL_ANSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"::NoSuchStrinG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stab_demangle_info*, i8**, i8**)* @stab_demangle_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_demangle_template(%struct.stab_demangle_info* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.stab_demangle_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store %struct.stab_demangle_info* %0, %struct.stab_demangle_info** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %29, align 8
  %32 = load i8**, i8*** %6, align 8
  %33 = call i32 @stab_demangle_count(i8** %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %3
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %3
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @stab_bad_demangle(i8* %43)
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %4, align 8
  br label %392

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = load i8**, i8*** %6, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %48, align 8
  %52 = load i8**, i8*** %6, align 8
  %53 = call i64 @stab_demangle_get_count(i8** %52, i32* %9)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @stab_bad_demangle(i8* %56)
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %4, align 8
  br label %392

59:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %296, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %299

64:                                               ; preds = %60
  %65 = load i8**, i8*** %6, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 90
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %71, align 8
  %74 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %75 = load i8**, i8*** %6, align 8
  %76 = call i32 @stab_demangle_type(%struct.stab_demangle_info* %74, i8** %75, i32* null)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %70
  %79 = load i64, i64* @FALSE, align 8
  store i64 %79, i64* %4, align 8
  br label %392

80:                                               ; preds = %70
  br label %295

81:                                               ; preds = %64
  %82 = load i8**, i8*** %6, align 8
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %11, align 8
  %84 = load i64, i64* @FALSE, align 8
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* @FALSE, align 8
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* @FALSE, align 8
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* @FALSE, align 8
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* @FALSE, align 8
  store i64 %89, i64* %17, align 8
  %90 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %91 = load i8**, i8*** %6, align 8
  %92 = call i32 @stab_demangle_type(%struct.stab_demangle_info* %90, i8** %91, i32* null)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %81
  %95 = load i64, i64* @FALSE, align 8
  store i64 %95, i64* %4, align 8
  br label %392

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %140, %96
  %98 = load i8*, i8** %11, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i64, i64* %17, align 8
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %102, %97
  %107 = phi i1 [ false, %97 ], [ %105, %102 ]
  br i1 %107, label %108, label %141

108:                                              ; preds = %106
  %109 = load i8*, i8** %11, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  switch i32 %111, label %137 [
    i32 80, label %112
    i32 112, label %112
    i32 82, label %112
    i32 67, label %115
    i32 83, label %115
    i32 85, label %115
    i32 86, label %115
    i32 70, label %115
    i32 77, label %115
    i32 79, label %115
    i32 81, label %118
    i32 84, label %121
    i32 118, label %123
    i32 120, label %125
    i32 108, label %125
    i32 105, label %125
    i32 115, label %125
    i32 119, label %125
    i32 98, label %128
    i32 99, label %131
    i32 114, label %134
    i32 100, label %134
    i32 102, label %134
  ]

112:                                              ; preds = %108, %108, %108
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* @TRUE, align 8
  store i64 %114, i64* %17, align 8
  br label %140

115:                                              ; preds = %108, %108, %108, %108, %108, %108, %108
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %11, align 8
  br label %140

118:                                              ; preds = %108
  %119 = load i64, i64* @TRUE, align 8
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %17, align 8
  br label %140

121:                                              ; preds = %108
  %122 = call i32 (...) @abort() #3
  unreachable

123:                                              ; preds = %108
  %124 = call i32 (...) @abort() #3
  unreachable

125:                                              ; preds = %108, %108, %108, %108, %108
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %14, align 8
  %127 = load i64, i64* @TRUE, align 8
  store i64 %127, i64* %17, align 8
  br label %140

128:                                              ; preds = %108
  %129 = load i64, i64* @TRUE, align 8
  store i64 %129, i64* %16, align 8
  %130 = load i64, i64* @TRUE, align 8
  store i64 %130, i64* %17, align 8
  br label %140

131:                                              ; preds = %108
  %132 = load i64, i64* @TRUE, align 8
  store i64 %132, i64* %15, align 8
  %133 = load i64, i64* @TRUE, align 8
  store i64 %133, i64* %17, align 8
  br label %140

134:                                              ; preds = %108, %108, %108
  %135 = load i64, i64* @TRUE, align 8
  store i64 %135, i64* %13, align 8
  %136 = load i64, i64* @TRUE, align 8
  store i64 %136, i64* %17, align 8
  br label %140

137:                                              ; preds = %108
  %138 = load i64, i64* @TRUE, align 8
  store i64 %138, i64* %14, align 8
  %139 = load i64, i64* @TRUE, align 8
  store i64 %139, i64* %17, align 8
  br label %140

140:                                              ; preds = %137, %134, %131, %128, %125, %118, %115, %112
  br label %97

141:                                              ; preds = %106
  %142 = load i64, i64* %14, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %141
  %145 = load i8**, i8*** %6, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 109
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i8**, i8*** %6, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %151, align 8
  br label %154

154:                                              ; preds = %150, %144
  br label %155

155:                                              ; preds = %161, %154
  %156 = load i8**, i8*** %6, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load i8, i8* %157, align 1
  %159 = call i64 @ISDIGIT(i8 signext %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i8**, i8*** %6, align 8
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %162, align 8
  br label %155

165:                                              ; preds = %155
  br label %294

166:                                              ; preds = %141
  %167 = load i64, i64* %15, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %166
  %170 = load i8**, i8*** %6, align 8
  %171 = load i8*, i8** %170, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 109
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load i8**, i8*** %6, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %176, align 8
  br label %179

179:                                              ; preds = %175, %169
  %180 = load i8**, i8*** %6, align 8
  %181 = call i32 @stab_demangle_count(i8** %180)
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load i8*, i8** %8, align 8
  %186 = call i32 @stab_bad_demangle(i8* %185)
  %187 = load i64, i64* @FALSE, align 8
  store i64 %187, i64* %4, align 8
  br label %392

188:                                              ; preds = %179
  br label %293

189:                                              ; preds = %166
  %190 = load i64, i64* %16, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %189
  %193 = load i8**, i8*** %6, align 8
  %194 = call i32 @stab_demangle_count(i8** %193)
  store i32 %194, i32* %19, align 4
  %195 = load i32, i32* %19, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load i32, i32* %19, align 4
  %199 = icmp ne i32 %198, 1
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i8*, i8** %8, align 8
  %202 = call i32 @stab_bad_demangle(i8* %201)
  %203 = load i64, i64* @FALSE, align 8
  store i64 %203, i64* %4, align 8
  br label %392

204:                                              ; preds = %197, %192
  br label %292

205:                                              ; preds = %189
  %206 = load i64, i64* %13, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %272

208:                                              ; preds = %205
  %209 = load i8**, i8*** %6, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 109
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i8**, i8*** %6, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %215, align 8
  br label %218

218:                                              ; preds = %214, %208
  br label %219

219:                                              ; preds = %225, %218
  %220 = load i8**, i8*** %6, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = load i8, i8* %221, align 1
  %223 = call i64 @ISDIGIT(i8 signext %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = load i8**, i8*** %6, align 8
  %227 = load i8*, i8** %226, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %226, align 8
  br label %219

229:                                              ; preds = %219
  %230 = load i8**, i8*** %6, align 8
  %231 = load i8*, i8** %230, align 8
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 46
  br i1 %234, label %235, label %250

235:                                              ; preds = %229
  %236 = load i8**, i8*** %6, align 8
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %236, align 8
  br label %239

239:                                              ; preds = %245, %235
  %240 = load i8**, i8*** %6, align 8
  %241 = load i8*, i8** %240, align 8
  %242 = load i8, i8* %241, align 1
  %243 = call i64 @ISDIGIT(i8 signext %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load i8**, i8*** %6, align 8
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %246, align 8
  br label %239

249:                                              ; preds = %239
  br label %250

250:                                              ; preds = %249, %229
  %251 = load i8**, i8*** %6, align 8
  %252 = load i8*, i8** %251, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 101
  br i1 %255, label %256, label %271

256:                                              ; preds = %250
  %257 = load i8**, i8*** %6, align 8
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %257, align 8
  br label %260

260:                                              ; preds = %266, %256
  %261 = load i8**, i8*** %6, align 8
  %262 = load i8*, i8** %261, align 8
  %263 = load i8, i8* %262, align 1
  %264 = call i64 @ISDIGIT(i8 signext %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load i8**, i8*** %6, align 8
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %267, align 8
  br label %260

270:                                              ; preds = %260
  br label %271

271:                                              ; preds = %270, %250
  br label %291

272:                                              ; preds = %205
  %273 = load i64, i64* %12, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %272
  %276 = load i8**, i8*** %6, align 8
  %277 = call i32 @stab_demangle_count(i8** %276)
  store i32 %277, i32* %20, align 4
  %278 = load i32, i32* %20, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = load i8*, i8** %8, align 8
  %282 = call i32 @stab_bad_demangle(i8* %281)
  %283 = load i64, i64* @FALSE, align 8
  store i64 %283, i64* %4, align 8
  br label %392

284:                                              ; preds = %275
  %285 = load i32, i32* %20, align 4
  %286 = load i8**, i8*** %6, align 8
  %287 = load i8*, i8** %286, align 8
  %288 = zext i32 %285 to i64
  %289 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8* %289, i8** %286, align 8
  br label %290

290:                                              ; preds = %284, %272
  br label %291

291:                                              ; preds = %290, %271
  br label %292

292:                                              ; preds = %291, %204
  br label %293

293:                                              ; preds = %292, %188
  br label %294

294:                                              ; preds = %293, %165
  br label %295

295:                                              ; preds = %294, %80
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %10, align 4
  %298 = add i32 %297, 1
  store i32 %298, i32* %10, align 4
  br label %60

299:                                              ; preds = %60
  %300 = load i8**, i8*** %7, align 8
  %301 = icmp ne i8** %300, null
  br i1 %301, label %302, label %390

302:                                              ; preds = %299
  store i8* null, i8** %24, align 8
  %303 = load i8*, i8** %8, align 8
  %304 = load i8**, i8*** %6, align 8
  %305 = load i8*, i8** %304, align 8
  %306 = load i8*, i8** %8, align 8
  %307 = ptrtoint i8* %305 to i64
  %308 = ptrtoint i8* %306 to i64
  %309 = sub i64 %307, %308
  %310 = trunc i64 %309 to i32
  %311 = call i8* @savestring(i8* %303, i32 %310)
  store i8* %311, i8** %21, align 8
  %312 = load i8*, i8** %21, align 8
  %313 = call i8* @concat(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %312, i8* null)
  store i8* %313, i8** %22, align 8
  %314 = load i8*, i8** %21, align 8
  %315 = call i32 @free(i8* %314)
  %316 = load i8*, i8** %22, align 8
  %317 = load i32, i32* @DMGL_ANSI, align 4
  %318 = call i8* @cplus_demangle(i8* %316, i32 %317)
  store i8* %318, i8** %23, align 8
  %319 = load i8*, i8** %22, align 8
  %320 = call i32 @free(i8* %319)
  %321 = load i8*, i8** %23, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %302
  %324 = load i8*, i8** %23, align 8
  %325 = call i8* @strstr(i8* %324, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %325, i8** %24, align 8
  br label %326

326:                                              ; preds = %323, %302
  %327 = load i8*, i8** %23, align 8
  %328 = icmp eq i8* %327, null
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load i8*, i8** %24, align 8
  %331 = icmp eq i8* %330, null
  br i1 %331, label %332, label %342

332:                                              ; preds = %329, %326
  %333 = load i8*, i8** %8, align 8
  %334 = call i32 @stab_bad_demangle(i8* %333)
  %335 = load i8*, i8** %23, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %332
  %338 = load i8*, i8** %23, align 8
  %339 = call i32 @free(i8* %338)
  br label %340

340:                                              ; preds = %337, %332
  %341 = load i64, i64* @FALSE, align 8
  store i64 %341, i64* %4, align 8
  br label %392

342:                                              ; preds = %329
  %343 = load i8*, i8** %23, align 8
  store i8* %343, i8** %26, align 8
  store i8* %343, i8** %25, align 8
  br label %344

344:                                              ; preds = %375, %342
  %345 = load i8*, i8** %25, align 8
  %346 = load i8*, i8** %24, align 8
  %347 = icmp ne i8* %345, %346
  br i1 %347, label %348, label %378

348:                                              ; preds = %344
  %349 = load i8*, i8** %25, align 8
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = icmp ne i32 %351, 32
  br i1 %352, label %369, label %353

353:                                              ; preds = %348
  %354 = load i8*, i8** %25, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 1
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 62
  br i1 %358, label %359, label %374

359:                                              ; preds = %353
  %360 = load i8*, i8** %25, align 8
  %361 = load i8*, i8** %23, align 8
  %362 = icmp ugt i8* %360, %361
  br i1 %362, label %363, label %374

363:                                              ; preds = %359
  %364 = load i8*, i8** %25, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 -1
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp eq i32 %367, 62
  br i1 %368, label %369, label %374

369:                                              ; preds = %363, %348
  %370 = load i8*, i8** %25, align 8
  %371 = load i8, i8* %370, align 1
  %372 = load i8*, i8** %26, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %373, i8** %26, align 8
  store i8 %371, i8* %372, align 1
  br label %374

374:                                              ; preds = %369, %363, %359, %353
  br label %375

375:                                              ; preds = %374
  %376 = load i8*, i8** %25, align 8
  %377 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %377, i8** %25, align 8
  br label %344

378:                                              ; preds = %344
  %379 = load i8*, i8** %23, align 8
  %380 = load i8*, i8** %26, align 8
  %381 = load i8*, i8** %23, align 8
  %382 = ptrtoint i8* %380 to i64
  %383 = ptrtoint i8* %381 to i64
  %384 = sub i64 %382, %383
  %385 = trunc i64 %384 to i32
  %386 = call i8* @savestring(i8* %379, i32 %385)
  %387 = load i8**, i8*** %7, align 8
  store i8* %386, i8** %387, align 8
  %388 = load i8*, i8** %23, align 8
  %389 = call i32 @free(i8* %388)
  br label %390

390:                                              ; preds = %378, %299
  %391 = load i64, i64* @TRUE, align 8
  store i64 %391, i64* %4, align 8
  br label %392

392:                                              ; preds = %390, %340, %280, %200, %184, %94, %78, %55, %42
  %393 = load i64, i64* %4, align 8
  ret i64 %393
}

declare dso_local i32 @stab_demangle_count(i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @stab_bad_demangle(i8*) #1

declare dso_local i64 @stab_demangle_get_count(i8**, i32*) #1

declare dso_local i32 @stab_demangle_type(%struct.stab_demangle_info*, i8**, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i8* @concat(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @cplus_demangle(i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
