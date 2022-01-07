; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i15_keygen.c_br_rsa_i15_keygen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i15_keygen.c_br_rsa_i15_keygen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32*, i32, i32*, i64, i32*, i64, i32*, i64 }
%struct.TYPE_5__ = type { i64*, i32, i64*, i32 }

@TEMPS = common dso_local global i32 0, align 4
@BR_MIN_RSA_SIZE = common dso_local global i32 0, align 4
@BR_MAX_RSA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_i15_keygen(i32** %0, %struct.TYPE_6__* %1, i8* %2, %struct.TYPE_5__* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32** %0, i32*** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %28 = load i32, i32* @TEMPS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %24, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %25, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @BR_MIN_RSA_SIZE, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @BR_MAX_RSA_SIZE, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %7
  store i32 0, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %410

40:                                               ; preds = %35
  %41 = load i32, i32* %15, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 3, i32* %15, align 4
  br label %53

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %44
  store i32 0, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %410

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %14, align 4
  %55 = add i32 %54, 1
  %56 = lshr i32 %55, 1
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %16, align 4
  %59 = sub i32 %57, %58
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 7
  %69 = ashr i32 %68, 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 7
  %84 = ashr i32 %83, 3
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 7
  store i32* %109, i32** %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 8
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 7
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 9
  store i32* %124, i32** %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 10
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %134 = icmp ne %struct.TYPE_5__* %133, null
  br i1 %134, label %135, label %178

135:                                              ; preds = %53
  %136 = load i8*, i8** %13, align 8
  %137 = bitcast i8* %136 to i64*
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i64* %137, i64** %139, align 8
  %140 = load i32, i32* %14, align 4
  %141 = add i32 %140, 7
  %142 = lshr i32 %141, 3
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %147, i64 %151
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  store i64* %152, i64** %154, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  store i32 4, i32* %156, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @br_enc32be(i64* %159, i32 %160)
  br label %162

162:                                              ; preds = %168, %135
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %162
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i32 1
  store i64* %172, i64** %170, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %174, align 8
  br label %162

177:                                              ; preds = %162
  br label %178

178:                                              ; preds = %177, %53
  %179 = load i32, i32* %16, align 4
  %180 = call i32 @MUL15(i32 %179, i32 17477)
  %181 = ashr i32 %180, 18
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @MUL15(i32 %184, i32 17477)
  %186 = ashr i32 %185, 18
  %187 = load i32, i32* %17, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 15
  %191 = ashr i32 %190, 4
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %18, align 8
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, 15
  %195 = ashr i32 %194, 4
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %19, align 8
  store i32* %31, i32** %21, align 8
  %197 = load i32*, i32** %21, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i64, i64* %18, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %22, align 8
  %201 = load i32*, i32** %22, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i64, i64* %19, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %23, align 8
  %205 = mul nuw i64 4, %29
  %206 = udiv i64 %205, 4
  %207 = load i64, i64* %18, align 8
  %208 = add i64 2, %207
  %209 = load i64, i64* %19, align 8
  %210 = add i64 %208, %209
  %211 = sub i64 %206, %210
  store i64 %211, i64* %20, align 8
  br label %212

212:                                              ; preds = %256, %178
  %213 = load i32**, i32*** %9, align 8
  %214 = load i32*, i32** %21, align 8
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %15, align 4
  %217 = load i32*, i32** %23, align 8
  %218 = load i64, i64* %20, align 8
  %219 = call i32 @mkprime(i32** %213, i32* %214, i32 %215, i32 %216, i32* %217, i64 %218)
  %220 = load i32*, i32** %21, align 8
  %221 = call i32 @br_i15_rshift(i32* %220, i32 1)
  %222 = load i32*, i32** %23, align 8
  %223 = load i32*, i32** %21, align 8
  %224 = load i32, i32* %15, align 4
  %225 = load i32*, i32** %23, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i64, i64* %18, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = call i64 @invert_pubexp(i32* %222, i32* %223, i32 %224, i32* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %256

231:                                              ; preds = %212
  %232 = load i32*, i32** %21, align 8
  %233 = load i32*, i32** %21, align 8
  %234 = call i32 @br_i15_add(i32* %232, i32* %233, i32 1)
  %235 = load i32*, i32** %21, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = load i32*, i32** %21, align 8
  %247 = call i32 @br_i15_encode(i32* %241, i64 %245, i32* %246)
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 5
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 6
  %253 = load i64, i64* %252, align 8
  %254 = load i32*, i32** %23, align 8
  %255 = call i32 @br_i15_encode(i32* %250, i64 %253, i32* %254)
  br label %257

256:                                              ; preds = %212
  br label %212

257:                                              ; preds = %231
  br label %258

258:                                              ; preds = %302, %257
  %259 = load i32**, i32*** %9, align 8
  %260 = load i32*, i32** %22, align 8
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %15, align 4
  %263 = load i32*, i32** %23, align 8
  %264 = load i64, i64* %20, align 8
  %265 = call i32 @mkprime(i32** %259, i32* %260, i32 %261, i32 %262, i32* %263, i64 %264)
  %266 = load i32*, i32** %22, align 8
  %267 = call i32 @br_i15_rshift(i32* %266, i32 1)
  %268 = load i32*, i32** %23, align 8
  %269 = load i32*, i32** %22, align 8
  %270 = load i32, i32* %15, align 4
  %271 = load i32*, i32** %23, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  %273 = load i64, i64* %19, align 8
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  %275 = call i64 @invert_pubexp(i32* %268, i32* %269, i32 %270, i32* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %302

277:                                              ; preds = %258
  %278 = load i32*, i32** %22, align 8
  %279 = load i32*, i32** %22, align 8
  %280 = call i32 @br_i15_add(i32* %278, i32* %279, i32 1)
  %281 = load i32*, i32** %22, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, 1
  store i32 %284, i32* %282, align 4
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 3
  %287 = load i32*, i32** %286, align 8
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = load i32*, i32** %22, align 8
  %293 = call i32 @br_i15_encode(i32* %287, i64 %291, i32* %292)
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 7
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 8
  %299 = load i64, i64* %298, align 8
  %300 = load i32*, i32** %23, align 8
  %301 = call i32 @br_i15_encode(i32* %296, i64 %299, i32* %300)
  br label %303

302:                                              ; preds = %258
  br label %258

303:                                              ; preds = %277
  %304 = load i32, i32* %16, align 4
  %305 = load i32, i32* %17, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %341

307:                                              ; preds = %303
  %308 = load i32*, i32** %21, align 8
  %309 = load i32*, i32** %22, align 8
  %310 = call i32 @br_i15_sub(i32* %308, i32* %309, i32 0)
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %312, label %341

312:                                              ; preds = %307
  %313 = load i32*, i32** %21, align 8
  %314 = load i32*, i32** %22, align 8
  %315 = load i64, i64* %18, align 8
  %316 = add i64 1, %315
  %317 = mul i64 %316, 4
  %318 = trunc i64 %317 to i32
  %319 = call i32 @bufswap(i32* %313, i32* %314, i32 %318)
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 3
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @bufswap(i32* %322, i32* %325, i32 %328)
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 5
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 7
  %335 = load i32*, i32** %334, align 8
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 6
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i32 @bufswap(i32* %332, i32* %335, i32 %339)
  br label %341

341:                                              ; preds = %312, %307, %303
  %342 = load i32*, i32** %21, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32*, i32** %22, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  store i32 %344, i32* %346, align 4
  %347 = load i64, i64* %18, align 8
  %348 = load i64, i64* %19, align 8
  %349 = icmp ugt i64 %347, %348
  br i1 %349, label %350, label %358

350:                                              ; preds = %341
  %351 = load i32*, i32** %22, align 8
  %352 = load i64, i64* %18, align 8
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  store i32 0, i32* %353, align 4
  %354 = load i32*, i32** %23, align 8
  %355 = getelementptr inbounds i32, i32* %354, i32 1
  store i32* %355, i32** %23, align 8
  %356 = load i64, i64* %20, align 8
  %357 = add i64 %356, -1
  store i64 %357, i64* %20, align 8
  br label %358

358:                                              ; preds = %350, %341
  %359 = load i32*, i32** %23, align 8
  %360 = load i32*, i32** %21, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @br_i15_zero(i32* %359, i32 %362)
  %364 = load i32*, i32** %23, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 1
  store i32 1, i32* %365, align 4
  %366 = load i32*, i32** %23, align 8
  %367 = load i32*, i32** %22, align 8
  %368 = load i32*, i32** %21, align 8
  %369 = load i32*, i32** %21, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @br_i15_ninv15(i32 %371)
  %373 = load i32*, i32** %23, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 1
  %375 = load i64, i64* %18, align 8
  %376 = getelementptr inbounds i32, i32* %374, i64 %375
  %377 = call i32 @br_i15_moddiv(i32* %366, i32* %367, i32* %368, i32 %372, i32* %376)
  store i32 %377, i32* %26, align 4
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 9
  %380 = load i32*, i32** %379, align 8
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 10
  %383 = load i64, i64* %382, align 8
  %384 = load i32*, i32** %23, align 8
  %385 = call i32 @br_i15_encode(i32* %380, i64 %383, i32* %384)
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %387 = icmp ne %struct.TYPE_5__* %386, null
  br i1 %387, label %388, label %408

388:                                              ; preds = %358
  %389 = load i32*, i32** %23, align 8
  %390 = load i32*, i32** %21, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @br_i15_zero(i32* %389, i32 %392)
  %394 = load i32*, i32** %23, align 8
  %395 = load i32*, i32** %21, align 8
  %396 = load i32*, i32** %22, align 8
  %397 = call i32 @br_i15_mulacc(i32* %394, i32* %395, i32* %396)
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 0
  %400 = load i64*, i64** %399, align 8
  %401 = bitcast i64* %400 to i32*
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = zext i32 %404 to i64
  %406 = load i32*, i32** %23, align 8
  %407 = call i32 @br_i15_encode(i32* %401, i64 %405, i32* %406)
  br label %408

408:                                              ; preds = %388, %358
  %409 = load i32, i32* %26, align 4
  store i32 %409, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %410

410:                                              ; preds = %408, %51, %39
  %411 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %411)
  %412 = load i32, i32* %8, align 4
  ret i32 %412
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @br_enc32be(i64*, i32) #2

declare dso_local i32 @MUL15(i32, i32) #2

declare dso_local i32 @mkprime(i32**, i32*, i32, i32, i32*, i64) #2

declare dso_local i32 @br_i15_rshift(i32*, i32) #2

declare dso_local i64 @invert_pubexp(i32*, i32*, i32, i32*) #2

declare dso_local i32 @br_i15_add(i32*, i32*, i32) #2

declare dso_local i32 @br_i15_encode(i32*, i64, i32*) #2

declare dso_local i32 @br_i15_sub(i32*, i32*, i32) #2

declare dso_local i32 @bufswap(i32*, i32*, i32) #2

declare dso_local i32 @br_i15_zero(i32*, i32) #2

declare dso_local i32 @br_i15_moddiv(i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @br_i15_ninv15(i32) #2

declare dso_local i32 @br_i15_mulacc(i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
