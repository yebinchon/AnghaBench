; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_substitute_placeholder_in_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_substitute_placeholder_in_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLACEHOLDER_EXPR = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i32 0, align 4
@TREE_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @substitute_placeholder_in_expr(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PLACEHOLDER_EXPR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %135

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  %22 = call i64 @TYPE_MAIN_VARIANT(i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %12, align 8
  br label %24

24:                                               ; preds = %71, %19
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %24
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @TREE_TYPE(i64 %28)
  %30 = call i64 @TYPE_MAIN_VARIANT(i64 %29)
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %3, align 8
  br label %311

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %12, align 8
  %38 = call i64 @TREE_CODE(i64 %37)
  %39 = load i64, i64* @COMPOUND_EXPR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @TREE_CODE(i64 %42)
  %44 = load i64, i64* @COND_EXPR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %36
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @TREE_OPERAND(i64 %47, i32 1)
  br label %71

49:                                               ; preds = %41
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @REFERENCE_CLASS_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @UNARY_CLASS_P(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @BINARY_CLASS_P(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %12, align 8
  %63 = call i64 @EXPRESSION_CLASS_P(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %57, %53, %49
  %66 = load i64, i64* %12, align 8
  %67 = call i64 @TREE_OPERAND(i64 %66, i32 0)
  br label %69

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i64 [ %67, %65 ], [ 0, %68 ]
  br label %71

71:                                               ; preds = %69, %46
  %72 = phi i64 [ %48, %46 ], [ %70, %69 ]
  store i64 %72, i64* %12, align 8
  br label %24

73:                                               ; preds = %24
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %131, %73
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %133

78:                                               ; preds = %75
  %79 = load i64, i64* %12, align 8
  %80 = call i64 @TREE_TYPE(i64 %79)
  %81 = call i64 @POINTER_TYPE_P(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load i64, i64* %12, align 8
  %85 = call i64 @TREE_TYPE(i64 %84)
  %86 = call i64 @TREE_TYPE(i64 %85)
  %87 = call i64 @TYPE_MAIN_VARIANT(i64 %86)
  %88 = load i64, i64* %11, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load i32, i32* @INDIRECT_REF, align 4
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i64 @fold_build1(i32 %91, i64 %92, i64 %93)
  store i64 %94, i64* %3, align 8
  br label %311

95:                                               ; preds = %83, %78
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %12, align 8
  %98 = call i64 @TREE_CODE(i64 %97)
  %99 = load i64, i64* @COMPOUND_EXPR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i64, i64* %12, align 8
  %103 = call i64 @TREE_CODE(i64 %102)
  %104 = load i64, i64* @COND_EXPR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101, %96
  %107 = load i64, i64* %12, align 8
  %108 = call i64 @TREE_OPERAND(i64 %107, i32 1)
  br label %131

109:                                              ; preds = %101
  %110 = load i64, i64* %12, align 8
  %111 = call i64 @REFERENCE_CLASS_P(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @UNARY_CLASS_P(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %12, align 8
  %119 = call i64 @BINARY_CLASS_P(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %12, align 8
  %123 = call i64 @EXPRESSION_CLASS_P(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121, %117, %113, %109
  %126 = load i64, i64* %12, align 8
  %127 = call i64 @TREE_OPERAND(i64 %126, i32 0)
  br label %129

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %125
  %130 = phi i64 [ %127, %125 ], [ 0, %128 ]
  br label %131

131:                                              ; preds = %129, %106
  %132 = phi i64 [ %108, %106 ], [ %130, %129 ]
  store i64 %132, i64* %12, align 8
  br label %75

133:                                              ; preds = %75
  %134 = load i64, i64* %4, align 8
  store i64 %134, i64* %3, align 8
  br label %311

135:                                              ; preds = %2
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @TREE_LIST, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %135
  %140 = load i64, i64* %4, align 8
  %141 = call i64 @TREE_CHAIN(i64 %140)
  %142 = load i64, i64* %5, align 8
  %143 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %141, i64 %142)
  store i64 %143, i64* %7, align 8
  %144 = load i64, i64* %4, align 8
  %145 = call i64 @TREE_VALUE(i64 %144)
  %146 = load i64, i64* %5, align 8
  %147 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %145, i64 %146)
  store i64 %147, i64* %8, align 8
  %148 = load i64, i64* %7, align 8
  %149 = load i64, i64* %4, align 8
  %150 = call i64 @TREE_CHAIN(i64 %149)
  %151 = icmp eq i64 %148, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %139
  %153 = load i64, i64* %8, align 8
  %154 = load i64, i64* %4, align 8
  %155 = call i64 @TREE_VALUE(i64 %154)
  %156 = icmp eq i64 %153, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i64, i64* %4, align 8
  store i64 %158, i64* %3, align 8
  br label %311

159:                                              ; preds = %152, %139
  %160 = load i64, i64* %4, align 8
  %161 = call i32 @TREE_PURPOSE(i64 %160)
  %162 = load i64, i64* %8, align 8
  %163 = load i64, i64* %7, align 8
  %164 = call i64 @tree_cons(i32 %161, i64 %162, i64 %163)
  store i64 %164, i64* %3, align 8
  br label %311

165:                                              ; preds = %135
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @TREE_CODE_CLASS(i32 %166)
  switch i32 %167, label %307 [
    i32 134, label %168
    i32 133, label %168
    i32 132, label %170
    i32 128, label %170
    i32 136, label %170
    i32 135, label %170
    i32 131, label %170
    i32 130, label %170
    i32 129, label %170
  ]

168:                                              ; preds = %165, %165
  %169 = load i64, i64* %4, align 8
  store i64 %169, i64* %3, align 8
  br label %311

170:                                              ; preds = %165, %165, %165, %165, %165, %165, %165
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @TREE_CODE_LENGTH(i32 %171)
  switch i32 %172, label %304 [
    i32 0, label %173
    i32 1, label %175
    i32 2, label %192
    i32 3, label %219
    i32 4, label %256
  ]

173:                                              ; preds = %170
  %174 = load i64, i64* %4, align 8
  store i64 %174, i64* %3, align 8
  br label %311

175:                                              ; preds = %170
  %176 = load i64, i64* %4, align 8
  %177 = call i64 @TREE_OPERAND(i64 %176, i32 0)
  %178 = load i64, i64* %5, align 8
  %179 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %177, i64 %178)
  store i64 %179, i64* %7, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* %4, align 8
  %182 = call i64 @TREE_OPERAND(i64 %181, i32 0)
  %183 = icmp eq i64 %180, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = load i64, i64* %4, align 8
  store i64 %185, i64* %3, align 8
  br label %311

186:                                              ; preds = %175
  %187 = load i32, i32* %6, align 4
  %188 = load i64, i64* %4, align 8
  %189 = call i64 @TREE_TYPE(i64 %188)
  %190 = load i64, i64* %7, align 8
  %191 = call i64 @fold_build1(i32 %187, i64 %189, i64 %190)
  store i64 %191, i64* %3, align 8
  br label %311

192:                                              ; preds = %170
  %193 = load i64, i64* %4, align 8
  %194 = call i64 @TREE_OPERAND(i64 %193, i32 0)
  %195 = load i64, i64* %5, align 8
  %196 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %194, i64 %195)
  store i64 %196, i64* %7, align 8
  %197 = load i64, i64* %4, align 8
  %198 = call i64 @TREE_OPERAND(i64 %197, i32 1)
  %199 = load i64, i64* %5, align 8
  %200 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %198, i64 %199)
  store i64 %200, i64* %8, align 8
  %201 = load i64, i64* %7, align 8
  %202 = load i64, i64* %4, align 8
  %203 = call i64 @TREE_OPERAND(i64 %202, i32 0)
  %204 = icmp eq i64 %201, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %192
  %206 = load i64, i64* %8, align 8
  %207 = load i64, i64* %4, align 8
  %208 = call i64 @TREE_OPERAND(i64 %207, i32 1)
  %209 = icmp eq i64 %206, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i64, i64* %4, align 8
  store i64 %211, i64* %3, align 8
  br label %311

212:                                              ; preds = %205, %192
  %213 = load i32, i32* %6, align 4
  %214 = load i64, i64* %4, align 8
  %215 = call i64 @TREE_TYPE(i64 %214)
  %216 = load i64, i64* %7, align 8
  %217 = load i64, i64* %8, align 8
  %218 = call i64 @fold_build2(i32 %213, i64 %215, i64 %216, i64 %217)
  store i64 %218, i64* %3, align 8
  br label %311

219:                                              ; preds = %170
  %220 = load i64, i64* %4, align 8
  %221 = call i64 @TREE_OPERAND(i64 %220, i32 0)
  %222 = load i64, i64* %5, align 8
  %223 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %221, i64 %222)
  store i64 %223, i64* %7, align 8
  %224 = load i64, i64* %4, align 8
  %225 = call i64 @TREE_OPERAND(i64 %224, i32 1)
  %226 = load i64, i64* %5, align 8
  %227 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %225, i64 %226)
  store i64 %227, i64* %8, align 8
  %228 = load i64, i64* %4, align 8
  %229 = call i64 @TREE_OPERAND(i64 %228, i32 2)
  %230 = load i64, i64* %5, align 8
  %231 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %229, i64 %230)
  store i64 %231, i64* %9, align 8
  %232 = load i64, i64* %7, align 8
  %233 = load i64, i64* %4, align 8
  %234 = call i64 @TREE_OPERAND(i64 %233, i32 0)
  %235 = icmp eq i64 %232, %234
  br i1 %235, label %236, label %248

236:                                              ; preds = %219
  %237 = load i64, i64* %8, align 8
  %238 = load i64, i64* %4, align 8
  %239 = call i64 @TREE_OPERAND(i64 %238, i32 1)
  %240 = icmp eq i64 %237, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %236
  %242 = load i64, i64* %9, align 8
  %243 = load i64, i64* %4, align 8
  %244 = call i64 @TREE_OPERAND(i64 %243, i32 2)
  %245 = icmp eq i64 %242, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %241
  %247 = load i64, i64* %4, align 8
  store i64 %247, i64* %3, align 8
  br label %311

248:                                              ; preds = %241, %236, %219
  %249 = load i32, i32* %6, align 4
  %250 = load i64, i64* %4, align 8
  %251 = call i64 @TREE_TYPE(i64 %250)
  %252 = load i64, i64* %7, align 8
  %253 = load i64, i64* %8, align 8
  %254 = load i64, i64* %9, align 8
  %255 = call i64 @fold_build3(i32 %249, i64 %251, i64 %252, i64 %253, i64 %254)
  store i64 %255, i64* %3, align 8
  br label %311

256:                                              ; preds = %170
  %257 = load i64, i64* %4, align 8
  %258 = call i64 @TREE_OPERAND(i64 %257, i32 0)
  %259 = load i64, i64* %5, align 8
  %260 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %258, i64 %259)
  store i64 %260, i64* %7, align 8
  %261 = load i64, i64* %4, align 8
  %262 = call i64 @TREE_OPERAND(i64 %261, i32 1)
  %263 = load i64, i64* %5, align 8
  %264 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %262, i64 %263)
  store i64 %264, i64* %8, align 8
  %265 = load i64, i64* %4, align 8
  %266 = call i64 @TREE_OPERAND(i64 %265, i32 2)
  %267 = load i64, i64* %5, align 8
  %268 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %266, i64 %267)
  store i64 %268, i64* %9, align 8
  %269 = load i64, i64* %4, align 8
  %270 = call i64 @TREE_OPERAND(i64 %269, i32 3)
  %271 = load i64, i64* %5, align 8
  %272 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %270, i64 %271)
  store i64 %272, i64* %10, align 8
  %273 = load i64, i64* %7, align 8
  %274 = load i64, i64* %4, align 8
  %275 = call i64 @TREE_OPERAND(i64 %274, i32 0)
  %276 = icmp eq i64 %273, %275
  br i1 %276, label %277, label %294

277:                                              ; preds = %256
  %278 = load i64, i64* %8, align 8
  %279 = load i64, i64* %4, align 8
  %280 = call i64 @TREE_OPERAND(i64 %279, i32 1)
  %281 = icmp eq i64 %278, %280
  br i1 %281, label %282, label %294

282:                                              ; preds = %277
  %283 = load i64, i64* %9, align 8
  %284 = load i64, i64* %4, align 8
  %285 = call i64 @TREE_OPERAND(i64 %284, i32 2)
  %286 = icmp eq i64 %283, %285
  br i1 %286, label %287, label %294

287:                                              ; preds = %282
  %288 = load i64, i64* %10, align 8
  %289 = load i64, i64* %4, align 8
  %290 = call i64 @TREE_OPERAND(i64 %289, i32 3)
  %291 = icmp eq i64 %288, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = load i64, i64* %4, align 8
  store i64 %293, i64* %3, align 8
  br label %311

294:                                              ; preds = %287, %282, %277, %256
  %295 = load i32, i32* %6, align 4
  %296 = load i64, i64* %4, align 8
  %297 = call i64 @TREE_TYPE(i64 %296)
  %298 = load i64, i64* %7, align 8
  %299 = load i64, i64* %8, align 8
  %300 = load i64, i64* %9, align 8
  %301 = load i64, i64* %10, align 8
  %302 = call i32 @build4(i32 %295, i64 %297, i64 %298, i64 %299, i64 %300, i64 %301)
  %303 = call i64 @fold(i32 %302)
  store i64 %303, i64* %3, align 8
  br label %311

304:                                              ; preds = %170
  %305 = call i32 (...) @gcc_unreachable()
  br label %306

306:                                              ; preds = %304
  br label %309

307:                                              ; preds = %165
  %308 = call i32 (...) @gcc_unreachable()
  br label %309

309:                                              ; preds = %307, %306
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %33, %90, %133, %157, %159, %168, %173, %184, %186, %210, %212, %246, %248, %292, %294, %310
  %312 = load i64, i64* %3, align 8
  ret i64 %312
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @REFERENCE_CLASS_P(i64) #1

declare dso_local i64 @UNARY_CLASS_P(i64) #1

declare dso_local i64 @BINARY_CLASS_P(i64) #1

declare dso_local i64 @EXPRESSION_CLASS_P(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @fold_build1(i32, i64, i64) #1

declare dso_local i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @tree_cons(i32, i64, i64) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @TREE_CODE_LENGTH(i32) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i64 @fold_build3(i32, i64, i64, i64, i64) #1

declare dso_local i64 @fold(i32) #1

declare dso_local i32 @build4(i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
