; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_unicode.c_udf_translate_to_linux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_unicode.c_udf_translate_to_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.udf_translate_to_linux.hexChar = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@ILLEGAL_CHAR_MARK = common dso_local global i8 0, align 1
@EXT_MARK = common dso_local global i8 0, align 1
@EXT_SIZE = common dso_local global i32 0, align 4
@CRC_MARK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i32)* @udf_translate_to_linux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_translate_to_linux(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i8, align 1
  %19 = alloca [17 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = bitcast [17 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.udf_translate_to_linux.hexChar, i32 0, i32 0), i64 17, i1 false)
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 46
  br i1 %29, label %30, label %48

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %48

42:                                               ; preds = %36, %30
  store i32 1, i32* %13, align 4
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  br label %138

48:                                               ; preds = %36, %33, %5
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %134, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %137

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %18, align 1
  %59 = load i8, i8* %18, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %66, label %62

62:                                               ; preds = %53
  %63 = load i8, i8* %18, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %62, %53
  store i32 1, i32* %13, align 4
  %67 = load i8, i8* @ILLEGAL_CHAR_MARK, align 1
  store i8 %67, i8* %18, align 1
  br label %68

68:                                               ; preds = %95, %66
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 47
  br i1 %81, label %91, label %82

82:                                               ; preds = %73
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br label %91

91:                                               ; preds = %82, %73
  %92 = phi i1 [ true, %73 ], [ %90, %82 ]
  br label %93

93:                                               ; preds = %91, %68
  %94 = phi i1 [ false, %68 ], [ %92, %91 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %68

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %62
  %100 = load i8, i8* %18, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @EXT_MARK, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* @EXT_SIZE, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %105
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 0, i32* %16, align 4
  br label %121

118:                                              ; preds = %112
  store i32 1, i32* %16, align 4
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %118, %117
  br label %122

122:                                              ; preds = %121, %105, %99
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 256
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i8, i8* %18, align 1
  %127 = load i8*, i8** %6, align 8
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 %126, i8* %131, align 1
  br label %133

132:                                              ; preds = %122
  store i32 1, i32* %13, align 4
  br label %133

133:                                              ; preds = %132, %125
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %49

137:                                              ; preds = %49
  br label %138

138:                                              ; preds = %137, %42
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %335

141:                                              ; preds = %138
  %142 = load i32, i32* @EXT_SIZE, align 4
  %143 = zext i32 %142 to i64
  %144 = call i8* @llvm.stacksave()
  store i8* %144, i8** %20, align 8
  %145 = alloca i8, i64 %143, align 16
  store i64 %143, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %244

148:                                              ; preds = %141
  store i32 0, i32* %11, align 4
  br label %149

149:                                              ; preds = %230, %148
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @EXT_SIZE, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %154, %155
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %8, align 4
  %159 = icmp slt i32 %157, %158
  br label %160

160:                                              ; preds = %153, %149
  %161 = phi i1 [ false, %149 ], [ %159, %153 ]
  br i1 %161, label %162, label %233

162:                                              ; preds = %160
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %164, %165
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %163, i64 %168
  %170 = load i8, i8* %169, align 1
  store i8 %170, i8* %18, align 1
  %171 = load i8, i8* %18, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 47
  br i1 %173, label %178, label %174

174:                                              ; preds = %162
  %175 = load i8, i8* %18, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %224

178:                                              ; preds = %174, %162
  store i32 1, i32* %13, align 4
  %179 = load i8, i8* @ILLEGAL_CHAR_MARK, align 1
  store i8 %179, i8* %18, align 1
  br label %180

180:                                              ; preds = %220, %178
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %181, %182
  %184 = add nsw i32 %183, 2
  %185 = load i32, i32* %8, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %218

187:                                              ; preds = %180
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  %190 = load i32, i32* @EXT_SIZE, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %216

192:                                              ; preds = %187
  %193 = load i8*, i8** %7, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %194, %195
  %197 = add nsw i32 %196, 2
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %193, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 47
  br i1 %202, label %214, label %203

203:                                              ; preds = %192
  %204 = load i8*, i8** %7, align 8
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %205, %206
  %208 = add nsw i32 %207, 2
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %204, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 0
  br label %214

214:                                              ; preds = %203, %192
  %215 = phi i1 [ true, %192 ], [ %213, %203 ]
  br label %216

216:                                              ; preds = %214, %187
  %217 = phi i1 [ false, %187 ], [ %215, %214 ]
  br label %218

218:                                              ; preds = %216, %180
  %219 = phi i1 [ false, %180 ], [ %217, %216 ]
  br i1 %219, label %220, label %223

220:                                              ; preds = %218
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %180

223:                                              ; preds = %218
  br label %224

224:                                              ; preds = %223, %174
  %225 = load i8, i8* %18, align 1
  %226 = load i32, i32* %22, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %22, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %145, i64 %228
  store i8 %225, i8* %229, align 1
  br label %230

230:                                              ; preds = %224
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %11, align 4
  br label %149

233:                                              ; preds = %160
  %234 = load i32, i32* %22, align 4
  %235 = sub nsw i32 250, %234
  store i32 %235, i32* %23, align 4
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %23, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = load i32, i32* %23, align 4
  store i32 %240, i32* %12, align 4
  br label %243

241:                                              ; preds = %233
  %242 = load i32, i32* %15, align 4
  store i32 %242, i32* %12, align 4
  br label %243

243:                                              ; preds = %241, %239
  br label %249

244:                                              ; preds = %141
  %245 = load i32, i32* %12, align 4
  %246 = icmp sgt i32 %245, 250
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  store i32 250, i32* %12, align 4
  br label %248

248:                                              ; preds = %247, %244
  br label %249

249:                                              ; preds = %248, %243
  %250 = load i8, i8* @CRC_MARK, align 1
  %251 = load i8*, i8** %6, align 8
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %12, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i8, i8* %251, i64 %254
  store i8 %250, i8* %255, align 1
  %256 = load i8*, i8** %9, align 8
  %257 = load i32, i32* %10, align 4
  %258 = call zeroext i16 @crc_itu_t(i32 0, i8* %256, i32 %257)
  store i16 %258, i16* %17, align 2
  %259 = load i16, i16* %17, align 2
  %260 = zext i16 %259 to i32
  %261 = and i32 %260, 61440
  %262 = ashr i32 %261, 12
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [17 x i8], [17 x i8]* %19, i64 0, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = load i8*, i8** %6, align 8
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %12, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %266, i64 %269
  store i8 %265, i8* %270, align 1
  %271 = load i16, i16* %17, align 2
  %272 = zext i16 %271 to i32
  %273 = and i32 %272, 3840
  %274 = ashr i32 %273, 8
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [17 x i8], [17 x i8]* %19, i64 0, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = load i8*, i8** %6, align 8
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %12, align 4
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %278, i64 %281
  store i8 %277, i8* %282, align 1
  %283 = load i16, i16* %17, align 2
  %284 = zext i16 %283 to i32
  %285 = and i32 %284, 240
  %286 = ashr i32 %285, 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [17 x i8], [17 x i8]* %19, i64 0, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = load i8*, i8** %6, align 8
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %12, align 4
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds i8, i8* %290, i64 %293
  store i8 %289, i8* %294, align 1
  %295 = load i16, i16* %17, align 2
  %296 = zext i16 %295 to i32
  %297 = and i32 %296, 15
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [17 x i8], [17 x i8]* %19, i64 0, i64 %298
  %300 = load i8, i8* %299, align 1
  %301 = load i8*, i8** %6, align 8
  %302 = load i32, i32* %12, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %12, align 4
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i8, i8* %301, i64 %304
  store i8 %300, i8* %305, align 1
  %306 = load i32, i32* %16, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %333

308:                                              ; preds = %249
  %309 = load i8, i8* @EXT_MARK, align 1
  %310 = load i8*, i8** %6, align 8
  %311 = load i32, i32* %12, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %12, align 4
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i8, i8* %310, i64 %313
  store i8 %309, i8* %314, align 1
  store i32 0, i32* %11, align 4
  br label %315

315:                                              ; preds = %329, %308
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* %22, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %332

319:                                              ; preds = %315
  %320 = load i32, i32* %11, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %145, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = load i8*, i8** %6, align 8
  %325 = load i32, i32* %12, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %12, align 4
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i8, i8* %324, i64 %327
  store i8 %323, i8* %328, align 1
  br label %329

329:                                              ; preds = %319
  %330 = load i32, i32* %11, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %11, align 4
  br label %315

332:                                              ; preds = %315
  br label %333

333:                                              ; preds = %332, %249
  %334 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %334)
  br label %335

335:                                              ; preds = %333, %138
  %336 = load i32, i32* %12, align 4
  ret i32 %336
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local zeroext i16 @crc_itu_t(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
