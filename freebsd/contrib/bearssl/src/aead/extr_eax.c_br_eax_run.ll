; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_eax.c_br_eax_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_eax.c_br_eax_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__**, i32, i32*, i32)*, i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)*, i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)*, i32 (%struct.TYPE_8__**, i32, i32*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_eax_run(%struct.TYPE_7__* %0, i32 %1, i8* %2, i64 %3) #0 {
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
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %306

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %9, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %134

29:                                               ; preds = %22
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 16
  br i1 %31, label %32, label %134

32:                                               ; preds = %29
  %33 = load i64, i64* %10, align 8
  %34 = sub i64 16, %33
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %40
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %65, %43
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %57, %58
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = xor i32 %62, %53
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %60, align 1
  br label %65

65:                                               ; preds = %48
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %44

68:                                               ; preds = %44
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @memcpy(i8* %69, i8* %74, i64 %75)
  br label %117

77:                                               ; preds = %40
  store i64 0, i64* %11, align 8
  br label %78

78:                                               ; preds = %113, %77
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %78
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %86, %87
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  store i32 %91, i32* %14, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = trunc i32 %97 to i8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = add i64 %102, %103
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8 %98, i8* %105, align 1
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %13, align 4
  %108 = xor i32 %106, %107
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8 %109, i8* %112, align 1
  br label %113

113:                                              ; preds = %82
  %114 = load i64, i64* %11, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %11, align 8
  br label %78

116:                                              ; preds = %78
  br label %117

117:                                              ; preds = %116, %68
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %12, align 8
  %120 = icmp ule i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %12, align 8
  %124 = add i64 %122, %123
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %306

127:                                              ; preds = %117
  %128 = load i64, i64* %12, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 %128
  store i8* %130, i8** %9, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %8, align 8
  %133 = sub i64 %132, %131
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %127, %29, %22
  %135 = load i64, i64* %10, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %139, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i32 (%struct.TYPE_8__**, i32, i32*, i32)*, i32 (%struct.TYPE_8__**, i32, i32*, i32)** %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %145, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = bitcast i8* %152 to i32*
  %154 = call i32 %143(%struct.TYPE_8__** %146, i32 %149, i32* %153, i32 8)
  br label %155

155:                                              ; preds = %137, %134
  %156 = load i64, i64* %8, align 8
  %157 = and i64 %156, 15
  store i64 %157, i64* %10, align 8
  %158 = load i64, i64* %10, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i64, i64* %8, align 8
  %162 = sub i64 %161, 16
  store i64 %162, i64* %8, align 8
  store i64 16, i64* %10, align 8
  br label %167

163:                                              ; preds = %155
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* %8, align 8
  %166 = sub i64 %165, %164
  store i64 %166, i64* %8, align 8
  br label %167

167:                                              ; preds = %163, %160
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %167
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)*, i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)** %175, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %178, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load i8*, i8** %9, align 8
  %187 = load i64, i64* %8, align 8
  %188 = call i32 %176(%struct.TYPE_8__** %179, i32 %182, i32 %185, i8* %186, i64 %187)
  br label %208

189:                                              ; preds = %167
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %191, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)*, i32 (%struct.TYPE_8__**, i32, i32, i8*, i64)** %194, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %197, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = load i64, i64* %8, align 8
  %207 = call i32 %195(%struct.TYPE_8__** %198, i32 %201, i32 %204, i8* %205, i64 %206)
  br label %208

208:                                              ; preds = %189, %170
  %209 = load i64, i64* %8, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 %209
  store i8* %211, i8** %9, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = bitcast i8* %214 to i32*
  %216 = call i32 @memset(i32* %215, i32 0, i32 8)
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  %219 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %218, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32 (%struct.TYPE_8__**, i32, i32*, i32)*, i32 (%struct.TYPE_8__**, i32, i32*, i32)** %221, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %224, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = bitcast i8* %231 to i32*
  %233 = call i32 %222(%struct.TYPE_8__** %225, i32 %228, i32* %232, i32 8)
  %234 = load i32, i32* %6, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %266

236:                                              ; preds = %208
  store i64 0, i64* %15, align 8
  br label %237

237:                                              ; preds = %256, %236
  %238 = load i64, i64* %15, align 8
  %239 = load i64, i64* %10, align 8
  %240 = icmp ult i64 %238, %239
  br i1 %240, label %241, label %259

241:                                              ; preds = %237
  %242 = load i8*, i8** %9, align 8
  %243 = load i64, i64* %15, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i8*, i8** %248, align 8
  %250 = load i64, i64* %15, align 8
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = xor i32 %253, %246
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %251, align 1
  br label %256

256:                                              ; preds = %241
  %257 = load i64, i64* %15, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %15, align 8
  br label %237

259:                                              ; preds = %237
  %260 = load i8*, i8** %9, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = load i64, i64* %10, align 8
  %265 = call i32 @memcpy(i8* %260, i8* %263, i64 %264)
  br label %302

266:                                              ; preds = %208
  store i64 0, i64* %16, align 8
  br label %267

267:                                              ; preds = %298, %266
  %268 = load i64, i64* %16, align 8
  %269 = load i64, i64* %10, align 8
  %270 = icmp ult i64 %268, %269
  br i1 %270, label %271, label %301

271:                                              ; preds = %267
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = load i64, i64* %16, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  store i32 %278, i32* %18, align 4
  %279 = load i8*, i8** %9, align 8
  %280 = load i64, i64* %16, align 8
  %281 = getelementptr inbounds i8, i8* %279, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  store i32 %283, i32* %17, align 4
  %284 = load i32, i32* %17, align 4
  %285 = trunc i32 %284 to i8
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = load i64, i64* %16, align 8
  %290 = getelementptr inbounds i8, i8* %288, i64 %289
  store i8 %285, i8* %290, align 1
  %291 = load i32, i32* %18, align 4
  %292 = load i32, i32* %17, align 4
  %293 = xor i32 %291, %292
  %294 = trunc i32 %293 to i8
  %295 = load i8*, i8** %9, align 8
  %296 = load i64, i64* %16, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  store i8 %294, i8* %297, align 1
  br label %298

298:                                              ; preds = %271
  %299 = load i64, i64* %16, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %16, align 8
  br label %267

301:                                              ; preds = %267
  br label %302

302:                                              ; preds = %301, %259
  %303 = load i64, i64* %10, align 8
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 0
  store i64 %303, i64* %305, align 8
  br label %306

306:                                              ; preds = %302, %121, %21
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
