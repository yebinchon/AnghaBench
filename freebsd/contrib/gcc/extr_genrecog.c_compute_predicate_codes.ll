; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_compute_predicate_codes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_compute_predicate_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pred_data = type { i32* }

@NUM_RTX_CODE = common dso_local global i32 0, align 4
@Y = common dso_local global i8 0, align 1
@N = common dso_local global i8 0, align 1
@pattern_lineno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"empty match_code expression\00", align 1
@error_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"match_code \22%.*s\22 matches nothing\00", align 1
@did_you_mean_codes = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"(did you mean \22%s\22?)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"reference to unknown predicate '%s'\00", align 1
@I = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"'%s' cannot be used in a define_predicate expression\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @compute_predicate_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_predicate_codes(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pred_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i32, i32* @NUM_RTX_CODE, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* @NUM_RTX_CODE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = load i32, i32* @NUM_RTX_CODE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %24 = load i32, i32* @NUM_RTX_CODE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @GET_CODE(i32 %27)
  switch i32 %28, label %313 [
    i32 134, label %29
    i32 132, label %56
    i32 128, label %83
    i32 133, label %104
    i32 131, label %144
    i32 130, label %264
    i32 129, label %308
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @XEXP(i32 %30, i32 0)
  call void @compute_predicate_codes(i32 %31, i8* %20)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @XEXP(i32 %32, i32 1)
  call void @compute_predicate_codes(i32 %33, i8* %23)
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %52, %29
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @NUM_RTX_CODE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %20, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %23, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = call signext i8 @TRISTATE_AND(i8 signext %42, i8 signext %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %47, i8* %51, align 1
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %34

55:                                               ; preds = %34
  br label %325

56:                                               ; preds = %2
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @XEXP(i32 %57, i32 0)
  call void @compute_predicate_codes(i32 %58, i8* %20)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @XEXP(i32 %59, i32 1)
  call void @compute_predicate_codes(i32 %60, i8* %23)
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %79, %56
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @NUM_RTX_CODE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %20, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %23, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = call signext i8 @TRISTATE_OR(i8 signext %69, i8 signext %73)
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 %74, i8* %78, align 1
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %61

82:                                               ; preds = %61
  br label %325

83:                                               ; preds = %2
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @XEXP(i32 %84, i32 0)
  call void @compute_predicate_codes(i32 %85, i8* %20)
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %100, %83
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @NUM_RTX_CODE, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %20, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = call signext i8 @TRISTATE_NOT(i8 signext %94)
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8 %95, i8* %99, align 1
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %86

103:                                              ; preds = %86
  br label %325

104:                                              ; preds = %2
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @XEXP(i32 %105, i32 0)
  call void @compute_predicate_codes(i32 %106, i8* %20)
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @XEXP(i32 %107, i32 1)
  call void @compute_predicate_codes(i32 %108, i8* %23)
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @XEXP(i32 %109, i32 2)
  call void @compute_predicate_codes(i32 %110, i8* %26)
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %140, %104
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @NUM_RTX_CODE, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %20, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %23, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call signext i8 @TRISTATE_AND(i8 signext %119, i8 signext %123)
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %20, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = call signext i8 @TRISTATE_NOT(i8 signext %128)
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %26, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = call signext i8 @TRISTATE_AND(i8 signext %129, i8 signext %133)
  %135 = call signext i8 @TRISTATE_OR(i8 signext %124, i8 signext %134)
  %136 = load i8*, i8** %4, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 %135, i8* %139, align 1
  br label %140

140:                                              ; preds = %115
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %111

143:                                              ; preds = %111
  br label %325

144:                                              ; preds = %2
  %145 = load i32, i32* %3, align 4
  %146 = call i8* @XSTR(i32 %145, i32 1)
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load i8*, i8** %4, align 8
  %153 = load i8, i8* @Y, align 1
  %154 = load i32, i32* @NUM_RTX_CODE, align 4
  %155 = call i32 @memset(i8* %152, i8 signext %153, i32 %154)
  br label %325

156:                                              ; preds = %144
  %157 = load i8*, i8** %4, align 8
  %158 = load i8, i8* @N, align 1
  %159 = load i32, i32* @NUM_RTX_CODE, align 4
  %160 = call i32 @memset(i8* %157, i8 signext %158, i32 %159)
  %161 = load i32, i32* %3, align 4
  %162 = call i8* @XSTR(i32 %161, i32 0)
  store i8* %162, i8** %10, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %156
  %168 = load i32, i32* @pattern_lineno, align 4
  %169 = call i32 (i32, i8*, ...) @message_with_line(i32 %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %170 = load i32, i32* @error_count, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @error_count, align 4
  br label %325

172:                                              ; preds = %156
  br label %173

173:                                              ; preds = %262, %172
  %174 = call i8* @scan_comma_elt(i8** %10)
  store i8* %174, i8** %11, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %263

176:                                              ; preds = %173
  %177 = load i8*, i8** %10, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  store i64 %181, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %182

182:                                              ; preds = %208, %176
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @NUM_RTX_CODE, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %211

186:                                              ; preds = %182
  %187 = load i8*, i8** %11, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i8* @GET_RTX_NAME(i32 %188)
  %190 = load i64, i64* %12, align 8
  %191 = call i32 @strncmp(i8* %187, i8* %189, i64 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %207, label %193

193:                                              ; preds = %186
  %194 = load i32, i32* %9, align 4
  %195 = call i8* @GET_RTX_NAME(i32 %194)
  %196 = load i64, i64* %12, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = load i8, i8* @Y, align 1
  %203 = load i8*, i8** %4, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  store i8 %202, i8* %206, align 1
  store i32 1, i32* %13, align 4
  br label %211

207:                                              ; preds = %193, %186
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %182

211:                                              ; preds = %201, %182
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %262, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* @pattern_lineno, align 4
  %216 = load i64, i64* %12, align 8
  %217 = trunc i64 %216 to i32
  %218 = load i8*, i8** %11, align 8
  %219 = call i32 (i32, i8*, ...) @message_with_line(i32 %215, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %217, i8* %218)
  %220 = load i32, i32* @error_count, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* @error_count, align 4
  store i32 0, i32* %9, align 4
  br label %222

222:                                              ; preds = %258, %214
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* @NUM_RTX_CODE, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %261

226:                                              ; preds = %222
  %227 = load i8*, i8** %11, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i8* @GET_RTX_NAME(i32 %228)
  %230 = load i64, i64* %12, align 8
  %231 = call i32 @strncasecmp(i8* %227, i8* %229, i64 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %257, label %233

233:                                              ; preds = %226
  %234 = load i32, i32* %9, align 4
  %235 = call i8* @GET_RTX_NAME(i32 %234)
  %236 = load i64, i64* %12, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %233
  %242 = load i32*, i32** @did_you_mean_codes, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %257, label %248

248:                                              ; preds = %241
  %249 = load i32*, i32** @did_you_mean_codes, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 1, i32* %252, align 4
  %253 = load i32, i32* @pattern_lineno, align 4
  %254 = load i32, i32* %9, align 4
  %255 = call i8* @GET_RTX_NAME(i32 %254)
  %256 = call i32 (i32, i8*, ...) @message_with_line(i32 %253, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %255)
  br label %257

257:                                              ; preds = %248, %241, %233, %226
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %9, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %9, align 4
  br label %222

261:                                              ; preds = %222
  br label %262

262:                                              ; preds = %261, %211
  br label %173

263:                                              ; preds = %173
  br label %325

264:                                              ; preds = %2
  %265 = load i32, i32* %3, align 4
  %266 = call i8* @XSTR(i32 %265, i32 1)
  %267 = call %struct.pred_data* @lookup_predicate(i8* %266)
  store %struct.pred_data* %267, %struct.pred_data** %14, align 8
  %268 = load %struct.pred_data*, %struct.pred_data** %14, align 8
  %269 = icmp ne %struct.pred_data* %268, null
  br i1 %269, label %277, label %270

270:                                              ; preds = %264
  %271 = load i32, i32* @pattern_lineno, align 4
  %272 = load i32, i32* %3, align 4
  %273 = call i8* @XSTR(i32 %272, i32 1)
  %274 = call i32 (i32, i8*, ...) @message_with_line(i32 %271, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %273)
  %275 = load i32, i32* @error_count, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* @error_count, align 4
  br label %325

277:                                              ; preds = %264
  store i32 0, i32* %9, align 4
  br label %278

278:                                              ; preds = %304, %277
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @NUM_RTX_CODE, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %307

282:                                              ; preds = %278
  %283 = load %struct.pred_data*, %struct.pred_data** %14, align 8
  %284 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %9, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %282
  %292 = load i8, i8* @I, align 1
  %293 = sext i8 %292 to i32
  br label %297

294:                                              ; preds = %282
  %295 = load i8, i8* @N, align 1
  %296 = sext i8 %295 to i32
  br label %297

297:                                              ; preds = %294, %291
  %298 = phi i32 [ %293, %291 ], [ %296, %294 ]
  %299 = trunc i32 %298 to i8
  %300 = load i8*, i8** %4, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, i8* %300, i64 %302
  store i8 %299, i8* %303, align 1
  br label %304

304:                                              ; preds = %297
  %305 = load i32, i32* %9, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %9, align 4
  br label %278

307:                                              ; preds = %278
  br label %325

308:                                              ; preds = %2
  %309 = load i8*, i8** %4, align 8
  %310 = load i8, i8* @I, align 1
  %311 = load i32, i32* @NUM_RTX_CODE, align 4
  %312 = call i32 @memset(i8* %309, i8 signext %310, i32 %311)
  br label %325

313:                                              ; preds = %2
  %314 = load i32, i32* @pattern_lineno, align 4
  %315 = load i32, i32* %3, align 4
  %316 = call i32 @GET_CODE(i32 %315)
  %317 = call i8* @GET_RTX_NAME(i32 %316)
  %318 = call i32 (i32, i8*, ...) @message_with_line(i32 %314, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %317)
  %319 = load i32, i32* @error_count, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* @error_count, align 4
  %321 = load i8*, i8** %4, align 8
  %322 = load i8, i8* @I, align 1
  %323 = load i32, i32* @NUM_RTX_CODE, align 4
  %324 = call i32 @memset(i8* %321, i8 signext %322, i32 %323)
  br label %325

325:                                              ; preds = %313, %308, %307, %270, %263, %167, %151, %143, %103, %82, %55
  %326 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %326)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GET_CODE(i32) #2

declare dso_local i32 @XEXP(i32, i32) #2

declare dso_local signext i8 @TRISTATE_AND(i8 signext, i8 signext) #2

declare dso_local signext i8 @TRISTATE_OR(i8 signext, i8 signext) #2

declare dso_local signext i8 @TRISTATE_NOT(i8 signext) #2

declare dso_local i8* @XSTR(i32, i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @message_with_line(i32, i8*, ...) #2

declare dso_local i8* @scan_comma_elt(i8**) #2

declare dso_local i32 @strncmp(i8*, i8*, i64) #2

declare dso_local i8* @GET_RTX_NAME(i32) #2

declare dso_local i32 @strncasecmp(i8*, i8*, i64) #2

declare dso_local %struct.pred_data* @lookup_predicate(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
