; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_mult_highpart_optab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_mult_highpart_optab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@mul_highpart_cost = common dso_local global i32* null, align 8
@umul_highpart_optab = common dso_local global %struct.TYPE_10__* null, align 8
@smul_highpart_optab = common dso_local global %struct.TYPE_10__* null, align 8
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i32 0, align 4
@shift_cost = common dso_local global i32** null, align 8
@add_cost = common dso_local global i32* null, align 8
@umul_widen_optab = common dso_local global %struct.TYPE_10__* null, align 8
@smul_widen_optab = common dso_local global %struct.TYPE_10__* null, align 8
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@mul_widen_cost = common dso_local global i32* null, align 8
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@smul_optab = common dso_local global %struct.TYPE_10__* null, align 8
@mul_cost = common dso_local global i32* null, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64, i32, i32)* @expand_mult_highpart_optab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_mult_highpart_optab(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @INTVAL(i64 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @gen_int_mode(i32 %23, i32 %24)
  store i64 %25, i64* %14, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @SCALAR_FLOAT_MODE_P(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @GET_MODE_WIDER_MODE(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @GET_MODE_BITSIZE(i32 %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32*, i32** @mul_highpart_cost, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %6
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** @umul_highpart_optab, align 8
  br label %50

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smul_highpart_optab, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi %struct.TYPE_10__* [ %47, %46 ], [ %49, %48 ]
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %16, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @OPTAB_DIRECT, align 4
  %59 = call i64 @expand_binop(i32 %52, %struct.TYPE_10__* %53, i64 %54, i64 %55, i64 %56, i32 %57, i32 %58)
  store i64 %59, i64* %17, align 8
  %60 = load i64, i64* %17, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i64, i64* %17, align 8
  store i64 %63, i64* %7, align 8
  br label %310

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %6
  %66 = load i32, i32* %18, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* @BITS_PER_WORD, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %125

70:                                               ; preds = %65
  %71 = load i32*, i32** @mul_highpart_cost, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32**, i32*** @shift_cost, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 2, %85
  %87 = add nsw i32 %75, %86
  %88 = load i32*, i32** @add_cost, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 4, %92
  %94 = add nsw i32 %87, %93
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %70
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smul_highpart_optab, align 8
  br label %104

102:                                              ; preds = %97
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @umul_highpart_optab, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi %struct.TYPE_10__* [ %101, %100 ], [ %103, %102 ]
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %16, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @OPTAB_DIRECT, align 4
  %113 = call i64 @expand_binop(i32 %106, %struct.TYPE_10__* %107, i64 %108, i64 %109, i64 %110, i32 %111, i32 %112)
  store i64 %113, i64* %17, align 8
  %114 = load i64, i64* %17, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %104
  %117 = load i32, i32* %8, align 4
  %118 = load i64, i64* %17, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %17, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @expand_mult_highpart_adjust(i32 %117, i64 %118, i64 %119, i64 %120, i64 %121, i32 %122)
  store i64 %123, i64* %7, align 8
  br label %310

124:                                              ; preds = %104
  br label %125

125:                                              ; preds = %124, %70, %65
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** @umul_widen_optab, align 8
  br label %132

130:                                              ; preds = %125
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smul_widen_optab, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi %struct.TYPE_10__* [ %129, %128 ], [ %131, %130 ]
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %16, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @CODE_FOR_nothing, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %167

144:                                              ; preds = %132
  %145 = load i32*, i32** @mul_widen_cost, align 8
  %146 = load i32, i32* %15, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %144
  %153 = load i32, i32* %15, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* %14, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @OPTAB_WIDEN, align 4
  %159 = call i64 @expand_binop(i32 %153, %struct.TYPE_10__* %154, i64 %155, i64 %156, i64 0, i32 %157, i32 %158)
  store i64 %159, i64* %17, align 8
  %160 = load i64, i64* %17, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load i32, i32* %8, align 4
  %164 = load i64, i64* %17, align 8
  %165 = call i64 @extract_high_half(i32 %163, i64 %164)
  store i64 %165, i64* %7, align 8
  br label %310

166:                                              ; preds = %152
  br label %167

167:                                              ; preds = %166, %144, %132
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smul_optab, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @CODE_FOR_nothing, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %232

178:                                              ; preds = %167
  %179 = load i32, i32* %18, align 4
  %180 = sub nsw i32 %179, 1
  %181 = load i32, i32* @BITS_PER_WORD, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %232

183:                                              ; preds = %178
  %184 = load i32*, i32** @mul_cost, align 8
  %185 = load i32, i32* %15, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32**, i32*** @shift_cost, align 8
  %190 = load i32, i32* %8, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %18, align 4
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %188, %198
  %200 = load i32, i32* %13, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %232

202:                                              ; preds = %183
  %203 = call i32 (...) @start_sequence()
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i64, i64* %9, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i64 @convert_modes(i32 %204, i32 %205, i64 %206, i32 %207)
  store i64 %208, i64* %20, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %8, align 4
  %211 = load i64, i64* %10, align 8
  %212 = load i32, i32* %12, align 4
  %213 = call i64 @convert_modes(i32 %209, i32 %210, i64 %211, i32 %212)
  store i64 %213, i64* %21, align 8
  %214 = load i32, i32* %15, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smul_optab, align 8
  %216 = load i64, i64* %20, align 8
  %217 = load i64, i64* %21, align 8
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @OPTAB_WIDEN, align 4
  %220 = call i64 @expand_binop(i32 %214, %struct.TYPE_10__* %215, i64 %216, i64 %217, i64 0, i32 %218, i32 %219)
  store i64 %220, i64* %17, align 8
  %221 = call i64 (...) @get_insns()
  store i64 %221, i64* %19, align 8
  %222 = call i32 (...) @end_sequence()
  %223 = load i64, i64* %17, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %202
  %226 = load i64, i64* %19, align 8
  %227 = call i32 @emit_insn(i64 %226)
  %228 = load i32, i32* %8, align 4
  %229 = load i64, i64* %17, align 8
  %230 = call i64 @extract_high_half(i32 %228, i64 %229)
  store i64 %230, i64* %7, align 8
  br label %310

231:                                              ; preds = %202
  br label %232

232:                                              ; preds = %231, %183, %178, %167
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smul_widen_optab, align 8
  br label %239

237:                                              ; preds = %232
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** @umul_widen_optab, align 8
  br label %239

239:                                              ; preds = %237, %235
  %240 = phi %struct.TYPE_10__* [ %236, %235 ], [ %238, %237 ]
  store %struct.TYPE_10__* %240, %struct.TYPE_10__** %16, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = load i32, i32* %15, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @CODE_FOR_nothing, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %309

251:                                              ; preds = %239
  %252 = load i32, i32* %18, align 4
  %253 = sub nsw i32 %252, 1
  %254 = load i32, i32* @BITS_PER_WORD, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %309

256:                                              ; preds = %251
  %257 = load i32*, i32** @mul_widen_cost, align 8
  %258 = load i32, i32* %15, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32**, i32*** @shift_cost, align 8
  %263 = load i32, i32* %8, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %18, align 4
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = mul nsw i32 2, %271
  %273 = add nsw i32 %261, %272
  %274 = load i32*, i32** @add_cost, align 8
  %275 = load i32, i32* %8, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 4, %278
  %280 = add nsw i32 %273, %279
  %281 = load i32, i32* %13, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %309

283:                                              ; preds = %256
  %284 = load i32, i32* %15, align 4
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %286 = load i64, i64* %9, align 8
  %287 = load i64, i64* %14, align 8
  %288 = load i64, i64* @NULL_RTX, align 8
  %289 = load i32, i32* %12, align 4
  %290 = icmp ne i32 %289, 0
  %291 = xor i1 %290, true
  %292 = zext i1 %291 to i32
  %293 = load i32, i32* @OPTAB_WIDEN, align 4
  %294 = call i64 @expand_binop(i32 %284, %struct.TYPE_10__* %285, i64 %286, i64 %287, i64 %288, i32 %292, i32 %293)
  store i64 %294, i64* %17, align 8
  %295 = load i64, i64* %17, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %283
  %298 = load i32, i32* %8, align 4
  %299 = load i64, i64* %17, align 8
  %300 = call i64 @extract_high_half(i32 %298, i64 %299)
  store i64 %300, i64* %17, align 8
  %301 = load i32, i32* %8, align 4
  %302 = load i64, i64* %17, align 8
  %303 = load i64, i64* %9, align 8
  %304 = load i64, i64* %14, align 8
  %305 = load i64, i64* %11, align 8
  %306 = load i32, i32* %12, align 4
  %307 = call i64 @expand_mult_highpart_adjust(i32 %301, i64 %302, i64 %303, i64 %304, i64 %305, i32 %306)
  store i64 %307, i64* %7, align 8
  br label %310

308:                                              ; preds = %283
  br label %309

309:                                              ; preds = %308, %256, %251, %239
  store i64 0, i64* %7, align 8
  br label %310

310:                                              ; preds = %309, %297, %225, %162, %116, %62
  %311 = load i64, i64* %7, align 8
  ret i64 %311
}

declare dso_local i64 @gen_int_mode(i32, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @expand_binop(i32, %struct.TYPE_10__*, i64, i64, i64, i32, i32) #1

declare dso_local i64 @expand_mult_highpart_adjust(i32, i64, i64, i64, i64, i32) #1

declare dso_local i64 @extract_high_half(i32, i64) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @convert_modes(i32, i32, i64, i32) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_insn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
