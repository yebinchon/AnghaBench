; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_baseband.c_s_ulGetRatio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_baseband.c_s_ulGetRatio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@RATE_54M = common dso_local global i64 0, align 8
@TOP_RATE_54M = common dso_local global i64 0, align 8
@RATE_48M = common dso_local global i64 0, align 8
@TOP_RATE_48M = common dso_local global i64 0, align 8
@RATE_36M = common dso_local global i64 0, align 8
@TOP_RATE_36M = common dso_local global i64 0, align 8
@RATE_24M = common dso_local global i64 0, align 8
@TOP_RATE_24M = common dso_local global i64 0, align 8
@RATE_18M = common dso_local global i64 0, align 8
@TOP_RATE_18M = common dso_local global i64 0, align 8
@RATE_12M = common dso_local global i64 0, align 8
@TOP_RATE_12M = common dso_local global i64 0, align 8
@RATE_11M = common dso_local global i64 0, align 8
@RATE_1M = common dso_local global i64 0, align 8
@RATE_2M = common dso_local global i64 0, align 8
@RATE_5M = common dso_local global i64 0, align 8
@RATE_6M = common dso_local global i64 0, align 8
@RATE_9M = common dso_local global i64 0, align 8
@TOP_RATE_11M = common dso_local global i64 0, align 8
@TOP_RATE_9M = common dso_local global i64 0, align 8
@TOP_RATE_6M = common dso_local global i64 0, align 8
@TOP_RATE_55M = common dso_local global i64 0, align 8
@TOP_RATE_2M = common dso_local global i64 0, align 8
@TOP_RATE_1M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @s_ulGetRatio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_ulGetRatio(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @RATE_54M, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @RATE_54M, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @RATE_54M, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 1000
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %3, align 4
  %32 = load i64, i64* @TOP_RATE_54M, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %19, %1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @RATE_48M, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %37
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @RATE_54M, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @RATE_48M, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %52, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sdiv i32 %61, %64
  store i32 %65, i32* %3, align 4
  %66 = load i64, i64* @TOP_RATE_48M, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %3, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @RATE_48M, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %46, %37
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @RATE_36M, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %77
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @RATE_54M, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @RATE_48M, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %92, %98
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @RATE_36M, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %99, %105
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = mul nsw i32 %107, 1000
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sdiv i32 %108, %111
  store i32 %112, i32* %3, align 4
  %113 = load i64, i64* @TOP_RATE_36M, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %3, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @RATE_36M, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %86, %77
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @RATE_24M, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %178

133:                                              ; preds = %124
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @RATE_54M, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @RATE_48M, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %139, %145
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @RATE_36M, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %146, %152
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @RATE_24M, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %153, %159
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = mul nsw i32 %161, 1000
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sdiv i32 %162, %165
  store i32 %166, i32* %3, align 4
  %167 = load i64, i64* @TOP_RATE_24M, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %3, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @RATE_24M, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %133, %124
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @RATE_18M, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %4, align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %239

187:                                              ; preds = %178
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* @RATE_54M, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* @RATE_48M, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %193, %199
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* @RATE_36M, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %200, %206
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* @RATE_24M, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %207, %213
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @RATE_18M, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %214, %220
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %5, align 4
  %223 = mul nsw i32 %222, 1000
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = sdiv i32 %223, %226
  store i32 %227, i32* %3, align 4
  %228 = load i64, i64* @TOP_RATE_18M, align 8
  %229 = load i32, i32* %3, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %228
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %3, align 4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @RATE_18M, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %187, %178
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i64, i64* @RATE_12M, align 8
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %4, align 4
  %247 = icmp sgt i32 %245, %246
  br i1 %247, label %248, label %307

248:                                              ; preds = %239
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* @RATE_54M, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i64, i64* @RATE_48M, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %254, %260
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = load i64, i64* @RATE_36M, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %261, %267
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i64, i64* @RATE_24M, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %268, %274
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = load i64, i64* @RATE_18M, align 8
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %275, %281
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i64, i64* @RATE_12M, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %282, %288
  store i32 %289, i32* %5, align 4
  %290 = load i32, i32* %5, align 4
  %291 = mul nsw i32 %290, 1000
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = sdiv i32 %291, %294
  store i32 %295, i32* %3, align 4
  %296 = load i64, i64* @TOP_RATE_12M, align 8
  %297 = load i32, i32* %3, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %298, %296
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %3, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load i64, i64* @RATE_12M, align 8
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %4, align 4
  br label %307

307:                                              ; preds = %248, %239
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = load i64, i64* @RATE_11M, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %4, align 4
  %315 = icmp sgt i32 %313, %314
  br i1 %315, label %316, label %372

316:                                              ; preds = %307
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = load i64, i64* @RATE_1M, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = sub nsw i32 %319, %325
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i64, i64* @RATE_2M, align 8
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = sub nsw i32 %326, %332
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = load i64, i64* @RATE_5M, align 8
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = sub nsw i32 %333, %339
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = load i64, i64* @RATE_6M, align 8
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %340, %346
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = load i64, i64* @RATE_9M, align 8
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %347, %353
  store i32 %354, i32* %5, align 4
  %355 = load i32, i32* %5, align 4
  %356 = mul nsw i32 %355, 1000
  %357 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = sdiv i32 %356, %359
  store i32 %360, i32* %3, align 4
  %361 = load i64, i64* @TOP_RATE_11M, align 8
  %362 = load i32, i32* %3, align 4
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %363, %361
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %3, align 4
  %366 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = load i64, i64* @RATE_11M, align 8
  %370 = getelementptr inbounds i32, i32* %368, i64 %369
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %4, align 4
  br label %372

372:                                              ; preds = %316, %307
  %373 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 0
  %375 = load i32*, i32** %374, align 8
  %376 = load i64, i64* @RATE_9M, align 8
  %377 = getelementptr inbounds i32, i32* %375, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %4, align 4
  %380 = icmp sgt i32 %378, %379
  br i1 %380, label %381, label %430

381:                                              ; preds = %372
  %382 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = load i64, i64* @RATE_1M, align 8
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = sub nsw i32 %384, %390
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = load i64, i64* @RATE_2M, align 8
  %396 = getelementptr inbounds i32, i32* %394, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = sub nsw i32 %391, %397
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 0
  %401 = load i32*, i32** %400, align 8
  %402 = load i64, i64* @RATE_5M, align 8
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = sub nsw i32 %398, %404
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 0
  %408 = load i32*, i32** %407, align 8
  %409 = load i64, i64* @RATE_6M, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = sub nsw i32 %405, %411
  store i32 %412, i32* %5, align 4
  %413 = load i32, i32* %5, align 4
  %414 = mul nsw i32 %413, 1000
  %415 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 8
  %418 = sdiv i32 %414, %417
  store i32 %418, i32* %3, align 4
  %419 = load i64, i64* @TOP_RATE_9M, align 8
  %420 = load i32, i32* %3, align 4
  %421 = sext i32 %420 to i64
  %422 = add nsw i64 %421, %419
  %423 = trunc i64 %422 to i32
  store i32 %423, i32* %3, align 4
  %424 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 0
  %426 = load i32*, i32** %425, align 8
  %427 = load i64, i64* @RATE_9M, align 8
  %428 = getelementptr inbounds i32, i32* %426, i64 %427
  %429 = load i32, i32* %428, align 4
  store i32 %429, i32* %4, align 4
  br label %430

430:                                              ; preds = %381, %372
  %431 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 0
  %433 = load i32*, i32** %432, align 8
  %434 = load i64, i64* @RATE_6M, align 8
  %435 = getelementptr inbounds i32, i32* %433, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %4, align 4
  %438 = icmp sgt i32 %436, %437
  br i1 %438, label %439, label %481

439:                                              ; preds = %430
  %440 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %441 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 0
  %445 = load i32*, i32** %444, align 8
  %446 = load i64, i64* @RATE_1M, align 8
  %447 = getelementptr inbounds i32, i32* %445, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = sub nsw i32 %442, %448
  %450 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  %453 = load i64, i64* @RATE_2M, align 8
  %454 = getelementptr inbounds i32, i32* %452, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = sub nsw i32 %449, %455
  %457 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 0
  %459 = load i32*, i32** %458, align 8
  %460 = load i64, i64* @RATE_5M, align 8
  %461 = getelementptr inbounds i32, i32* %459, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = sub nsw i32 %456, %462
  store i32 %463, i32* %5, align 4
  %464 = load i32, i32* %5, align 4
  %465 = mul nsw i32 %464, 1000
  %466 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %467 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = sdiv i32 %465, %468
  store i32 %469, i32* %3, align 4
  %470 = load i64, i64* @TOP_RATE_6M, align 8
  %471 = load i32, i32* %3, align 4
  %472 = sext i32 %471 to i64
  %473 = add nsw i64 %472, %470
  %474 = trunc i64 %473 to i32
  store i32 %474, i32* %3, align 4
  %475 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %476 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %475, i32 0, i32 0
  %477 = load i32*, i32** %476, align 8
  %478 = load i64, i64* @RATE_6M, align 8
  %479 = getelementptr inbounds i32, i32* %477, i64 %478
  %480 = load i32, i32* %479, align 4
  store i32 %480, i32* %4, align 4
  br label %481

481:                                              ; preds = %439, %430
  %482 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %483 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %482, i32 0, i32 0
  %484 = load i32*, i32** %483, align 8
  %485 = load i64, i64* @RATE_5M, align 8
  %486 = getelementptr inbounds i32, i32* %484, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* %4, align 4
  %489 = icmp sgt i32 %487, %488
  br i1 %489, label %490, label %525

490:                                              ; preds = %481
  %491 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %492 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i32 0, i32 0
  %496 = load i32*, i32** %495, align 8
  %497 = load i64, i64* @RATE_1M, align 8
  %498 = getelementptr inbounds i32, i32* %496, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = sub nsw i32 %493, %499
  %501 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %502 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %501, i32 0, i32 0
  %503 = load i32*, i32** %502, align 8
  %504 = load i64, i64* @RATE_2M, align 8
  %505 = getelementptr inbounds i32, i32* %503, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = sub nsw i32 %500, %506
  store i32 %507, i32* %5, align 4
  %508 = load i32, i32* %5, align 4
  %509 = mul nsw i32 %508, 1000
  %510 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 8
  %513 = sdiv i32 %509, %512
  store i32 %513, i32* %3, align 4
  %514 = load i64, i64* @TOP_RATE_55M, align 8
  %515 = load i32, i32* %3, align 4
  %516 = sext i32 %515 to i64
  %517 = add nsw i64 %516, %514
  %518 = trunc i64 %517 to i32
  store i32 %518, i32* %3, align 4
  %519 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %520 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %519, i32 0, i32 0
  %521 = load i32*, i32** %520, align 8
  %522 = load i64, i64* @RATE_5M, align 8
  %523 = getelementptr inbounds i32, i32* %521, i64 %522
  %524 = load i32, i32* %523, align 4
  store i32 %524, i32* %4, align 4
  br label %525

525:                                              ; preds = %490, %481
  %526 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %527 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %526, i32 0, i32 0
  %528 = load i32*, i32** %527, align 8
  %529 = load i64, i64* @RATE_2M, align 8
  %530 = getelementptr inbounds i32, i32* %528, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* %4, align 4
  %533 = icmp sgt i32 %531, %532
  br i1 %533, label %534, label %562

534:                                              ; preds = %525
  %535 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %536 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 8
  %538 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %539 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %538, i32 0, i32 0
  %540 = load i32*, i32** %539, align 8
  %541 = load i64, i64* @RATE_1M, align 8
  %542 = getelementptr inbounds i32, i32* %540, i64 %541
  %543 = load i32, i32* %542, align 4
  %544 = sub nsw i32 %537, %543
  store i32 %544, i32* %5, align 4
  %545 = load i32, i32* %5, align 4
  %546 = mul nsw i32 %545, 1000
  %547 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %548 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 8
  %550 = sdiv i32 %546, %549
  store i32 %550, i32* %3, align 4
  %551 = load i64, i64* @TOP_RATE_2M, align 8
  %552 = load i32, i32* %3, align 4
  %553 = sext i32 %552 to i64
  %554 = add nsw i64 %553, %551
  %555 = trunc i64 %554 to i32
  store i32 %555, i32* %3, align 4
  %556 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %557 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %556, i32 0, i32 0
  %558 = load i32*, i32** %557, align 8
  %559 = load i64, i64* @RATE_2M, align 8
  %560 = getelementptr inbounds i32, i32* %558, i64 %559
  %561 = load i32, i32* %560, align 4
  store i32 %561, i32* %4, align 4
  br label %562

562:                                              ; preds = %534, %525
  %563 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %564 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %563, i32 0, i32 0
  %565 = load i32*, i32** %564, align 8
  %566 = load i64, i64* @RATE_1M, align 8
  %567 = getelementptr inbounds i32, i32* %565, i64 %566
  %568 = load i32, i32* %567, align 4
  %569 = load i32, i32* %4, align 4
  %570 = icmp sgt i32 %568, %569
  br i1 %570, label %571, label %586

571:                                              ; preds = %562
  %572 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %573 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 8
  store i32 %574, i32* %5, align 4
  %575 = load i32, i32* %5, align 4
  %576 = mul nsw i32 %575, 1000
  %577 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %578 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 8
  %580 = sdiv i32 %576, %579
  store i32 %580, i32* %3, align 4
  %581 = load i64, i64* @TOP_RATE_1M, align 8
  %582 = load i32, i32* %3, align 4
  %583 = sext i32 %582 to i64
  %584 = add nsw i64 %583, %581
  %585 = trunc i64 %584 to i32
  store i32 %585, i32* %3, align 4
  br label %586

586:                                              ; preds = %571, %562
  %587 = load i32, i32* %3, align 4
  ret i32 %587
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
