; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_ccm.c_br_ccm_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_ccm.c_br_ccm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i32, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__**, i32, i32*, i32)*, i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)*, i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)*, i32 (%struct.TYPE_8__**, i32, i32*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ccm_run(%struct.TYPE_7__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %9, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %145

26:                                               ; preds = %4
  %27 = load i64, i64* %10, align 8
  %28 = sub i64 8, %27
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %34
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %71, %37
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %46, %47
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %60, %61
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %56, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = xor i32 %64, %65
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 %67, i8* %70, align 1
  br label %71

71:                                               ; preds = %42
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %38

74:                                               ; preds = %38
  br label %112

75:                                               ; preds = %34
  store i64 0, i64* %12, align 8
  br label %76

76:                                               ; preds = %108, %75
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %111

80:                                               ; preds = %76
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %84, %85
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = xor i32 %88, %93
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %9, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 %96, i8* %99, align 1
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %104, %105
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %100, i32* %107, align 4
  br label %108

108:                                              ; preds = %80
  %109 = load i64, i64* %12, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %12, align 8
  br label %76

111:                                              ; preds = %76
  br label %112

112:                                              ; preds = %111, %74
  %113 = load i64, i64* %11, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 %113
  store i8* %115, i8** %9, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %8, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %8, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %10, align 8
  %123 = icmp ult i64 %122, 8
  br i1 %123, label %124, label %128

124:                                              ; preds = %112
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %292

128:                                              ; preds = %112
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %130, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i32 (%struct.TYPE_8__**, i32, i32*, i32)*, i32 (%struct.TYPE_8__**, i32, i32*, i32)** %133, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %136, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 %134(%struct.TYPE_8__** %137, i32 %140, i32* %143, i32 8)
  br label %145

145:                                              ; preds = %128, %4
  %146 = load i64, i64* %8, align 8
  %147 = and i64 %146, 15
  store i64 %147, i64* %10, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %8, align 8
  %150 = sub i64 %149, %148
  store i64 %150, i64* %8, align 8
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %145
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %155, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)*, i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)** %158, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i8*, i8** %9, align 8
  %170 = load i64, i64* %8, align 8
  %171 = call i32 %159(%struct.TYPE_8__** %162, i32 %165, i32 %168, i8* %169, i64 %170)
  br label %191

172:                                              ; preds = %145
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %174, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)*, i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)** %177, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %180, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load i8*, i8** %9, align 8
  %189 = load i64, i64* %8, align 8
  %190 = call i32 %178(%struct.TYPE_8__** %181, i32 %184, i32 %187, i8* %188, i64 %189)
  br label %191

191:                                              ; preds = %172, %153
  %192 = load i64, i64* %8, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 %192
  store i8* %194, i8** %9, align 8
  %195 = load i64, i64* %10, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %288

197:                                              ; preds = %191
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @memset(i32* %200, i32 0, i32 8)
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %203, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32 (%struct.TYPE_8__**, i32, i32*, i32)*, i32 (%struct.TYPE_8__**, i32, i32*, i32)** %206, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %209, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 %207(%struct.TYPE_8__** %210, i32 %213, i32* %216, i32 8)
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %254

220:                                              ; preds = %197
  store i64 0, i64* %16, align 8
  br label %221

221:                                              ; preds = %250, %220
  %222 = load i64, i64* %16, align 8
  %223 = load i64, i64* %10, align 8
  %224 = icmp ult i64 %222, %223
  br i1 %224, label %225, label %253

225:                                              ; preds = %221
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* %16, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %17, align 4
  %232 = load i8*, i8** %9, align 8
  %233 = load i64, i64* %16, align 8
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  store i32 %236, i32* %18, align 4
  %237 = load i32, i32* %18, align 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* %16, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32 %237, i32* %242, align 4
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %18, align 4
  %245 = xor i32 %243, %244
  %246 = trunc i32 %245 to i8
  %247 = load i8*, i8** %9, align 8
  %248 = load i64, i64* %16, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8 %246, i8* %249, align 1
  br label %250

250:                                              ; preds = %225
  %251 = load i64, i64* %16, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %16, align 8
  br label %221

253:                                              ; preds = %221
  br label %287

254:                                              ; preds = %197
  store i64 0, i64* %16, align 8
  br label %255

255:                                              ; preds = %283, %254
  %256 = load i64, i64* %16, align 8
  %257 = load i64, i64* %10, align 8
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %259, label %286

259:                                              ; preds = %255
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* %16, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i8*, i8** %9, align 8
  %267 = load i64, i64* %16, align 8
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = xor i32 %265, %270
  store i32 %271, i32* %19, align 4
  %272 = load i32, i32* %19, align 4
  %273 = trunc i32 %272 to i8
  %274 = load i8*, i8** %9, align 8
  %275 = load i64, i64* %16, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  store i8 %273, i8* %276, align 1
  %277 = load i32, i32* %19, align 4
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load i64, i64* %16, align 8
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  store i32 %277, i32* %282, align 4
  br label %283

283:                                              ; preds = %259
  %284 = load i64, i64* %16, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %16, align 8
  br label %255

286:                                              ; preds = %255
  br label %287

287:                                              ; preds = %286, %253
  br label %288

288:                                              ; preds = %287, %191
  %289 = load i64, i64* %10, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  store i64 %289, i64* %291, align 8
  br label %292

292:                                              ; preds = %288, %124
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
