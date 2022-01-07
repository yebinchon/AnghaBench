; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_decode_ieee_quad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_decode_ieee_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64*, i64, i8* }

@FLOAT_WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@rvc_normal = common dso_local global i8* null, align 8
@SIGNIFICAND_BITS = common dso_local global i32 0, align 4
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@rvc_nan = common dso_local global i8* null, align 8
@rvc_inf = common dso_local global i8* null, align 8
@SIG_MSB = common dso_local global i64 0, align 8
@SIGSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, %struct.TYPE_8__*, i64*)* @decode_ieee_quad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ieee_quad(%struct.real_format* %0, %struct.TYPE_8__* %1, i64* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load i64, i64* @FLOAT_WORDS_BIG_ENDIAN, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 3
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  br label %41

28:                                               ; preds = %3
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 3
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %28, %15
  %42 = load i64, i64* %10, align 8
  %43 = and i64 %42, 4294967295
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = and i64 %44, 4294967295
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = and i64 %46, 4294967295
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = lshr i64 %48, 31
  %50 = and i64 %49, 1
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load i64, i64* %7, align 8
  %53 = lshr i64 %52, 16
  %54 = and i64 %53, 32767
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load i64, i64* %7, align 8
  %57 = and i64 %56, 65535
  store i64 %57, i64* %7, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = call i32 @memset(%struct.TYPE_8__* %58, i32 0, i32 32)
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %144

62:                                               ; preds = %41
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* %9, align 8
  %67 = or i64 %65, %66
  %68 = load i64, i64* %10, align 8
  %69 = or i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %133

71:                                               ; preds = %62
  %72 = load %struct.real_format*, %struct.real_format** %4, align 8
  %73 = getelementptr inbounds %struct.real_format, %struct.real_format* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %133

76:                                               ; preds = %71
  %77 = load i8*, i8** @rvc_normal, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = load i32, i32* @SIGNIFICAND_BITS, align 4
  %85 = sub nsw i32 %84, 112
  %86 = add nsw i32 -16382, %85
  %87 = call i32 @SET_REAL_EXP(%struct.TYPE_8__* %83, i32 %86)
  %88 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %89 = icmp eq i32 %88, 32
  br i1 %89, label %90, label %111

90:                                               ; preds = %76
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  store i64 %91, i64* %95, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  store i64 %96, i64* %100, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 2
  store i64 %101, i64* %105, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 3
  store i64 %106, i64* %110, align 8
  br label %130

111:                                              ; preds = %76
  %112 = load i64, i64* %9, align 8
  %113 = shl i64 %112, 31
  %114 = shl i64 %113, 1
  %115 = load i64, i64* %10, align 8
  %116 = or i64 %114, %115
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  store i64 %116, i64* %120, align 8
  %121 = load i64, i64* %7, align 8
  %122 = shl i64 %121, 31
  %123 = shl i64 %122, 1
  %124 = load i64, i64* %8, align 8
  %125 = or i64 %123, %124
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  store i64 %125, i64* %129, align 8
  br label %130

130:                                              ; preds = %111, %90
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = call i32 @normalize(%struct.TYPE_8__* %131)
  br label %143

133:                                              ; preds = %71, %62
  %134 = load %struct.real_format*, %struct.real_format** %4, align 8
  %135 = getelementptr inbounds %struct.real_format, %struct.real_format* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %138, %133
  br label %143

143:                                              ; preds = %142, %130
  br label %309

144:                                              ; preds = %41
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, 32767
  br i1 %146, label %147, label %238

147:                                              ; preds = %144
  %148 = load %struct.real_format*, %struct.real_format** %4, align 8
  %149 = getelementptr inbounds %struct.real_format, %struct.real_format* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.real_format*, %struct.real_format** %4, align 8
  %154 = getelementptr inbounds %struct.real_format, %struct.real_format* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %238

157:                                              ; preds = %152, %147
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* %8, align 8
  %160 = or i64 %158, %159
  %161 = load i64, i64* %9, align 8
  %162 = or i64 %160, %161
  %163 = load i64, i64* %10, align 8
  %164 = or i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %230

166:                                              ; preds = %157
  %167 = load i8*, i8** @rvc_nan, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i64, i64* %7, align 8
  %174 = lshr i64 %173, 15
  %175 = and i64 %174, 1
  %176 = load %struct.real_format*, %struct.real_format** %4, align 8
  %177 = getelementptr inbounds %struct.real_format, %struct.real_format* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = xor i64 %175, %178
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i64 %179, i64* %181, align 8
  %182 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %183 = icmp eq i32 %182, 32
  br i1 %183, label %184, label %205

184:                                              ; preds = %166
  %185 = load i64, i64* %10, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 0
  store i64 %185, i64* %189, align 8
  %190 = load i64, i64* %9, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 1
  store i64 %190, i64* %194, align 8
  %195 = load i64, i64* %8, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 2
  store i64 %195, i64* %199, align 8
  %200 = load i64, i64* %7, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 3
  store i64 %200, i64* %204, align 8
  br label %224

205:                                              ; preds = %166
  %206 = load i64, i64* %9, align 8
  %207 = shl i64 %206, 31
  %208 = shl i64 %207, 1
  %209 = load i64, i64* %10, align 8
  %210 = or i64 %208, %209
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  store i64 %210, i64* %214, align 8
  %215 = load i64, i64* %7, align 8
  %216 = shl i64 %215, 31
  %217 = shl i64 %216, 1
  %218 = load i64, i64* %8, align 8
  %219 = or i64 %217, %218
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 1
  store i64 %219, i64* %223, align 8
  br label %224

224:                                              ; preds = %205, %184
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %227 = load i32, i32* @SIGNIFICAND_BITS, align 4
  %228 = sub nsw i32 %227, 113
  %229 = call i32 @lshift_significand(%struct.TYPE_8__* %225, %struct.TYPE_8__* %226, i32 %228)
  br label %237

230:                                              ; preds = %157
  %231 = load i8*, i8** @rvc_inf, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  %234 = load i32, i32* %11, align 4
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  br label %237

237:                                              ; preds = %230, %224
  br label %308

238:                                              ; preds = %152, %144
  %239 = load i8*, i8** @rvc_normal, align 8
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 3
  store i8* %239, i8** %241, align 8
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sub nsw i32 %246, 16383
  %248 = add nsw i32 %247, 1
  %249 = call i32 @SET_REAL_EXP(%struct.TYPE_8__* %245, i32 %248)
  %250 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %251 = icmp eq i32 %250, 32
  br i1 %251, label %252, label %273

252:                                              ; preds = %238
  %253 = load i64, i64* %10, align 8
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 0
  store i64 %253, i64* %257, align 8
  %258 = load i64, i64* %9, align 8
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  %261 = load i64*, i64** %260, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 1
  store i64 %258, i64* %262, align 8
  %263 = load i64, i64* %8, align 8
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 2
  store i64 %263, i64* %267, align 8
  %268 = load i64, i64* %7, align 8
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  %271 = load i64*, i64** %270, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 3
  store i64 %268, i64* %272, align 8
  br label %292

273:                                              ; preds = %238
  %274 = load i64, i64* %9, align 8
  %275 = shl i64 %274, 31
  %276 = shl i64 %275, 1
  %277 = load i64, i64* %10, align 8
  %278 = or i64 %276, %277
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = load i64*, i64** %280, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 0
  store i64 %278, i64* %282, align 8
  %283 = load i64, i64* %7, align 8
  %284 = shl i64 %283, 31
  %285 = shl i64 %284, 1
  %286 = load i64, i64* %8, align 8
  %287 = or i64 %285, %286
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 1
  %290 = load i64*, i64** %289, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 1
  store i64 %287, i64* %291, align 8
  br label %292

292:                                              ; preds = %273, %252
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %295 = load i32, i32* @SIGNIFICAND_BITS, align 4
  %296 = sub nsw i32 %295, 113
  %297 = call i32 @lshift_significand(%struct.TYPE_8__* %293, %struct.TYPE_8__* %294, i32 %296)
  %298 = load i64, i64* @SIG_MSB, align 8
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 1
  %301 = load i64*, i64** %300, align 8
  %302 = load i32, i32* @SIGSZ, align 4
  %303 = sub nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i64, i64* %301, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = or i64 %306, %298
  store i64 %307, i64* %305, align 8
  br label %308

308:                                              ; preds = %292, %237
  br label %309

309:                                              ; preds = %308, %143
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @SET_REAL_EXP(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @normalize(%struct.TYPE_8__*) #1

declare dso_local i32 @lshift_significand(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
