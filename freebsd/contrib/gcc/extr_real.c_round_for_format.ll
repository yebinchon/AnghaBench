; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_round_for_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_round_for_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i64*, i32, i64 }

@DFmode = common dso_local global i32 0, align 4
@SIGNIFICAND_BITS = common dso_local global i32 0, align 4
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@SIG_MSB = common dso_local global i64 0, align 8
@SIGSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, %struct.TYPE_20__*)* @round_for_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @round_for_format(%struct.real_format* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.real_format*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca i32, align 4
  store %struct.real_format* %0, %struct.real_format** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.real_format*, %struct.real_format** %3, align 8
  %24 = getelementptr inbounds %struct.real_format, %struct.real_format* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.real_format*, %struct.real_format** %3, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = call i32 @decimal_round_for_format(%struct.real_format* %28, %struct.TYPE_20__* %29)
  br label %322

31:                                               ; preds = %22
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %33 = load i32, i32* @DFmode, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = call i32 @decimal_real_convert(%struct.TYPE_20__* %32, i32 %33, %struct.TYPE_20__* %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load %struct.real_format*, %struct.real_format** %3, align 8
  %38 = getelementptr inbounds %struct.real_format, %struct.real_format* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.real_format*, %struct.real_format** %3, align 8
  %41 = getelementptr inbounds %struct.real_format, %struct.real_format* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  store i32 %43, i32* %5, align 4
  %44 = load %struct.real_format*, %struct.real_format** %3, align 8
  %45 = getelementptr inbounds %struct.real_format, %struct.real_format* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.real_format*, %struct.real_format** %3, align 8
  %49 = getelementptr inbounds %struct.real_format, %struct.real_format* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.real_format*, %struct.real_format** %3, align 8
  %53 = getelementptr inbounds %struct.real_format, %struct.real_format* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.real_format*, %struct.real_format** %3, align 8
  %56 = getelementptr inbounds %struct.real_format, %struct.real_format* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @SIGNIFICAND_BITS, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %92 [
    i32 128, label %71
    i32 131, label %86
    i32 130, label %87
    i32 129, label %91
  ]

65:                                               ; preds = %317, %170, %159
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @get_zero(%struct.TYPE_20__* %66, i32 %69)
  br label %71

71:                                               ; preds = %36, %65
  %72 = load %struct.real_format*, %struct.real_format** %3, align 8
  %73 = getelementptr inbounds %struct.real_format, %struct.real_format* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71
  br label %322

80:                                               ; preds = %307, %263, %143
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @get_inf(%struct.TYPE_20__* %81, i32 %84)
  br label %86

86:                                               ; preds = %36, %80
  br label %322

87:                                               ; preds = %36
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @clear_significand_below(%struct.TYPE_20__* %88, i32 %89)
  br label %322

91:                                               ; preds = %36
  br label %94

92:                                               ; preds = %36
  %93 = call i32 (...) @gcc_unreachable()
  br label %94

94:                                               ; preds = %92, %91
  %95 = load %struct.real_format*, %struct.real_format** %3, align 8
  %96 = getelementptr inbounds %struct.real_format, %struct.real_format* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %99, label %138

99:                                               ; preds = %94
  %100 = load %struct.real_format*, %struct.real_format** %3, align 8
  %101 = getelementptr inbounds %struct.real_format, %struct.real_format* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 10
  %104 = zext i1 %103 to i32
  %105 = call i32 @gcc_assert(i32 %104)
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %107 = call i32 @REAL_EXP(%struct.TYPE_20__* %106)
  %108 = load %struct.real_format*, %struct.real_format** %3, align 8
  %109 = getelementptr inbounds %struct.real_format, %struct.real_format* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %107, %111
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %137

115:                                              ; preds = %99
  %116 = load %struct.real_format*, %struct.real_format** %3, align 8
  %117 = getelementptr inbounds %struct.real_format, %struct.real_format* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %14, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* %14, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i64 @sticky_rshift_significand(%struct.TYPE_20__* %121, %struct.TYPE_20__* %122, i32 %123)
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = or i64 %129, %124
  store i64 %130, i64* %128, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = call i32 @REAL_EXP(%struct.TYPE_20__* %132)
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %133, %134
  %136 = call i32 @SET_REAL_EXP(%struct.TYPE_20__* %131, i32 %135)
  br label %137

137:                                              ; preds = %115, %99
  br label %138

138:                                              ; preds = %137, %94
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = call i32 @REAL_EXP(%struct.TYPE_20__* %139)
  %141 = load i32, i32* %13, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %80

144:                                              ; preds = %138
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %146 = call i32 @REAL_EXP(%struct.TYPE_20__* %145)
  %147 = load i32, i32* %12, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %189

149:                                              ; preds = %144
  %150 = load %struct.real_format*, %struct.real_format** %3, align 8
  %151 = getelementptr inbounds %struct.real_format, %struct.real_format* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = call i32 @REAL_EXP(%struct.TYPE_20__* %155)
  %157 = load i32, i32* %12, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %65

160:                                              ; preds = %154
  br label %188

161:                                              ; preds = %149
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %164 = call i32 @REAL_EXP(%struct.TYPE_20__* %163)
  %165 = sub nsw i32 %162, %164
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %65

171:                                              ; preds = %161
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %174 = load i32, i32* %15, align 4
  %175 = call i64 @sticky_rshift_significand(%struct.TYPE_20__* %172, %struct.TYPE_20__* %173, i32 %174)
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = or i64 %180, %175
  store i64 %181, i64* %179, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %184 = call i32 @REAL_EXP(%struct.TYPE_20__* %183)
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %184, %185
  %187 = call i32 @SET_REAL_EXP(%struct.TYPE_20__* %182, i32 %186)
  br label %188

188:                                              ; preds = %171, %160
  br label %189

189:                                              ; preds = %188, %144
  br label %190

190:                                              ; preds = %189
  store i64 0, i64* %9, align 8
  store i32 0, i32* %7, align 4
  %191 = load i32, i32* %6, align 4
  %192 = sub nsw i32 %191, 1
  %193 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %194 = sdiv i32 %192, %193
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %209, %190
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %212

199:                                              ; preds = %195
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %9, align 8
  %208 = or i64 %207, %206
  store i64 %208, i64* %9, align 8
  br label %209

209:                                              ; preds = %199
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %195

212:                                              ; preds = %195
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 1
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sub nsw i32 %220, 1
  %222 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %223 = srem i32 %221, %222
  %224 = zext i32 %223 to i64
  %225 = shl i64 1, %224
  %226 = sub i64 %225, 1
  %227 = and i64 %219, %226
  %228 = load i64, i64* %9, align 8
  %229 = or i64 %228, %227
  store i64 %229, i64* %9, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sub nsw i32 %231, 1
  %233 = call i32 @test_significand_bit(%struct.TYPE_20__* %230, i32 %232)
  store i32 %233, i32* %10, align 4
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @test_significand_bit(%struct.TYPE_20__* %234, i32 %235)
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %312

239:                                              ; preds = %212
  %240 = load i64, i64* %9, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %11, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %312

245:                                              ; preds = %242, %239
  %246 = call i32 @get_zero(%struct.TYPE_20__* %16, i32 0)
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @set_significand_bit(%struct.TYPE_20__* %16, i32 %247)
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %251 = call i64 @add_significands(%struct.TYPE_20__* %249, %struct.TYPE_20__* %250, %struct.TYPE_20__* %16)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %311

253:                                              ; preds = %245
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %256 = call i32 @REAL_EXP(%struct.TYPE_20__* %255)
  %257 = add nsw i32 %256, 1
  %258 = call i32 @SET_REAL_EXP(%struct.TYPE_20__* %254, i32 %257)
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %260 = call i32 @REAL_EXP(%struct.TYPE_20__* %259)
  %261 = load i32, i32* %13, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %253
  br label %80

264:                                              ; preds = %253
  %265 = load i64, i64* @SIG_MSB, align 8
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 1
  %268 = load i64*, i64** %267, align 8
  %269 = load i32, i32* @SIGSZ, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %268, i64 %271
  store i64 %265, i64* %272, align 8
  %273 = load %struct.real_format*, %struct.real_format** %3, align 8
  %274 = getelementptr inbounds %struct.real_format, %struct.real_format* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 1
  br i1 %276, label %277, label %310

277:                                              ; preds = %264
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %279 = call i32 @REAL_EXP(%struct.TYPE_20__* %278)
  %280 = load %struct.real_format*, %struct.real_format** %3, align 8
  %281 = getelementptr inbounds %struct.real_format, %struct.real_format* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 %282, 1
  %284 = and i32 %279, %283
  store i32 %284, i32* %17, align 4
  %285 = load i32, i32* %17, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %309

287:                                              ; preds = %277
  %288 = load %struct.real_format*, %struct.real_format** %3, align 8
  %289 = getelementptr inbounds %struct.real_format, %struct.real_format* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %17, align 4
  %292 = sub nsw i32 %290, %291
  store i32 %292, i32* %17, align 4
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %295 = load i32, i32* %17, align 4
  %296 = call i32 @rshift_significand(%struct.TYPE_20__* %293, %struct.TYPE_20__* %294, i32 %295)
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %299 = call i32 @REAL_EXP(%struct.TYPE_20__* %298)
  %300 = load i32, i32* %17, align 4
  %301 = add nsw i32 %299, %300
  %302 = call i32 @SET_REAL_EXP(%struct.TYPE_20__* %297, i32 %301)
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %304 = call i32 @REAL_EXP(%struct.TYPE_20__* %303)
  %305 = load i32, i32* %13, align 4
  %306 = icmp sgt i32 %304, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %287
  br label %80

308:                                              ; preds = %287
  br label %309

309:                                              ; preds = %308, %277
  br label %310

310:                                              ; preds = %309, %264
  br label %311

311:                                              ; preds = %310, %245
  br label %312

312:                                              ; preds = %311, %242, %212
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %314 = call i32 @REAL_EXP(%struct.TYPE_20__* %313)
  %315 = load i32, i32* %12, align 4
  %316 = icmp sle i32 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  br label %65

318:                                              ; preds = %312
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %320 = load i32, i32* %6, align 4
  %321 = call i32 @clear_significand_below(%struct.TYPE_20__* %319, i32 %320)
  br label %322

322:                                              ; preds = %318, %87, %86, %79, %27
  ret void
}

declare dso_local i32 @decimal_round_for_format(%struct.real_format*, %struct.TYPE_20__*) #1

declare dso_local i32 @decimal_real_convert(%struct.TYPE_20__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @get_zero(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @get_inf(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @clear_significand_below(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @REAL_EXP(%struct.TYPE_20__*) #1

declare dso_local i64 @sticky_rshift_significand(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @SET_REAL_EXP(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @test_significand_bit(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @set_significand_bit(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @add_significands(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @rshift_significand(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
