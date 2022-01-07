; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_mult.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.algorithm = type { i32 }

@const0_rtx = common dso_local global i64 0, align 8
@const1_rtx = common dso_local global i64 0, align 8
@constm1_rtx = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@flag_trapv = common dso_local global i64 0, align 8
@negv_optab = common dso_local global i32 0, align 4
@neg_optab = common dso_local global i32 0, align 4
@LAST_VIRTUAL_REGISTER = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@neg_cost = common dso_local global i32* null, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@dconst2 = common dso_local global i32 0, align 4
@add_optab = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@smulv_optab = common dso_local global i32 0, align 4
@smul_optab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @expand_mult(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.algorithm, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @const0_rtx, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* @const0_rtx, align 8
  store i64 %25, i64* %6, align 8
  br label %272

26:                                               ; preds = %5
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @const1_rtx, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %6, align 8
  br label %272

32:                                               ; preds = %26
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @constm1_rtx, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @GET_MODE_CLASS(i32 %38)
  %40 = load i64, i64* @MODE_INT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @flag_trapv, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @negv_optab, align 4
  br label %52

50:                                               ; preds = %45, %42, %36
  %51 = load i32, i32* @neg_optab, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @expand_unop(i32 %37, i32 %53, i64 %54, i64 %55, i32 0)
  store i64 %56, i64* %6, align 8
  br label %272

57:                                               ; preds = %32
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @SCALAR_INT_MODE_P(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %205

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* @flag_trapv, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %205, label %67

67:                                               ; preds = %64, %61
  store i64 0, i64* %15, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i64, i64* @LAST_VIRTUAL_REGISTER, align 8
  %70 = add nsw i64 %69, 1
  %71 = call i64 @gen_raw_REG(i32 %68, i64 %70)
  store i64 %71, i64* %16, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @GET_CODE(i64 %72)
  %74 = load i64, i64* @CONST_INT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %127

76:                                               ; preds = %67
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @INTVAL(i64 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %123

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @GET_MODE_BITSIZE(i32 %81)
  %83 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %123

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @gen_rtx_MULT(i32 %86, i64 %87, i64 %88)
  %90 = load i32, i32* @SET, align 4
  %91 = call i32 @rtx_cost(i32 %89, i32 %90)
  %92 = load i32*, i32** @neg_cost, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %91, %96
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %85
  %101 = load i32, i32* %7, align 4
  %102 = load i64, i64* %9, align 8
  %103 = call i64 @INTVAL(i64 %102)
  %104 = sub nsw i64 0, %103
  %105 = load i32, i32* %14, align 4
  %106 = call i64 @choose_mult_variant(i32 %101, i64 %104, %struct.algorithm* %13, i32* %12, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %100
  %109 = load i32, i32* %7, align 4
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i64 @INTVAL(i64 %111)
  %113 = sub nsw i64 0, %112
  %114 = load i64, i64* @NULL_RTX, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i64 @expand_mult_const(i32 %109, i64 %110, i64 %113, i64 %114, %struct.algorithm* %13, i32 %115)
  store i64 %116, i64* %17, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @neg_optab, align 4
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i64 @expand_unop(i32 %117, i32 %118, i64 %119, i64 %120, i32 0)
  store i64 %121, i64* %6, align 8
  br label %272

122:                                              ; preds = %100, %85
  br label %126

123:                                              ; preds = %80, %76
  %124 = load i64, i64* %9, align 8
  %125 = call i64 @INTVAL(i64 %124)
  store i64 %125, i64* %15, align 8
  br label %126

126:                                              ; preds = %123, %122
  br label %166

127:                                              ; preds = %67
  %128 = load i64, i64* %9, align 8
  %129 = call i64 @GET_CODE(i64 %128)
  %130 = load i64, i64* @CONST_DOUBLE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %127
  %133 = load i64, i64* %9, align 8
  %134 = call i64 @CONST_DOUBLE_HIGH(i64 %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i64, i64* %9, align 8
  %138 = call i64 @CONST_DOUBLE_LOW(i64 %137)
  store i64 %138, i64* %15, align 8
  br label %164

139:                                              ; preds = %132
  %140 = load i64, i64* %9, align 8
  %141 = call i64 @CONST_DOUBLE_LOW(i64 %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %139
  %144 = load i64, i64* %9, align 8
  %145 = call i64 @CONST_DOUBLE_HIGH(i64 %144)
  %146 = call i64 @EXACT_POWER_OF_2_OR_ZERO_P(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = load i64, i64* %9, align 8
  %150 = call i64 @CONST_DOUBLE_HIGH(i64 %149)
  %151 = call i32 @floor_log2(i64 %150)
  %152 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %153 = add nsw i32 %151, %152
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* @LSHIFT_EXPR, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i64, i64* %8, align 8
  %157 = load i32, i32* @NULL_TREE, align 4
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @build_int_cst(i32 %157, i32 %158)
  %160 = load i64, i64* %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i64 @expand_shift(i32 %154, i32 %155, i64 %156, i32 %159, i64 %160, i32 %161)
  store i64 %162, i64* %6, align 8
  br label %272

163:                                              ; preds = %143, %139
  br label %164

164:                                              ; preds = %163, %136
  br label %165

165:                                              ; preds = %164, %127
  br label %166

166:                                              ; preds = %165, %126
  %167 = load i64, i64* %15, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %204

169:                                              ; preds = %166
  %170 = load i64, i64* %15, align 8
  %171 = call i64 @EXACT_POWER_OF_2_OR_ZERO_P(i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %169
  %174 = load i32, i32* @LSHIFT_EXPR, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i64, i64* %8, align 8
  %177 = load i32, i32* @NULL_TREE, align 4
  %178 = load i64, i64* %15, align 8
  %179 = call i32 @floor_log2(i64 %178)
  %180 = call i32 @build_int_cst(i32 %177, i32 %179)
  %181 = load i64, i64* %10, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i64 @expand_shift(i32 %174, i32 %175, i64 %176, i32 %180, i64 %181, i32 %182)
  store i64 %183, i64* %6, align 8
  br label %272

184:                                              ; preds = %169
  %185 = load i32, i32* %7, align 4
  %186 = load i64, i64* %16, align 8
  %187 = load i64, i64* %9, align 8
  %188 = call i32 @gen_rtx_MULT(i32 %185, i64 %186, i64 %187)
  %189 = load i32, i32* @SET, align 4
  %190 = call i32 @rtx_cost(i32 %188, i32 %189)
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load i64, i64* %15, align 8
  %193 = load i32, i32* %14, align 4
  %194 = call i64 @choose_mult_variant(i32 %191, i64 %192, %struct.algorithm* %13, i32* %12, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %184
  %197 = load i32, i32* %7, align 4
  %198 = load i64, i64* %8, align 8
  %199 = load i64, i64* %15, align 8
  %200 = load i64, i64* %10, align 8
  %201 = load i32, i32* %12, align 4
  %202 = call i64 @expand_mult_const(i32 %197, i64 %198, i64 %199, i64 %200, %struct.algorithm* %13, i32 %201)
  store i64 %202, i64* %6, align 8
  br label %272

203:                                              ; preds = %184
  br label %204

204:                                              ; preds = %203, %166
  br label %205

205:                                              ; preds = %204, %64, %57
  %206 = load i64, i64* %8, align 8
  %207 = call i64 @GET_CODE(i64 %206)
  %208 = load i64, i64* @CONST_DOUBLE, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load i64, i64* %8, align 8
  store i64 %211, i64* %19, align 8
  %212 = load i64, i64* %9, align 8
  store i64 %212, i64* %8, align 8
  %213 = load i64, i64* %19, align 8
  store i64 %213, i64* %9, align 8
  br label %214

214:                                              ; preds = %210, %205
  %215 = load i64, i64* %9, align 8
  %216 = call i64 @GET_CODE(i64 %215)
  %217 = load i64, i64* @CONST_DOUBLE, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %245

219:                                              ; preds = %214
  %220 = load i32, i32* %7, align 4
  %221 = call i64 @SCALAR_FLOAT_MODE_P(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %245

223:                                              ; preds = %219
  %224 = load i32, i32* %20, align 4
  %225 = load i64, i64* %9, align 8
  %226 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %224, i64 %225)
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* @dconst2, align 4
  %229 = call i64 @REAL_VALUES_EQUAL(i32 %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %223
  %232 = load i64, i64* %8, align 8
  %233 = call i32 @GET_MODE(i64 %232)
  %234 = load i64, i64* %8, align 8
  %235 = call i64 @force_reg(i32 %233, i64 %234)
  store i64 %235, i64* %8, align 8
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @add_optab, align 4
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* %8, align 8
  %240 = load i64, i64* %10, align 8
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %243 = call i64 @expand_binop(i32 %236, i32 %237, i64 %238, i64 %239, i64 %240, i32 %241, i32 %242)
  store i64 %243, i64* %6, align 8
  br label %272

244:                                              ; preds = %223
  br label %245

245:                                              ; preds = %244, %219, %214
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* %11, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %259, label %249

249:                                              ; preds = %245
  %250 = load i64, i64* @flag_trapv, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %249
  %253 = load i32, i32* %7, align 4
  %254 = call i64 @GET_MODE_CLASS(i32 %253)
  %255 = load i64, i64* @MODE_INT, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = load i32, i32* @smulv_optab, align 4
  br label %261

259:                                              ; preds = %252, %249, %245
  %260 = load i32, i32* @smul_optab, align 4
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i32 [ %258, %257 ], [ %260, %259 ]
  %263 = load i64, i64* %8, align 8
  %264 = load i64, i64* %9, align 8
  %265 = load i64, i64* %10, align 8
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %268 = call i64 @expand_binop(i32 %246, i32 %262, i64 %263, i64 %264, i64 %265, i32 %266, i32 %267)
  store i64 %268, i64* %8, align 8
  %269 = load i64, i64* %8, align 8
  %270 = call i32 @gcc_assert(i64 %269)
  %271 = load i64, i64* %8, align 8
  store i64 %271, i64* %6, align 8
  br label %272

272:                                              ; preds = %261, %231, %196, %173, %148, %108, %52, %30, %24
  %273 = load i64, i64* %6, align 8
  ret i64 %273
}

declare dso_local i64 @expand_unop(i32, i32, i64, i64, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @SCALAR_INT_MODE_P(i32) #1

declare dso_local i64 @gen_raw_REG(i32, i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @rtx_cost(i32, i32) #1

declare dso_local i32 @gen_rtx_MULT(i32, i64, i64) #1

declare dso_local i64 @choose_mult_variant(i32, i64, %struct.algorithm*, i32*, i32) #1

declare dso_local i64 @expand_mult_const(i32, i64, i64, i64, %struct.algorithm*, i32) #1

declare dso_local i64 @CONST_DOUBLE_HIGH(i64) #1

declare dso_local i64 @CONST_DOUBLE_LOW(i64) #1

declare dso_local i64 @EXACT_POWER_OF_2_OR_ZERO_P(i64) #1

declare dso_local i32 @floor_log2(i64) #1

declare dso_local i64 @expand_shift(i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i64) #1

declare dso_local i64 @REAL_VALUES_EQUAL(i32, i32) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @gcc_assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
