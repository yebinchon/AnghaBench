; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_translate_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_translate_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }

@option_map = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ambiguous abbreviation %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"incomplete '%s' option\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"missing argument to '%s' option\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"extraneous argument to '%s' option\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Xlinker\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Xpreprocessor\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Xassembler\00", align 1
@target_option_translations = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8***)* @translate_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translate_options(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i8***, i8**** %4, align 8
  %24 = load i8**, i8*** %23, align 8
  store i8** %24, i8*** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 2
  %27 = mul nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i8** @xmalloc(i32 %31)
  store i8** %32, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  %33 = load i8**, i8*** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  store i8* %38, i8** %43, align 8
  br label %44

44:                                               ; preds = %469, %2
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %470

48:                                               ; preds = %44
  %49 = load i8**, i8*** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 45
  br i1 %57, label %58, label %331

58:                                               ; preds = %48
  %59 = load i8**, i8*** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 45
  br i1 %67, label %68, label %331

68:                                               ; preds = %58
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %325, %68
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %72 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %71)
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %328

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strlen(i8* %79)
  store i64 %80, i64* %12, align 8
  %81 = load i8**, i8*** %7, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strlen(i8* %85)
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %74
  %91 = load i64, i64* %12, align 8
  br label %94

92:                                               ; preds = %74
  %93 = load i64, i64* %13, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  store i64 %95, i64* %14, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %15, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %104

104:                                              ; preds = %103, %94
  %105 = load i8**, i8*** %7, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @strncmp(i8* %109, i8* %114, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %324, label %118

118:                                              ; preds = %104
  store i8* null, i8** %16, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %12, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %171

122:                                              ; preds = %118
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %17, align 8
  br label %125

125:                                              ; preds = %161, %122
  %126 = load i64, i64* %17, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %128 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %127)
  %129 = icmp ult i64 %126, %128
  br i1 %129, label %130, label %164

130:                                              ; preds = %125
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %132 = load i64, i64* %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @strlen(i8* %135)
  %137 = load i64, i64* %13, align 8
  %138 = icmp uge i64 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %130
  %140 = load i8**, i8*** %7, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %146 = load i64, i64* %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i64, i64* %13, align 8
  %151 = call i32 @strncmp(i8* %144, i8* %149, i64 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %139
  %154 = load i8**, i8*** %7, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %158)
  br label %164

160:                                              ; preds = %139, %130
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %17, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %17, align 8
  br label %125

164:                                              ; preds = %153, %125
  %165 = load i64, i64* %17, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %167 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %166)
  %168 = icmp ne i64 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %328

170:                                              ; preds = %164
  br label %171

171:                                              ; preds = %170, %118
  %172 = load i64, i64* %13, align 8
  %173 = load i64, i64* %12, align 8
  %174 = icmp ugt i64 %172, %173
  br i1 %174, label %175, label %210

175:                                              ; preds = %171
  %176 = load i8**, i8*** %7, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = load i64, i64* %12, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 61
  br i1 %185, label %186, label %195

186:                                              ; preds = %175
  %187 = load i8**, i8*** %7, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = load i64, i64* %12, align 8
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  store i8* %194, i8** %16, align 8
  br label %209

195:                                              ; preds = %175
  %196 = load i8*, i8** %15, align 8
  %197 = call i64 @strchr(i8* %196, i8 signext 42)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load i8**, i8*** %7, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = load i64, i64* %12, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %16, align 8
  br label %208

207:                                              ; preds = %195
  br label %325

208:                                              ; preds = %199
  br label %209

209:                                              ; preds = %208, %186
  br label %222

210:                                              ; preds = %171
  %211 = load i8*, i8** %15, align 8
  %212 = call i64 @strchr(i8* %211, i8 signext 42)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %210
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %216 = load i64, i64* %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %219)
  br label %328

221:                                              ; preds = %210
  br label %222

222:                                              ; preds = %221, %209
  %223 = load i8*, i8** %15, align 8
  %224 = call i64 @strchr(i8* %223, i8 signext 97)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %249

226:                                              ; preds = %222
  %227 = load i8*, i8** %16, align 8
  %228 = icmp eq i8* %227, null
  br i1 %228, label %229, label %248

229:                                              ; preds = %226
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 1
  %232 = load i32, i32* %6, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %229
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %236 = load i64, i64* %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %239)
  br label %328

241:                                              ; preds = %229
  %242 = load i8**, i8*** %7, align 8
  %243 = load i32, i32* %5, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %242, i64 %245
  %247 = load i8*, i8** %246, align 8
  store i8* %247, i8** %16, align 8
  br label %248

248:                                              ; preds = %241, %226
  br label %271

249:                                              ; preds = %222
  %250 = load i8*, i8** %15, align 8
  %251 = call i64 @strchr(i8* %250, i8 signext 42)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  br label %270

254:                                              ; preds = %249
  %255 = load i8*, i8** %15, align 8
  %256 = call i64 @strchr(i8* %255, i8 signext 111)
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %254
  %259 = load i8*, i8** %16, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %263 = load i64, i64* %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %261, %258
  store i8* null, i8** %16, align 8
  br label %269

269:                                              ; preds = %268, %254
  br label %270

270:                                              ; preds = %269, %253
  br label %271

271:                                              ; preds = %270, %248
  %272 = load i8*, i8** %16, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %291

274:                                              ; preds = %271
  %275 = load i8*, i8** %15, align 8
  %276 = call i64 @strchr(i8* %275, i8 signext 106)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %274
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %280 = load i64, i64* %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = load i8*, i8** %16, align 8
  %285 = call i8* @concat(i8* %283, i8* %284, i32* null)
  %286 = load i8**, i8*** %9, align 8
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %10, align 4
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i8*, i8** %286, i64 %289
  store i8* %285, i8** %290, align 8
  br label %323

291:                                              ; preds = %274, %271
  %292 = load i8*, i8** %16, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %311

294:                                              ; preds = %291
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %296 = load i64, i64* %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 2
  %299 = load i8*, i8** %298, align 8
  %300 = load i8**, i8*** %9, align 8
  %301 = load i32, i32* %10, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %10, align 4
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i8*, i8** %300, i64 %303
  store i8* %299, i8** %304, align 8
  %305 = load i8*, i8** %16, align 8
  %306 = load i8**, i8*** %9, align 8
  %307 = load i32, i32* %10, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %10, align 4
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i8*, i8** %306, i64 %309
  store i8* %305, i8** %310, align 8
  br label %322

311:                                              ; preds = %291
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** @option_map, align 8
  %313 = load i64, i64* %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 2
  %316 = load i8*, i8** %315, align 8
  %317 = load i8**, i8*** %9, align 8
  %318 = load i32, i32* %10, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %10, align 4
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i8*, i8** %317, i64 %320
  store i8* %316, i8** %321, align 8
  br label %322

322:                                              ; preds = %311, %294
  br label %323

323:                                              ; preds = %322, %278
  br label %328

324:                                              ; preds = %104
  br label %325

325:                                              ; preds = %324, %207
  %326 = load i64, i64* %11, align 8
  %327 = add i64 %326, 1
  store i64 %327, i64* %11, align 8
  br label %69

328:                                              ; preds = %323, %234, %214, %169, %69
  %329 = load i32, i32* %5, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %5, align 4
  br label %469

331:                                              ; preds = %58, %48
  %332 = load i8**, i8*** %7, align 8
  %333 = load i32, i32* %5, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8*, i8** %332, i64 %334
  %336 = load i8*, i8** %335, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 0
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp eq i32 %339, 45
  br i1 %340, label %341, label %456

341:                                              ; preds = %331
  %342 = load i8**, i8*** %7, align 8
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %342, i64 %344
  %346 = load i8*, i8** %345, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 1
  store i8* %347, i8** %18, align 8
  %348 = load i8*, i8** %18, align 8
  %349 = load i8, i8* %348, align 1
  %350 = sext i8 %349 to i32
  store i32 %350, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %351 = load i32, i32* %19, align 4
  %352 = call i32 @SWITCH_TAKES_ARG(i32 %351)
  %353 = load i8*, i8** %18, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 1
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp ne i32 %356, 0
  %358 = zext i1 %357 to i32
  %359 = icmp sgt i32 %352, %358
  br i1 %359, label %360, label %372

360:                                              ; preds = %341
  %361 = load i32, i32* %19, align 4
  %362 = call i32 @SWITCH_TAKES_ARG(i32 %361)
  %363 = load i8*, i8** %18, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 1
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  %367 = icmp ne i32 %366, 0
  %368 = zext i1 %367 to i32
  %369 = sub nsw i32 %362, %368
  %370 = load i32, i32* %20, align 4
  %371 = add nsw i32 %370, %369
  store i32 %371, i32* %20, align 4
  br label %427

372:                                              ; preds = %341
  %373 = load i8*, i8** %18, align 8
  %374 = call i64 @WORD_SWITCH_TAKES_ARG(i8* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %372
  %377 = load i8*, i8** %18, align 8
  %378 = call i64 @WORD_SWITCH_TAKES_ARG(i8* %377)
  %379 = load i32, i32* %20, align 4
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %380, %378
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* %20, align 4
  br label %426

383:                                              ; preds = %372
  %384 = load i32, i32* %19, align 4
  %385 = icmp eq i32 %384, 66
  br i1 %385, label %392, label %386

386:                                              ; preds = %383
  %387 = load i32, i32* %19, align 4
  %388 = icmp eq i32 %387, 98
  br i1 %388, label %392, label %389

389:                                              ; preds = %386
  %390 = load i32, i32* %19, align 4
  %391 = icmp eq i32 %390, 120
  br i1 %391, label %392, label %401

392:                                              ; preds = %389, %386, %383
  %393 = load i8*, i8** %18, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 1
  %395 = load i8, i8* %394, align 1
  %396 = sext i8 %395 to i32
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %392
  %399 = load i32, i32* %20, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %20, align 4
  br label %425

401:                                              ; preds = %392, %389
  %402 = load i8*, i8** %18, align 8
  %403 = call i64 @strcmp(i8* %402, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %401
  %406 = load i32, i32* %20, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %20, align 4
  br label %424

408:                                              ; preds = %401
  %409 = load i8*, i8** %18, align 8
  %410 = call i64 @strcmp(i8* %409, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %415, label %412

412:                                              ; preds = %408
  %413 = load i32, i32* %20, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %20, align 4
  br label %423

415:                                              ; preds = %408
  %416 = load i8*, i8** %18, align 8
  %417 = call i64 @strcmp(i8* %416, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %422, label %419

419:                                              ; preds = %415
  %420 = load i32, i32* %20, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %20, align 4
  br label %422

422:                                              ; preds = %419, %415
  br label %423

423:                                              ; preds = %422, %412
  br label %424

424:                                              ; preds = %423, %405
  br label %425

425:                                              ; preds = %424, %398
  br label %426

426:                                              ; preds = %425, %376
  br label %427

427:                                              ; preds = %426, %360
  %428 = load i32, i32* %20, align 4
  %429 = load i32, i32* %5, align 4
  %430 = add nsw i32 %428, %429
  %431 = load i32, i32* %6, align 4
  %432 = icmp sgt i32 %430, %431
  br i1 %432, label %433, label %437

433:                                              ; preds = %427
  %434 = load i32, i32* %6, align 4
  %435 = load i32, i32* %5, align 4
  %436 = sub nsw i32 %434, %435
  store i32 %436, i32* %20, align 4
  br label %437

437:                                              ; preds = %433, %427
  br label %438

438:                                              ; preds = %441, %437
  %439 = load i32, i32* %20, align 4
  %440 = icmp sgt i32 %439, 0
  br i1 %440, label %441, label %455

441:                                              ; preds = %438
  %442 = load i8**, i8*** %7, align 8
  %443 = load i32, i32* %5, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %5, align 4
  %445 = sext i32 %443 to i64
  %446 = getelementptr inbounds i8*, i8** %442, i64 %445
  %447 = load i8*, i8** %446, align 8
  %448 = load i8**, i8*** %9, align 8
  %449 = load i32, i32* %10, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %10, align 4
  %451 = sext i32 %449 to i64
  %452 = getelementptr inbounds i8*, i8** %448, i64 %451
  store i8* %447, i8** %452, align 8
  %453 = load i32, i32* %20, align 4
  %454 = add nsw i32 %453, -1
  store i32 %454, i32* %20, align 4
  br label %438

455:                                              ; preds = %438
  br label %468

456:                                              ; preds = %331
  %457 = load i8**, i8*** %7, align 8
  %458 = load i32, i32* %5, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %5, align 4
  %460 = sext i32 %458 to i64
  %461 = getelementptr inbounds i8*, i8** %457, i64 %460
  %462 = load i8*, i8** %461, align 8
  %463 = load i8**, i8*** %9, align 8
  %464 = load i32, i32* %10, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %10, align 4
  %466 = sext i32 %464 to i64
  %467 = getelementptr inbounds i8*, i8** %463, i64 %466
  store i8* %462, i8** %467, align 8
  br label %468

468:                                              ; preds = %456, %455
  br label %469

469:                                              ; preds = %468, %328
  br label %44

470:                                              ; preds = %44
  %471 = load i8**, i8*** %9, align 8
  %472 = load i32, i32* %10, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i8*, i8** %471, i64 %473
  store i8* null, i8** %474, align 8
  %475 = load i8**, i8*** %9, align 8
  %476 = load i8***, i8**** %4, align 8
  store i8** %475, i8*** %476, align 8
  %477 = load i32, i32* %10, align 4
  %478 = load i32*, i32** %3, align 8
  store i32 %477, i32* %478, align 4
  ret void
}

declare dso_local i8** @xmalloc(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @concat(i8*, i8*, i32*) #1

declare dso_local i32 @SWITCH_TAKES_ARG(i32) #1

declare dso_local i64 @WORD_SWITCH_TAKES_ARG(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
