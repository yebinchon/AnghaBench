; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i64)* }

@ERROR_MARK = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@REALPART_EXPR = common dso_local global i32 0, align 4
@FLOAT_EXPR = common dso_local global i32 0, align 4
@REAL_CST = common dso_local global i32 0, align 4
@COMPLEX_EXPR = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i64 0, align 8
@IMAGPART_EXPR = common dso_local global i32 0, align 4
@VIEW_CONVERT_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fold_convert(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @TREE_TYPE(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %3, align 8
  br label %288

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @TREE_CODE(i64 %18)
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @ERROR_MARK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @TREE_CODE(i64 %24)
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @ERROR_MARK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @TREE_CODE(i64 %30)
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @ERROR_MARK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23, %17
  %36 = load i64, i64* @error_mark_node, align 8
  store i64 %36, i64* %3, align 8
  br label %288

37:                                               ; preds = %29
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @TYPE_MAIN_VARIANT(i64 %38)
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @TYPE_MAIN_VARIANT(i64 %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @TYPE_MAIN_VARIANT(i64 %45)
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @TYPE_MAIN_VARIANT(i64 %47)
  %49 = call i64 %44(i64 %46, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43, %37
  %52 = load i32, i32* @NOP_EXPR, align 4
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @fold_build1(i32 %52, i64 %53, i64 %54)
  store i64 %55, i64* %3, align 8
  br label %288

56:                                               ; preds = %43
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @TREE_CODE(i64 %57)
  switch i32 %58, label %286 [
    i32 134, label %59
    i32 135, label %59
    i32 137, label %59
    i32 132, label %59
    i32 130, label %59
    i32 138, label %59
    i32 133, label %59
    i32 131, label %124
    i32 136, label %182
    i32 129, label %247
    i32 128, label %280
  ]

59:                                               ; preds = %56, %56, %56, %56, %56, %56, %56
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @TREE_CODE(i64 %60)
  %62 = load i32, i32* @INTEGER_CST, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32, i32* @NOP_EXPR, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @fold_convert_const(i32 %65, i64 %66, i64 %67)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @NULL_TREE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i64, i64* %7, align 8
  store i64 %73, i64* %3, align 8
  br label %288

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %59
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @INTEGRAL_TYPE_P(i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @POINTER_TYPE_P(i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @TREE_CODE(i64 %84)
  %86 = icmp eq i32 %85, 133
  br i1 %86, label %87, label %92

87:                                               ; preds = %83, %79, %75
  %88 = load i32, i32* @NOP_EXPR, align 4
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i64 @fold_build1(i32 %88, i64 %89, i64 %90)
  store i64 %91, i64* %3, align 8
  br label %288

92:                                               ; preds = %83
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @TREE_CODE(i64 %93)
  %95 = icmp eq i32 %94, 136
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i32, i32* @REALPART_EXPR, align 4
  %98 = load i64, i64* %6, align 8
  %99 = call i64 @TREE_TYPE(i64 %98)
  %100 = load i64, i64* %5, align 8
  %101 = call i64 @fold_build1(i32 %97, i64 %99, i64 %100)
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i64 @fold_convert(i64 %102, i64 %103)
  store i64 %104, i64* %3, align 8
  br label %288

105:                                              ; preds = %92
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @TREE_CODE(i64 %106)
  %108 = icmp eq i32 %107, 129
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @TYPE_SIZE(i64 %110)
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @TYPE_SIZE(i64 %112)
  %114 = call i32 @tree_int_cst_equal(i32 %111, i32 %113)
  %115 = icmp ne i32 %114, 0
  br label %116

116:                                              ; preds = %109, %105
  %117 = phi i1 [ false, %105 ], [ %115, %109 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @gcc_assert(i32 %118)
  %120 = load i32, i32* @NOP_EXPR, align 4
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* %5, align 8
  %123 = call i64 @fold_build1(i32 %120, i64 %121, i64 %122)
  store i64 %123, i64* %3, align 8
  br label %288

124:                                              ; preds = %56
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @TREE_CODE(i64 %125)
  %127 = load i32, i32* @INTEGER_CST, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load i32, i32* @FLOAT_EXPR, align 4
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* %5, align 8
  %133 = call i64 @fold_convert_const(i32 %130, i64 %131, i64 %132)
  store i64 %133, i64* %7, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* @NULL_TREE, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i64, i64* %7, align 8
  store i64 %138, i64* %3, align 8
  br label %288

139:                                              ; preds = %129
  br label %157

140:                                              ; preds = %124
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @TREE_CODE(i64 %141)
  %143 = load i32, i32* @REAL_CST, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load i32, i32* @NOP_EXPR, align 4
  %147 = load i64, i64* %4, align 8
  %148 = load i64, i64* %5, align 8
  %149 = call i64 @fold_convert_const(i32 %146, i64 %147, i64 %148)
  store i64 %149, i64* %7, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* @NULL_TREE, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i64, i64* %7, align 8
  store i64 %154, i64* %3, align 8
  br label %288

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %140
  br label %157

157:                                              ; preds = %156, %139
  %158 = load i64, i64* %6, align 8
  %159 = call i32 @TREE_CODE(i64 %158)
  switch i32 %159, label %179 [
    i32 134, label %160
    i32 137, label %160
    i32 135, label %160
    i32 132, label %160
    i32 130, label %160
    i32 131, label %165
    i32 136, label %170
  ]

160:                                              ; preds = %157, %157, %157, %157, %157
  %161 = load i32, i32* @FLOAT_EXPR, align 4
  %162 = load i64, i64* %4, align 8
  %163 = load i64, i64* %5, align 8
  %164 = call i64 @fold_build1(i32 %161, i64 %162, i64 %163)
  store i64 %164, i64* %3, align 8
  br label %288

165:                                              ; preds = %157
  %166 = load i32, i32* @NOP_EXPR, align 4
  %167 = load i64, i64* %4, align 8
  %168 = load i64, i64* %5, align 8
  %169 = call i64 @fold_build1(i32 %166, i64 %167, i64 %168)
  store i64 %169, i64* %3, align 8
  br label %288

170:                                              ; preds = %157
  %171 = load i32, i32* @REALPART_EXPR, align 4
  %172 = load i64, i64* %6, align 8
  %173 = call i64 @TREE_TYPE(i64 %172)
  %174 = load i64, i64* %5, align 8
  %175 = call i64 @fold_build1(i32 %171, i64 %173, i64 %174)
  store i64 %175, i64* %7, align 8
  %176 = load i64, i64* %4, align 8
  %177 = load i64, i64* %7, align 8
  %178 = call i64 @fold_convert(i64 %176, i64 %177)
  store i64 %178, i64* %3, align 8
  br label %288

179:                                              ; preds = %157
  %180 = call i32 (...) @gcc_unreachable()
  br label %181

181:                                              ; preds = %179
  br label %182

182:                                              ; preds = %56, %181
  %183 = load i64, i64* %6, align 8
  %184 = call i32 @TREE_CODE(i64 %183)
  switch i32 %184, label %244 [
    i32 134, label %185
    i32 137, label %185
    i32 135, label %185
    i32 132, label %185
    i32 130, label %185
    i32 131, label %185
    i32 136, label %197
  ]

185:                                              ; preds = %182, %182, %182, %182, %182, %182
  %186 = load i32, i32* @COMPLEX_EXPR, align 4
  %187 = load i64, i64* %4, align 8
  %188 = load i64, i64* %4, align 8
  %189 = call i64 @TREE_TYPE(i64 %188)
  %190 = load i64, i64* %5, align 8
  %191 = call i64 @fold_convert(i64 %189, i64 %190)
  %192 = load i64, i64* %4, align 8
  %193 = call i64 @TREE_TYPE(i64 %192)
  %194 = load i64, i64* @integer_zero_node, align 8
  %195 = call i64 @fold_convert(i64 %193, i64 %194)
  %196 = call i64 @build2(i32 %186, i64 %187, i64 %191, i64 %195)
  store i64 %196, i64* %3, align 8
  br label %288

197:                                              ; preds = %182
  %198 = load i64, i64* %5, align 8
  %199 = call i32 @TREE_CODE(i64 %198)
  %200 = load i32, i32* @COMPLEX_EXPR, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %218

202:                                              ; preds = %197
  %203 = load i64, i64* %4, align 8
  %204 = call i64 @TREE_TYPE(i64 %203)
  %205 = load i64, i64* %5, align 8
  %206 = call i64 @TREE_OPERAND(i64 %205, i32 0)
  %207 = call i64 @fold_convert(i64 %204, i64 %206)
  store i64 %207, i64* %8, align 8
  %208 = load i64, i64* %4, align 8
  %209 = call i64 @TREE_TYPE(i64 %208)
  %210 = load i64, i64* %5, align 8
  %211 = call i64 @TREE_OPERAND(i64 %210, i32 1)
  %212 = call i64 @fold_convert(i64 %209, i64 %211)
  store i64 %212, i64* %9, align 8
  %213 = load i32, i32* @COMPLEX_EXPR, align 4
  %214 = load i64, i64* %4, align 8
  %215 = load i64, i64* %8, align 8
  %216 = load i64, i64* %9, align 8
  %217 = call i64 @fold_build2(i32 %213, i64 %214, i64 %215, i64 %216)
  store i64 %217, i64* %3, align 8
  br label %288

218:                                              ; preds = %197
  %219 = load i64, i64* %5, align 8
  %220 = call i64 @save_expr(i64 %219)
  store i64 %220, i64* %5, align 8
  %221 = load i32, i32* @REALPART_EXPR, align 4
  %222 = load i64, i64* %6, align 8
  %223 = call i64 @TREE_TYPE(i64 %222)
  %224 = load i64, i64* %5, align 8
  %225 = call i64 @fold_build1(i32 %221, i64 %223, i64 %224)
  store i64 %225, i64* %8, align 8
  %226 = load i32, i32* @IMAGPART_EXPR, align 4
  %227 = load i64, i64* %6, align 8
  %228 = call i64 @TREE_TYPE(i64 %227)
  %229 = load i64, i64* %5, align 8
  %230 = call i64 @fold_build1(i32 %226, i64 %228, i64 %229)
  store i64 %230, i64* %9, align 8
  %231 = load i64, i64* %4, align 8
  %232 = call i64 @TREE_TYPE(i64 %231)
  %233 = load i64, i64* %8, align 8
  %234 = call i64 @fold_convert(i64 %232, i64 %233)
  store i64 %234, i64* %8, align 8
  %235 = load i64, i64* %4, align 8
  %236 = call i64 @TREE_TYPE(i64 %235)
  %237 = load i64, i64* %9, align 8
  %238 = call i64 @fold_convert(i64 %236, i64 %237)
  store i64 %238, i64* %9, align 8
  %239 = load i32, i32* @COMPLEX_EXPR, align 4
  %240 = load i64, i64* %4, align 8
  %241 = load i64, i64* %8, align 8
  %242 = load i64, i64* %9, align 8
  %243 = call i64 @fold_build2(i32 %239, i64 %240, i64 %241, i64 %242)
  store i64 %243, i64* %3, align 8
  br label %288

244:                                              ; preds = %182
  %245 = call i32 (...) @gcc_unreachable()
  br label %246

246:                                              ; preds = %244
  br label %247

247:                                              ; preds = %56, %246
  %248 = load i64, i64* %5, align 8
  %249 = call i32 @integer_zerop(i64 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i64, i64* %4, align 8
  %253 = call i64 @build_zero_vector(i64 %252)
  store i64 %253, i64* %3, align 8
  br label %288

254:                                              ; preds = %247
  %255 = load i64, i64* %4, align 8
  %256 = call i32 @TYPE_SIZE(i64 %255)
  %257 = load i64, i64* %6, align 8
  %258 = call i32 @TYPE_SIZE(i64 %257)
  %259 = call i32 @tree_int_cst_equal(i32 %256, i32 %258)
  %260 = call i32 @gcc_assert(i32 %259)
  %261 = load i64, i64* %6, align 8
  %262 = call i32 @INTEGRAL_TYPE_P(i64 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %254
  %265 = load i64, i64* %6, align 8
  %266 = call i32 @POINTER_TYPE_P(i64 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = load i64, i64* %6, align 8
  %270 = call i32 @TREE_CODE(i64 %269)
  %271 = icmp eq i32 %270, 129
  br label %272

272:                                              ; preds = %268, %264, %254
  %273 = phi i1 [ true, %264 ], [ true, %254 ], [ %271, %268 ]
  %274 = zext i1 %273 to i32
  %275 = call i32 @gcc_assert(i32 %274)
  %276 = load i32, i32* @VIEW_CONVERT_EXPR, align 4
  %277 = load i64, i64* %4, align 8
  %278 = load i64, i64* %5, align 8
  %279 = call i64 @fold_build1(i32 %276, i64 %277, i64 %278)
  store i64 %279, i64* %3, align 8
  br label %288

280:                                              ; preds = %56
  %281 = load i32, i32* @NOP_EXPR, align 4
  %282 = load i64, i64* %4, align 8
  %283 = load i64, i64* %5, align 8
  %284 = call i64 @fold_ignored_result(i64 %283)
  %285 = call i64 @fold_build1(i32 %281, i64 %282, i64 %284)
  store i64 %285, i64* %3, align 8
  br label %288

286:                                              ; preds = %56
  %287 = call i32 (...) @gcc_unreachable()
  br label %288

288:                                              ; preds = %15, %35, %51, %72, %87, %96, %116, %137, %153, %160, %165, %170, %185, %202, %218, %251, %272, %280, %286
  %289 = load i64, i64* %3, align 8
  ret i64 %289
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @fold_build1(i32, i64, i64) #1

declare dso_local i64 @fold_convert_const(i32, i64, i64) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @tree_int_cst_equal(i32, i32) #1

declare dso_local i32 @TYPE_SIZE(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i64 @save_expr(i64) #1

declare dso_local i32 @integer_zerop(i64) #1

declare dso_local i64 @build_zero_vector(i64) #1

declare dso_local i64 @fold_ignored_result(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
