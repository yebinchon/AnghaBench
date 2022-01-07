; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/hooks/extr_apr_hooks.c_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/hooks/extr_apr_hooks.c_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i64*, i32, i64* }

@crude_order = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, %struct.TYPE_8__*, i32)* @prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @prepare(i32* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = call %struct.TYPE_9__* @apr_palloc(i32* %13, i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %7, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @crude_order, align 4
  %22 = call i32 @qsort(%struct.TYPE_8__* %19, i32 %20, i32 24, i32 %21)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %58, %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_9__** @apr_pcalloc(i32* %33, i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store %struct.TYPE_9__** %38, %struct.TYPE_9__*** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %57, align 8
  br label %58

58:                                               ; preds = %27
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %23

61:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %293, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %296

66:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %176, %66
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %75, %67
  %88 = phi i1 [ false, %67 ], [ %86, %75 ]
  br i1 %88, label %89, label %179

89:                                               ; preds = %87
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %172, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %175

94:                                               ; preds = %90
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @strcmp(i32 %100, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %171, label %113

113:                                              ; preds = %94
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %141, %113
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %115, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %114
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %129, i64 %131
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i64 %136
  %138 = icmp eq %struct.TYPE_9__* %133, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %123
  br label %170

140:                                              ; preds = %123
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %114

144:                                              ; preds = %114
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 %147
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %153, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %154, i64 %161
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %162, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %144, %139
  br label %175

171:                                              ; preds = %94
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %90

175:                                              ; preds = %170, %90
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %67

179:                                              ; preds = %87
  store i32 0, i32* %9, align 4
  br label %180

180:                                              ; preds = %289, %179
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = icmp ne i64* %186, null
  br i1 %187, label %188, label %200

188:                                              ; preds = %180
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br label %200

200:                                              ; preds = %188, %180
  %201 = phi i1 [ false, %180 ], [ %199, %188 ]
  br i1 %201, label %202, label %292

202:                                              ; preds = %200
  store i32 0, i32* %10, align 4
  br label %203

203:                                              ; preds = %285, %202
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %288

207:                                              ; preds = %203
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @strcmp(i32 %213, i64 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %284, label %226

226:                                              ; preds = %207
  store i32 0, i32* %12, align 4
  br label %227

227:                                              ; preds = %254, %226
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp slt i32 %228, %234
  br i1 %235, label %236, label %257

236:                                              ; preds = %227
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %242, i64 %244
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i64 %249
  %251 = icmp eq %struct.TYPE_9__* %246, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %236
  br label %283

253:                                              ; preds = %236
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  br label %227

257:                                              ; preds = %227
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i64 %260
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %266, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %267, i64 %274
  store %struct.TYPE_9__* %261, %struct.TYPE_9__** %275, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %280, align 8
  br label %283

283:                                              ; preds = %257, %252
  br label %288

284:                                              ; preds = %207
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %10, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %10, align 4
  br label %203

288:                                              ; preds = %283, %203
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %9, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %9, align 4
  br label %180

292:                                              ; preds = %200
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %8, align 4
  br label %62

296:                                              ; preds = %62
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %297
}

declare dso_local %struct.TYPE_9__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__** @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @strcmp(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
