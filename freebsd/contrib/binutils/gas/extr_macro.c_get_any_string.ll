; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_get_any_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_get_any_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8* }

@macro_alternate = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"% operator needs absolute expression\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@macro_mri = common dso_local global i64 0, align 8
@macro_strip_at = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_12__*, %struct.TYPE_12__*)* @get_any_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_any_string(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = call i32 @sb_reset(%struct.TYPE_12__* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = call i32 @sb_skip_white(i32 %15, %struct.TYPE_12__* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %351

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 2
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %23
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 39
  br i1 %40, label %41, label %75

41:                                               ; preds = %30
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @ISBASE(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %63, %51
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @ISSEP(i8 signext %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %63, label %74

63:                                               ; preds = %52
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @sb_add_char(%struct.TYPE_12__* %64, i8 signext %72)
  br label %52

74:                                               ; preds = %52
  br label %350

75:                                               ; preds = %41, %30, %23
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 37
  br i1 %84, label %85, label %100

85:                                               ; preds = %75
  %86 = load i64, i64* @macro_alternate, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = call i32 @macro_expr(i32 %89, i32 %91, %struct.TYPE_12__* %92, i32* %8)
  store i32 %93, i32* %5, align 4
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @sprintf(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %99 = call i32 @sb_add_string(%struct.TYPE_12__* %97, i8* %98)
  br label %349

100:                                              ; preds = %85, %75
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 34
  br i1 %109, label %139, label %110

110:                                              ; preds = %100
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 60
  br i1 %119, label %120, label %126

120:                                              ; preds = %110
  %121 = load i64, i64* @macro_alternate, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %120
  %124 = load i64, i64* @macro_mri, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %123, %110
  %127 = load i64, i64* @macro_alternate, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %170

129:                                              ; preds = %126
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 39
  br i1 %138, label %139, label %170

139:                                              ; preds = %129, %123, %120, %100
  %140 = load i64, i64* @macro_alternate, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %139
  %143 = load i32, i32* @macro_strip_at, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %164, label %145

145:                                              ; preds = %142
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 60
  br i1 %154, label %155, label %164

155:                                              ; preds = %145
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = call i32 @sb_add_char(%struct.TYPE_12__* %156, i8 signext 34)
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %161 = call i32 @getstring(i32 %158, %struct.TYPE_12__* %159, %struct.TYPE_12__* %160)
  store i32 %161, i32* %5, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %163 = call i32 @sb_add_char(%struct.TYPE_12__* %162, i8 signext 34)
  br label %169

164:                                              ; preds = %145, %142, %139
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %168 = call i32 @getstring(i32 %165, %struct.TYPE_12__* %166, %struct.TYPE_12__* %167)
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %164, %155
  br label %348

170:                                              ; preds = %129, %126
  %171 = call i8* @xmalloc(i32 1)
  store i8* %171, i8** %10, align 8
  %172 = load i8*, i8** %10, align 8
  store i8* %172, i8** %11, align 8
  %173 = load i8*, i8** %11, align 8
  store i8 0, i8* %173, align 1
  br label %174

174:                                              ; preds = %339, %170
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %236

180:                                              ; preds = %174
  %181 = load i8*, i8** %11, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %205, label %185

185:                                              ; preds = %180
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 32
  br i1 %194, label %195, label %236

195:                                              ; preds = %185
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 9
  br i1 %204, label %205, label %236

205:                                              ; preds = %195, %180
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp ne i32 %213, 44
  br i1 %214, label %215, label %236

215:                                              ; preds = %205
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp ne i32 %223, 60
  br i1 %224, label %234, label %225

225:                                              ; preds = %215
  %226 = load i64, i64* @macro_alternate, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %225
  %229 = load i64, i64* @macro_mri, align 8
  %230 = icmp ne i64 %229, 0
  %231 = xor i1 %230, true
  br label %232

232:                                              ; preds = %228, %225
  %233 = phi i1 [ false, %225 ], [ %231, %228 ]
  br label %234

234:                                              ; preds = %232, %215
  %235 = phi i1 [ true, %215 ], [ %233, %232 ]
  br label %236

236:                                              ; preds = %234, %205, %195, %185, %174
  %237 = phi i1 [ false, %205 ], [ false, %195 ], [ false, %185 ], [ false, %174 ], [ %235, %234 ]
  br i1 %237, label %238, label %345

238:                                              ; preds = %236
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = load i8, i8* %244, align 1
  store i8 %245, i8* %12, align 1
  %246 = load i8, i8* %12, align 1
  %247 = sext i8 %246 to i32
  switch i32 %247, label %339 [
    i32 34, label %248
    i32 39, label %248
    i32 40, label %299
    i32 91, label %299
    i32 41, label %321
    i32 93, label %330
  ]

248:                                              ; preds = %238, %238
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %5, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %252, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = call i32 @sb_add_char(%struct.TYPE_12__* %249, i8 signext %257)
  br label %259

259:                                              ; preds = %279, %248
  %260 = load i32, i32* %5, align 4
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %259
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = load i32, i32* %5, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = load i8, i8* %12, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp ne i32 %273, %275
  br label %277

277:                                              ; preds = %265, %259
  %278 = phi i1 [ false, %259 ], [ %276, %265 ]
  br i1 %278, label %279, label %290

279:                                              ; preds = %277
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %5, align 4
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8, i8* %283, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = call i32 @sb_add_char(%struct.TYPE_12__* %280, i8 signext %288)
  br label %259

290:                                              ; preds = %277
  %291 = load i32, i32* %5, align 4
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp eq i32 %291, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %290
  %297 = load i32, i32* %5, align 4
  store i32 %297, i32* %4, align 4
  br label %353

298:                                              ; preds = %290
  br label %339

299:                                              ; preds = %238, %238
  %300 = load i8*, i8** %11, align 8
  %301 = load i8*, i8** %10, align 8
  %302 = icmp ugt i8* %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %299
  %304 = load i8*, i8** %11, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 -1
  store i8* %305, i8** %11, align 8
  br label %318

306:                                              ; preds = %299
  %307 = load i8*, i8** %11, align 8
  %308 = call i32 @strlen(i8* %307)
  %309 = add nsw i32 %308, 2
  %310 = call i8* @xmalloc(i32 %309)
  store i8* %310, i8** %10, align 8
  %311 = load i8*, i8** %10, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 1
  %313 = load i8*, i8** %11, align 8
  %314 = call i32 @strcpy(i8* %312, i8* %313)
  %315 = load i8*, i8** %11, align 8
  %316 = call i32 @free(i8* %315)
  %317 = load i8*, i8** %10, align 8
  store i8* %317, i8** %11, align 8
  br label %318

318:                                              ; preds = %306, %303
  %319 = load i8, i8* %12, align 1
  %320 = load i8*, i8** %11, align 8
  store i8 %319, i8* %320, align 1
  br label %339

321:                                              ; preds = %238
  %322 = load i8*, i8** %11, align 8
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 40
  br i1 %325, label %326, label %329

326:                                              ; preds = %321
  %327 = load i8*, i8** %11, align 8
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %11, align 8
  br label %329

329:                                              ; preds = %326, %321
  br label %339

330:                                              ; preds = %238
  %331 = load i8*, i8** %11, align 8
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = icmp eq i32 %333, 91
  br i1 %334, label %335, label %338

335:                                              ; preds = %330
  %336 = load i8*, i8** %11, align 8
  %337 = getelementptr inbounds i8, i8* %336, i32 1
  store i8* %337, i8** %11, align 8
  br label %338

338:                                              ; preds = %335, %330
  br label %339

339:                                              ; preds = %238, %338, %329, %318, %298
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %341 = load i8, i8* %12, align 1
  %342 = call i32 @sb_add_char(%struct.TYPE_12__* %340, i8 signext %341)
  %343 = load i32, i32* %5, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %5, align 4
  br label %174

345:                                              ; preds = %236
  %346 = load i8*, i8** %10, align 8
  %347 = call i32 @free(i8* %346)
  br label %348

348:                                              ; preds = %345, %169
  br label %349

349:                                              ; preds = %348, %88
  br label %350

350:                                              ; preds = %349, %74
  br label %351

351:                                              ; preds = %350, %3
  %352 = load i32, i32* %5, align 4
  store i32 %352, i32* %4, align 4
  br label %353

353:                                              ; preds = %351, %296
  %354 = load i32, i32* %4, align 4
  ret i32 %354
}

declare dso_local i32 @sb_reset(%struct.TYPE_12__*) #1

declare dso_local i32 @sb_skip_white(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @ISBASE(i8 signext) #1

declare dso_local i32 @ISSEP(i8 signext) #1

declare dso_local i32 @sb_add_char(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @macro_expr(i32, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @sb_add_string(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @getstring(i32, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
