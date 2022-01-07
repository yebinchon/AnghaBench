; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-mep.c_mep_final_link_relocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-mep.c_mep_final_link_relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@bfd_reloc_ok = common dso_local global i32 0, align 4
@bfd_reloc_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, %struct.TYPE_10__*, i32*, %struct.TYPE_11__*, i32)* @mep_final_link_relocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mep_final_link_relocate(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_10__* %2, i32* %3, %struct.TYPE_11__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @bfd_reloc_ok, align 4
  store i32 %21, i32* %18, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @bfd_big_endian(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %27

26:                                               ; preds = %6
  store i32 1, i32* %19, align 4
  store i32 3, i32* %20, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %32, %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %15, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  store i8* %53, i8** %16, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 134
  br i1 %57, label %58, label %66

58:                                               ; preds = %27
  %59 = load i64, i64* %15, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %17, align 4
  %63 = icmp sge i32 %62, 8388608
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @bfd_reloc_ok, align 4
  store i32 %65, i32* %7, align 4
  br label %668

66:                                               ; preds = %61, %58, %27
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %15, align 8
  %75 = sub nsw i64 %74, %73
  store i64 %75, i64* %15, align 8
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i64, i64* %15, align 8
  store i64 %77, i64* %14, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %664 [
    i32 145, label %81
    i32 147, label %92
    i32 146, label %115
    i32 133, label %151
    i32 136, label %178
    i32 135, label %224
    i32 134, label %251
    i32 137, label %316
    i32 138, label %378
    i32 139, label %396
    i32 140, label %415
    i32 141, label %434
    i32 132, label %466
    i32 131, label %498
    i32 130, label %528
    i32 129, label %558
    i32 128, label %588
    i32 144, label %620
    i32 142, label %662
    i32 143, label %663
  ]

81:                                               ; preds = %76
  %82 = load i64, i64* %14, align 8
  %83 = icmp ugt i64 %82, 255
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %85, i32* %18, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i64, i64* %14, align 8
  %88 = and i64 %87, 255
  %89 = trunc i64 %88 to i8
  %90 = load i8*, i8** %16, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  store i8 %89, i8* %91, align 1
  br label %666

92:                                               ; preds = %76
  %93 = load i64, i64* %14, align 8
  %94 = icmp ugt i64 %93, 65535
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i64, i64* %14, align 8
  %99 = lshr i64 %98, 8
  %100 = and i64 %99, 255
  %101 = trunc i64 %100 to i8
  %102 = load i8*, i8** %16, align 8
  %103 = load i32, i32* %19, align 4
  %104 = xor i32 0, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 %101, i8* %106, align 1
  %107 = load i64, i64* %14, align 8
  %108 = and i64 %107, 255
  %109 = trunc i64 %108 to i8
  %110 = load i8*, i8** %16, align 8
  %111 = load i32, i32* %19, align 4
  %112 = xor i32 1, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8 %109, i8* %114, align 1
  br label %666

115:                                              ; preds = %76
  %116 = load i64, i64* %14, align 8
  %117 = lshr i64 %116, 24
  %118 = and i64 %117, 255
  %119 = trunc i64 %118 to i8
  %120 = load i8*, i8** %16, align 8
  %121 = load i32, i32* %20, align 4
  %122 = xor i32 0, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  store i8 %119, i8* %124, align 1
  %125 = load i64, i64* %14, align 8
  %126 = lshr i64 %125, 16
  %127 = and i64 %126, 255
  %128 = trunc i64 %127 to i8
  %129 = load i8*, i8** %16, align 8
  %130 = load i32, i32* %20, align 4
  %131 = xor i32 1, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 %128, i8* %133, align 1
  %134 = load i64, i64* %14, align 8
  %135 = lshr i64 %134, 8
  %136 = and i64 %135, 255
  %137 = trunc i64 %136 to i8
  %138 = load i8*, i8** %16, align 8
  %139 = load i32, i32* %20, align 4
  %140 = xor i32 2, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 %137, i8* %142, align 1
  %143 = load i64, i64* %14, align 8
  %144 = and i64 %143, 255
  %145 = trunc i64 %144 to i8
  %146 = load i8*, i8** %16, align 8
  %147 = load i32, i32* %20, align 4
  %148 = xor i32 3, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  store i8 %145, i8* %150, align 1
  br label %666

151:                                              ; preds = %76
  %152 = load i64, i64* %15, align 8
  %153 = icmp sgt i64 -128, %152
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* %15, align 8
  %156 = icmp sgt i64 %155, 127
  br i1 %156, label %157, label %159

157:                                              ; preds = %154, %151
  %158 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %158, i32* %18, align 4
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i8*, i8** %16, align 8
  %161 = load i32, i32* %19, align 4
  %162 = xor i32 1, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %15, align 8
  %170 = and i64 %169, 254
  %171 = or i64 %168, %170
  %172 = trunc i64 %171 to i8
  %173 = load i8*, i8** %16, align 8
  %174 = load i32, i32* %19, align 4
  %175 = xor i32 1, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 %172, i8* %177, align 1
  br label %666

178:                                              ; preds = %76
  %179 = load i64, i64* %15, align 8
  %180 = icmp sgt i64 -2048, %179
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i64, i64* %15, align 8
  %183 = icmp sgt i64 %182, 2047
  br i1 %183, label %184, label %186

184:                                              ; preds = %181, %178
  %185 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %185, i32* %18, align 4
  br label %186

186:                                              ; preds = %184, %181
  %187 = load i8*, i8** %16, align 8
  %188 = load i32, i32* %19, align 4
  %189 = xor i32 0, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = and i32 %193, 240
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %15, align 8
  %197 = ashr i64 %196, 8
  %198 = and i64 %197, 15
  %199 = or i64 %195, %198
  %200 = trunc i64 %199 to i8
  %201 = load i8*, i8** %16, align 8
  %202 = load i32, i32* %19, align 4
  %203 = xor i32 0, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %201, i64 %204
  store i8 %200, i8* %205, align 1
  %206 = load i8*, i8** %16, align 8
  %207 = load i32, i32* %19, align 4
  %208 = xor i32 1, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = and i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %15, align 8
  %216 = and i64 %215, 254
  %217 = or i64 %214, %216
  %218 = trunc i64 %217 to i8
  %219 = load i8*, i8** %16, align 8
  %220 = load i32, i32* %19, align 4
  %221 = xor i32 1, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  store i8 %218, i8* %223, align 1
  br label %666

224:                                              ; preds = %76
  %225 = load i64, i64* %15, align 8
  %226 = icmp sgt i64 -65536, %225
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load i64, i64* %15, align 8
  %229 = icmp sgt i64 %228, 65535
  br i1 %229, label %230, label %232

230:                                              ; preds = %227, %224
  %231 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %231, i32* %18, align 4
  br label %232

232:                                              ; preds = %230, %227
  %233 = load i64, i64* %15, align 8
  %234 = ashr i64 %233, 9
  %235 = and i64 %234, 255
  %236 = trunc i64 %235 to i8
  %237 = load i8*, i8** %16, align 8
  %238 = load i32, i32* %19, align 4
  %239 = xor i32 2, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %237, i64 %240
  store i8 %236, i8* %241, align 1
  %242 = load i64, i64* %15, align 8
  %243 = ashr i64 %242, 1
  %244 = and i64 %243, 255
  %245 = trunc i64 %244 to i8
  %246 = load i8*, i8** %16, align 8
  %247 = load i32, i32* %19, align 4
  %248 = xor i32 3, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %246, i64 %249
  store i8 %245, i8* %250, align 1
  br label %666

251:                                              ; preds = %76
  %252 = load i64, i64* %15, align 8
  %253 = icmp sgt i64 -8388608, %252
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = load i64, i64* %15, align 8
  %256 = icmp sgt i64 %255, 8388607
  br i1 %256, label %257, label %259

257:                                              ; preds = %254, %251
  %258 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %258, i32* %18, align 4
  br label %259

259:                                              ; preds = %257, %254
  %260 = load i8*, i8** %16, align 8
  %261 = load i32, i32* %19, align 4
  %262 = xor i32 0, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %260, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = and i32 %266, 248
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %15, align 8
  %270 = ashr i64 %269, 5
  %271 = and i64 %270, 7
  %272 = or i64 %268, %271
  %273 = trunc i64 %272 to i8
  %274 = load i8*, i8** %16, align 8
  %275 = load i32, i32* %19, align 4
  %276 = xor i32 0, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %274, i64 %277
  store i8 %273, i8* %278, align 1
  %279 = load i8*, i8** %16, align 8
  %280 = load i32, i32* %19, align 4
  %281 = xor i32 1, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %279, i64 %282
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = and i32 %285, 15
  %287 = sext i32 %286 to i64
  %288 = load i64, i64* %15, align 8
  %289 = shl i64 %288, 3
  %290 = and i64 %289, 240
  %291 = or i64 %287, %290
  %292 = trunc i64 %291 to i8
  %293 = load i8*, i8** %16, align 8
  %294 = load i32, i32* %19, align 4
  %295 = xor i32 1, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %293, i64 %296
  store i8 %292, i8* %297, align 1
  %298 = load i64, i64* %15, align 8
  %299 = ashr i64 %298, 16
  %300 = and i64 %299, 255
  %301 = trunc i64 %300 to i8
  %302 = load i8*, i8** %16, align 8
  %303 = load i32, i32* %19, align 4
  %304 = xor i32 2, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %302, i64 %305
  store i8 %301, i8* %306, align 1
  %307 = load i64, i64* %15, align 8
  %308 = ashr i64 %307, 8
  %309 = and i64 %308, 255
  %310 = trunc i64 %309 to i8
  %311 = load i8*, i8** %16, align 8
  %312 = load i32, i32* %19, align 4
  %313 = xor i32 3, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %311, i64 %314
  store i8 %310, i8* %315, align 1
  br label %666

316:                                              ; preds = %76
  %317 = load i64, i64* %14, align 8
  %318 = icmp ugt i64 %317, 16777215
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %320, i32* %18, align 4
  br label %321

321:                                              ; preds = %319, %316
  %322 = load i8*, i8** %16, align 8
  %323 = load i32, i32* %19, align 4
  %324 = xor i32 0, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %322, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i32
  %329 = and i32 %328, 248
  %330 = sext i32 %329 to i64
  %331 = load i64, i64* %14, align 8
  %332 = lshr i64 %331, 5
  %333 = and i64 %332, 7
  %334 = or i64 %330, %333
  %335 = trunc i64 %334 to i8
  %336 = load i8*, i8** %16, align 8
  %337 = load i32, i32* %19, align 4
  %338 = xor i32 0, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* %336, i64 %339
  store i8 %335, i8* %340, align 1
  %341 = load i8*, i8** %16, align 8
  %342 = load i32, i32* %19, align 4
  %343 = xor i32 1, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %341, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = and i32 %347, 15
  %349 = sext i32 %348 to i64
  %350 = load i64, i64* %14, align 8
  %351 = shl i64 %350, 3
  %352 = and i64 %351, 240
  %353 = or i64 %349, %352
  %354 = trunc i64 %353 to i8
  %355 = load i8*, i8** %16, align 8
  %356 = load i32, i32* %19, align 4
  %357 = xor i32 1, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, i8* %355, i64 %358
  store i8 %354, i8* %359, align 1
  %360 = load i64, i64* %14, align 8
  %361 = lshr i64 %360, 16
  %362 = and i64 %361, 255
  %363 = trunc i64 %362 to i8
  %364 = load i8*, i8** %16, align 8
  %365 = load i32, i32* %19, align 4
  %366 = xor i32 2, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %364, i64 %367
  store i8 %363, i8* %368, align 1
  %369 = load i64, i64* %14, align 8
  %370 = lshr i64 %369, 8
  %371 = and i64 %370, 255
  %372 = trunc i64 %371 to i8
  %373 = load i8*, i8** %16, align 8
  %374 = load i32, i32* %19, align 4
  %375 = xor i32 3, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %373, i64 %376
  store i8 %372, i8* %377, align 1
  br label %666

378:                                              ; preds = %76
  %379 = load i64, i64* %14, align 8
  %380 = lshr i64 %379, 8
  %381 = and i64 %380, 255
  %382 = trunc i64 %381 to i8
  %383 = load i8*, i8** %16, align 8
  %384 = load i32, i32* %19, align 4
  %385 = xor i32 2, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8, i8* %383, i64 %386
  store i8 %382, i8* %387, align 1
  %388 = load i64, i64* %14, align 8
  %389 = and i64 %388, 255
  %390 = trunc i64 %389 to i8
  %391 = load i8*, i8** %16, align 8
  %392 = load i32, i32* %19, align 4
  %393 = xor i32 3, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, i8* %391, i64 %394
  store i8 %390, i8* %395, align 1
  br label %666

396:                                              ; preds = %76
  %397 = load i64, i64* %14, align 8
  %398 = lshr i64 %397, 24
  %399 = and i64 %398, 255
  %400 = trunc i64 %399 to i8
  %401 = load i8*, i8** %16, align 8
  %402 = load i32, i32* %19, align 4
  %403 = xor i32 2, %402
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %401, i64 %404
  store i8 %400, i8* %405, align 1
  %406 = load i64, i64* %14, align 8
  %407 = lshr i64 %406, 16
  %408 = and i64 %407, 255
  %409 = trunc i64 %408 to i8
  %410 = load i8*, i8** %16, align 8
  %411 = load i32, i32* %19, align 4
  %412 = xor i32 3, %411
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %410, i64 %413
  store i8 %409, i8* %414, align 1
  br label %666

415:                                              ; preds = %76
  %416 = load i64, i64* %15, align 8
  %417 = ashr i64 %416, 24
  %418 = and i64 %417, 255
  %419 = trunc i64 %418 to i8
  %420 = load i8*, i8** %16, align 8
  %421 = load i32, i32* %19, align 4
  %422 = xor i32 2, %421
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8, i8* %420, i64 %423
  store i8 %419, i8* %424, align 1
  %425 = load i64, i64* %15, align 8
  %426 = ashr i64 %425, 16
  %427 = and i64 %426, 255
  %428 = trunc i64 %427 to i8
  %429 = load i8*, i8** %16, align 8
  %430 = load i32, i32* %19, align 4
  %431 = xor i32 3, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, i8* %429, i64 %432
  store i8 %428, i8* %433, align 1
  br label %666

434:                                              ; preds = %76
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = call i64 @mep_sdaoff_base(i32 %437)
  %439 = load i64, i64* %15, align 8
  %440 = sub nsw i64 %439, %438
  store i64 %440, i64* %15, align 8
  %441 = load i64, i64* %15, align 8
  %442 = icmp sgt i64 -32768, %441
  br i1 %442, label %446, label %443

443:                                              ; preds = %434
  %444 = load i64, i64* %15, align 8
  %445 = icmp sgt i64 %444, 32767
  br i1 %445, label %446, label %448

446:                                              ; preds = %443, %434
  %447 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %447, i32* %18, align 4
  br label %448

448:                                              ; preds = %446, %443
  %449 = load i64, i64* %15, align 8
  %450 = ashr i64 %449, 8
  %451 = and i64 %450, 255
  %452 = trunc i64 %451 to i8
  %453 = load i8*, i8** %16, align 8
  %454 = load i32, i32* %19, align 4
  %455 = xor i32 2, %454
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %453, i64 %456
  store i8 %452, i8* %457, align 1
  %458 = load i64, i64* %15, align 8
  %459 = and i64 %458, 255
  %460 = trunc i64 %459 to i8
  %461 = load i8*, i8** %16, align 8
  %462 = load i32, i32* %19, align 4
  %463 = xor i32 3, %462
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i8, i8* %461, i64 %464
  store i8 %460, i8* %465, align 1
  br label %666

466:                                              ; preds = %76
  %467 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %468 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = call i64 @mep_tpoff_base(i32 %469)
  %471 = load i64, i64* %15, align 8
  %472 = sub i64 %471, %470
  store i64 %472, i64* %15, align 8
  %473 = load i64, i64* %15, align 8
  %474 = icmp sgt i64 -32768, %473
  br i1 %474, label %478, label %475

475:                                              ; preds = %466
  %476 = load i64, i64* %15, align 8
  %477 = icmp sgt i64 %476, 32767
  br i1 %477, label %478, label %480

478:                                              ; preds = %475, %466
  %479 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %479, i32* %18, align 4
  br label %480

480:                                              ; preds = %478, %475
  %481 = load i64, i64* %15, align 8
  %482 = ashr i64 %481, 8
  %483 = and i64 %482, 255
  %484 = trunc i64 %483 to i8
  %485 = load i8*, i8** %16, align 8
  %486 = load i32, i32* %19, align 4
  %487 = xor i32 2, %486
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8, i8* %485, i64 %488
  store i8 %484, i8* %489, align 1
  %490 = load i64, i64* %15, align 8
  %491 = and i64 %490, 255
  %492 = trunc i64 %491 to i8
  %493 = load i8*, i8** %16, align 8
  %494 = load i32, i32* %19, align 4
  %495 = xor i32 3, %494
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8, i8* %493, i64 %496
  store i8 %492, i8* %497, align 1
  br label %666

498:                                              ; preds = %76
  %499 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = call i64 @mep_tpoff_base(i32 %501)
  %503 = load i64, i64* %14, align 8
  %504 = sub i64 %503, %502
  store i64 %504, i64* %14, align 8
  %505 = load i64, i64* %14, align 8
  %506 = icmp ugt i64 %505, 127
  br i1 %506, label %507, label %509

507:                                              ; preds = %498
  %508 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %508, i32* %18, align 4
  br label %509

509:                                              ; preds = %507, %498
  %510 = load i8*, i8** %16, align 8
  %511 = load i32, i32* %19, align 4
  %512 = xor i32 1, %511
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i8, i8* %510, i64 %513
  %515 = load i8, i8* %514, align 1
  %516 = zext i8 %515 to i32
  %517 = and i32 %516, 128
  %518 = sext i32 %517 to i64
  %519 = load i64, i64* %14, align 8
  %520 = and i64 %519, 127
  %521 = or i64 %518, %520
  %522 = trunc i64 %521 to i8
  %523 = load i8*, i8** %16, align 8
  %524 = load i32, i32* %19, align 4
  %525 = xor i32 1, %524
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i8, i8* %523, i64 %526
  store i8 %522, i8* %527, align 1
  br label %666

528:                                              ; preds = %76
  %529 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = call i64 @mep_tpoff_base(i32 %531)
  %533 = load i64, i64* %14, align 8
  %534 = sub i64 %533, %532
  store i64 %534, i64* %14, align 8
  %535 = load i64, i64* %14, align 8
  %536 = icmp ugt i64 %535, 127
  br i1 %536, label %537, label %539

537:                                              ; preds = %528
  %538 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %538, i32* %18, align 4
  br label %539

539:                                              ; preds = %537, %528
  %540 = load i8*, i8** %16, align 8
  %541 = load i32, i32* %19, align 4
  %542 = xor i32 1, %541
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i8, i8* %540, i64 %543
  %545 = load i8, i8* %544, align 1
  %546 = zext i8 %545 to i32
  %547 = and i32 %546, 129
  %548 = sext i32 %547 to i64
  %549 = load i64, i64* %14, align 8
  %550 = and i64 %549, 126
  %551 = or i64 %548, %550
  %552 = trunc i64 %551 to i8
  %553 = load i8*, i8** %16, align 8
  %554 = load i32, i32* %19, align 4
  %555 = xor i32 1, %554
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i8, i8* %553, i64 %556
  store i8 %552, i8* %557, align 1
  br label %666

558:                                              ; preds = %76
  %559 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %560 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  %562 = call i64 @mep_tpoff_base(i32 %561)
  %563 = load i64, i64* %14, align 8
  %564 = sub i64 %563, %562
  store i64 %564, i64* %14, align 8
  %565 = load i64, i64* %14, align 8
  %566 = icmp ugt i64 %565, 127
  br i1 %566, label %567, label %569

567:                                              ; preds = %558
  %568 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %568, i32* %18, align 4
  br label %569

569:                                              ; preds = %567, %558
  %570 = load i8*, i8** %16, align 8
  %571 = load i32, i32* %19, align 4
  %572 = xor i32 1, %571
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i8, i8* %570, i64 %573
  %575 = load i8, i8* %574, align 1
  %576 = zext i8 %575 to i32
  %577 = and i32 %576, 131
  %578 = sext i32 %577 to i64
  %579 = load i64, i64* %14, align 8
  %580 = and i64 %579, 124
  %581 = or i64 %578, %580
  %582 = trunc i64 %581 to i8
  %583 = load i8*, i8** %16, align 8
  %584 = load i32, i32* %19, align 4
  %585 = xor i32 1, %584
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i8, i8* %583, i64 %586
  store i8 %582, i8* %587, align 1
  br label %666

588:                                              ; preds = %76
  %589 = load i64, i64* %14, align 8
  %590 = icmp ugt i64 %589, 16777215
  br i1 %590, label %591, label %593

591:                                              ; preds = %588
  %592 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %592, i32* %18, align 4
  br label %593

593:                                              ; preds = %591, %588
  %594 = load i64, i64* %14, align 8
  %595 = and i64 %594, 255
  %596 = trunc i64 %595 to i8
  %597 = load i8*, i8** %16, align 8
  %598 = load i32, i32* %19, align 4
  %599 = xor i32 1, %598
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i8, i8* %597, i64 %600
  store i8 %596, i8* %601, align 1
  %602 = load i64, i64* %14, align 8
  %603 = lshr i64 %602, 16
  %604 = and i64 %603, 255
  %605 = trunc i64 %604 to i8
  %606 = load i8*, i8** %16, align 8
  %607 = load i32, i32* %19, align 4
  %608 = xor i32 2, %607
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i8, i8* %606, i64 %609
  store i8 %605, i8* %610, align 1
  %611 = load i64, i64* %14, align 8
  %612 = lshr i64 %611, 8
  %613 = and i64 %612, 255
  %614 = trunc i64 %613 to i8
  %615 = load i8*, i8** %16, align 8
  %616 = load i32, i32* %19, align 4
  %617 = xor i32 3, %616
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i8, i8* %615, i64 %618
  store i8 %614, i8* %619, align 1
  br label %666

620:                                              ; preds = %76
  %621 = load i64, i64* %14, align 8
  %622 = icmp ugt i64 %621, 16777215
  br i1 %622, label %623, label %625

623:                                              ; preds = %620
  %624 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %624, i32* %18, align 4
  br label %625

625:                                              ; preds = %623, %620
  %626 = load i8*, i8** %16, align 8
  %627 = load i32, i32* %19, align 4
  %628 = xor i32 1, %627
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i8, i8* %626, i64 %629
  %631 = load i8, i8* %630, align 1
  %632 = zext i8 %631 to i32
  %633 = and i32 %632, 3
  %634 = sext i32 %633 to i64
  %635 = load i64, i64* %14, align 8
  %636 = and i64 %635, 252
  %637 = or i64 %634, %636
  %638 = trunc i64 %637 to i8
  %639 = load i8*, i8** %16, align 8
  %640 = load i32, i32* %19, align 4
  %641 = xor i32 1, %640
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i8, i8* %639, i64 %642
  store i8 %638, i8* %643, align 1
  %644 = load i64, i64* %14, align 8
  %645 = lshr i64 %644, 16
  %646 = and i64 %645, 255
  %647 = trunc i64 %646 to i8
  %648 = load i8*, i8** %16, align 8
  %649 = load i32, i32* %19, align 4
  %650 = xor i32 2, %649
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i8, i8* %648, i64 %651
  store i8 %647, i8* %652, align 1
  %653 = load i64, i64* %14, align 8
  %654 = lshr i64 %653, 8
  %655 = and i64 %654, 255
  %656 = trunc i64 %655 to i8
  %657 = load i8*, i8** %16, align 8
  %658 = load i32, i32* %19, align 4
  %659 = xor i32 3, %658
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds i8, i8* %657, i64 %660
  store i8 %656, i8* %661, align 1
  br label %666

662:                                              ; preds = %76
  br label %666

663:                                              ; preds = %76
  br label %666

664:                                              ; preds = %76
  %665 = call i32 (...) @abort() #3
  unreachable

666:                                              ; preds = %663, %662, %625, %593, %569, %539, %509, %480, %448, %415, %396, %378, %321, %259, %232, %186, %159, %115, %97, %86
  %667 = load i32, i32* %18, align 4
  store i32 %667, i32* %7, align 4
  br label %668

668:                                              ; preds = %666, %64
  %669 = load i32, i32* %7, align 4
  ret i32 %669
}

declare dso_local i64 @bfd_big_endian(i32*) #1

declare dso_local i64 @mep_sdaoff_base(i32) #1

declare dso_local i64 @mep_tpoff_base(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
