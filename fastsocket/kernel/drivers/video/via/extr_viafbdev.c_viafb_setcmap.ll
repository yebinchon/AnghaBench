; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_viafb_setcmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_viafb_setcmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.fb_cmap = type { i32, i32*, i32*, i32*, i32* }
%struct.fb_info = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@viaparinfo = common dso_local global %struct.TYPE_6__* null, align 8
@CR6A = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i32 0, align 4
@SR15 = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_cmap*, %struct.fb_info*)* @viafb_setcmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viafb_setcmap(%struct.fb_cmap* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_cmap*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %18 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %19 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %22 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %25 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %28 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  %30 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %31 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 10, i32* %17, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 256
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %341

36:                                               ; preds = %2
  %37 = load i64, i64* @UNICHROME_CLE266, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = call i32 @outl(i32 -2147483404, i64 3320)
  %46 = call i32 @inl(i64 3324)
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 255
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %340 [
    i32 8, label %54
    i32 16, label %202
    i32 32, label %245
  ]

54:                                               ; preds = %49
  %55 = call i32 @outb(i32 26, i32 964)
  %56 = call i32 @inb(i32 965)
  store i32 %56, i32* %12, align 4
  %57 = call i32 @outb(i32 27, i32 964)
  %58 = call i32 @inb(i32 965)
  store i32 %58, i32* %13, align 4
  %59 = call i32 @outb(i32 103, i32 980)
  %60 = call i32 @inb(i32 981)
  store i32 %60, i32* %14, align 4
  %61 = call i32 @outb(i32 106, i32 980)
  %62 = call i32 @inb(i32 981)
  store i32 %62, i32* %15, align 4
  %63 = call i32 @outb(i32 26, i32 964)
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, 1
  %66 = call i32 @outb(i32 %65, i32 965)
  %67 = call i32 @outb(i32 27, i32 964)
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %68, 128
  %70 = call i32 @outb(i32 %69, i32 965)
  %71 = call i32 @outb(i32 103, i32 980)
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %72, 63
  %74 = call i32 @outb(i32 %73, i32 981)
  %75 = call i32 @outb(i32 106, i32 980)
  %76 = load i32, i32* %15, align 4
  %77 = and i32 %76, 191
  %78 = call i32 @outb(i32 %77, i32 981)
  %79 = load i32, i32* %15, align 4
  %80 = or i32 %79, 128
  %81 = call i32 @outb(i32 %80, i32 981)
  %82 = load i32, i32* %15, align 4
  %83 = or i32 %82, 192
  %84 = call i32 @outb(i32 %83, i32 981)
  %85 = call i32 @outb(i32 255, i32 966)
  %86 = call i32 @outb(i32 0, i32 968)
  %87 = load i64, i64* @UNICHROME_CLE266, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %87, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %54
  %95 = load i32, i32* %16, align 4
  %96 = icmp sge i32 %95, 15
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  store i32 8, i32* %17, align 4
  %98 = load i32, i32* @CR6A, align 4
  %99 = load i32, i32* @VIACR, align 4
  %100 = load i32, i32* @BIT5, align 4
  %101 = load i32, i32* @BIT5, align 4
  %102 = call i32 @viafb_write_reg_mask(i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* @SR15, align 4
  %104 = load i32, i32* @VIASR, align 4
  %105 = load i32, i32* @BIT7, align 4
  %106 = load i32, i32* @BIT7, align 4
  %107 = call i32 @viafb_write_reg_mask(i32 %103, i32 %104, i32 %105, i32 %106)
  br label %117

108:                                              ; preds = %94, %54
  store i32 10, i32* %17, align 4
  %109 = load i32, i32* @CR6A, align 4
  %110 = load i32, i32* @VIACR, align 4
  %111 = load i32, i32* @BIT5, align 4
  %112 = call i32 @viafb_write_reg_mask(i32 %109, i32 %110, i32 0, i32 %111)
  %113 = load i32, i32* @SR15, align 4
  %114 = load i32, i32* @VIASR, align 4
  %115 = load i32, i32* @BIT7, align 4
  %116 = call i32 @viafb_write_reg_mask(i32 %113, i32 %114, i32 0, i32 %115)
  br label %117

117:                                              ; preds = %108, %97
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %147, %117
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %150

122:                                              ; preds = %118
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %17, align 4
  %129 = ashr i32 %127, %128
  %130 = call i32 @outb(i32 %129, i32 969)
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %17, align 4
  %137 = ashr i32 %135, %136
  %138 = call i32 @outb(i32 %137, i32 969)
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %17, align 4
  %145 = ashr i32 %143, %144
  %146 = call i32 @outb(i32 %145, i32 969)
  br label %147

147:                                              ; preds = %122
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %118

150:                                              ; preds = %118
  %151 = call i32 @outb(i32 26, i32 964)
  %152 = load i32, i32* %12, align 4
  %153 = and i32 %152, 254
  %154 = call i32 @outb(i32 %153, i32 965)
  %155 = call i32 @outb(i32 255, i32 966)
  %156 = call i32 @outb(i32 0, i32 968)
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %186, %150
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %189

161:                                              ; preds = %157
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %17, align 4
  %168 = ashr i32 %166, %167
  %169 = call i32 @outb(i32 %168, i32 969)
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %17, align 4
  %176 = ashr i32 %174, %175
  %177 = call i32 @outb(i32 %176, i32 969)
  %178 = load i32*, i32** %10, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %17, align 4
  %184 = ashr i32 %182, %183
  %185 = call i32 @outb(i32 %184, i32 969)
  br label %186

186:                                              ; preds = %161
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %157

189:                                              ; preds = %157
  %190 = call i32 @outb(i32 26, i32 964)
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @outb(i32 %191, i32 965)
  %193 = call i32 @outb(i32 27, i32 964)
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @outb(i32 %194, i32 965)
  %196 = call i32 @outb(i32 103, i32 980)
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @outb(i32 %197, i32 981)
  %199 = call i32 @outb(i32 106, i32 980)
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @outb(i32 %200, i32 981)
  br label %340

202:                                              ; preds = %49
  %203 = load i32, i32* %6, align 4
  %204 = icmp sgt i32 %203, 17
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  store i32 0, i32* %3, align 4
  br label %341

206:                                              ; preds = %202
  store i32 0, i32* %7, align 4
  br label %207

207:                                              ; preds = %241, %206
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %244

211:                                              ; preds = %207
  %212 = load i32*, i32** %8, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, 63488
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 64512
  %224 = ashr i32 %223, 5
  %225 = or i32 %217, %224
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, 63488
  %232 = ashr i32 %231, 11
  %233 = or i32 %225, %232
  %234 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %235 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to i32*
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %233, i32* %240, align 4
  br label %241

241:                                              ; preds = %211
  %242 = load i32, i32* %7, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %7, align 4
  br label %207

244:                                              ; preds = %207
  br label %340

245:                                              ; preds = %49
  %246 = load i32, i32* %6, align 4
  %247 = icmp sgt i32 %246, 17
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 0, i32* %3, align 4
  br label %341

249:                                              ; preds = %245
  %250 = load i32*, i32** %11, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %299

252:                                              ; preds = %249
  store i32 0, i32* %7, align 4
  br label %253

253:                                              ; preds = %295, %252
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %6, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %298

257:                                              ; preds = %253
  %258 = load i32*, i32** %11, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, 65280
  %264 = shl i32 %263, 16
  %265 = load i32*, i32** %8, align 8
  %266 = load i32, i32* %7, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, 65280
  %271 = shl i32 %270, 8
  %272 = or i32 %264, %271
  %273 = load i32*, i32** %9, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 65280
  %279 = or i32 %272, %278
  %280 = load i32*, i32** %10, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, 65280
  %286 = ashr i32 %285, 8
  %287 = or i32 %279, %286
  %288 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %289 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = inttoptr i64 %290 to i32*
  %292 = load i32, i32* %7, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 %287, i32* %294, align 4
  br label %295

295:                                              ; preds = %257
  %296 = load i32, i32* %7, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %7, align 4
  br label %253

298:                                              ; preds = %253
  br label %339

299:                                              ; preds = %249
  store i32 0, i32* %7, align 4
  br label %300

300:                                              ; preds = %335, %299
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* %6, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %338

304:                                              ; preds = %300
  %305 = load i32*, i32** %8, align 8
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, 65280
  %311 = shl i32 %310, 8
  %312 = or i32 0, %311
  %313 = load i32*, i32** %9, align 8
  %314 = load i32, i32* %7, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, 65280
  %319 = or i32 %312, %318
  %320 = load i32*, i32** %10, align 8
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = and i32 %324, 65280
  %326 = ashr i32 %325, 8
  %327 = or i32 %319, %326
  %328 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %329 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = inttoptr i64 %330 to i32*
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %327, i32* %334, align 4
  br label %335

335:                                              ; preds = %304
  %336 = load i32, i32* %7, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %7, align 4
  br label %300

338:                                              ; preds = %300
  br label %339

339:                                              ; preds = %338, %298
  br label %340

340:                                              ; preds = %49, %339, %244, %189
  store i32 0, i32* %3, align 4
  br label %341

341:                                              ; preds = %340, %248, %205, %35
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
