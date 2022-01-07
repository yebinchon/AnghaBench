; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_mathfn_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_mathfn_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (...)* }

@EQ_EXPR = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@LE_EXPR = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@dconst0 = common dso_local global i32 0, align 4
@GT_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@TRUTH_ANDIF_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @fold_mathfn_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_mathfn_compare(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @BUILTIN_SQRT_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %254

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @TREE_OPERAND(i32 %21, i32 1)
  %23 = call i32 @TREE_VALUE(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = call i32 @TYPE_MODE(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @TREE_REAL_CST(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @REAL_VALUE_NEGATIVE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @EQ_EXPR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @LT_EXPR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @LE_EXPR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %36, %32
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @integer_zero_node, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @omit_one_operand(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %256

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @NE_EXPR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @HONOR_NANS(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @integer_one_node, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @omit_one_operand(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %256

62:                                               ; preds = %53
  %63 = load i32, i32* @GE_EXPR, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @TREE_TYPE(i32 %66)
  %68 = load i32, i32* @dconst0, align 4
  %69 = call i32 @build_real(i32 %67, i32 %68)
  %70 = call i32 @fold_build2(i32 %63, i32 %64, i32 %65, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %256

71:                                               ; preds = %20
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @GT_EXPR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @GE_EXPR, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %117

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @MULT_EXPR, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @REAL_ARITHMETIC(i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @real_convert(i32* %15, i32 %85, i32* %15)
  %87 = load i32, i32* %15, align 4
  %88 = call i64 @REAL_VALUE_ISINF(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %79
  %91 = load i32, i32* %14, align 4
  %92 = call i64 @HONOR_INFINITIES(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32, i32* @EQ_EXPR, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @TREE_TYPE(i32 %98)
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @build_real(i32 %99, i32 %100)
  %102 = call i32 @fold_build2(i32 %95, i32 %96, i32 %97, i32 %101)
  store i32 %102, i32* %6, align 4
  br label %256

103:                                              ; preds = %90
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @integer_zero_node, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @omit_one_operand(i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %6, align 4
  br label %256

108:                                              ; preds = %79
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @TREE_TYPE(i32 %112)
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @build_real(i32 %113, i32 %114)
  %116 = call i32 @fold_build2(i32 %109, i32 %110, i32 %111, i32 %115)
  store i32 %116, i32* %6, align 4
  br label %256

117:                                              ; preds = %75
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @LT_EXPR, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @LE_EXPR, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %251

125:                                              ; preds = %121, %117
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* @MULT_EXPR, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @REAL_ARITHMETIC(i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @real_convert(i32* %16, i32 %131, i32* %16)
  %133 = load i32, i32* %16, align 4
  %134 = call i64 @REAL_VALUE_ISINF(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %207

136:                                              ; preds = %125
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @HONOR_NANS(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %14, align 4
  %142 = call i64 @HONOR_INFINITIES(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @integer_one_node, align 4
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @omit_one_operand(i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %6, align 4
  br label %256

149:                                              ; preds = %140, %136
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @HONOR_NANS(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* @NE_EXPR, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @TREE_TYPE(i32 %157)
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @build_real(i32 %158, i32 %159)
  %161 = call i32 @fold_build2(i32 %154, i32 %155, i32 %156, i32 %160)
  store i32 %161, i32* %6, align 4
  br label %256

162:                                              ; preds = %149
  %163 = load i32, i32* %14, align 4
  %164 = call i64 @HONOR_INFINITIES(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* @GE_EXPR, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @TREE_TYPE(i32 %170)
  %172 = load i32, i32* @dconst0, align 4
  %173 = call i32 @build_real(i32 %171, i32 %172)
  %174 = call i32 @fold_build2(i32 %167, i32 %168, i32 %169, i32 %173)
  store i32 %174, i32* %6, align 4
  br label %256

175:                                              ; preds = %162
  %176 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %177 = call i64 (...) %176()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %13, align 4
  %181 = call i64 @CONTAINS_PLACEHOLDER_P(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179, %175
  %184 = load i32, i32* @NULL_TREE, align 4
  store i32 %184, i32* %6, align 4
  br label %256

185:                                              ; preds = %179
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @save_expr(i32 %186)
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @GE_EXPR, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @TREE_TYPE(i32 %193)
  %195 = load i32, i32* @dconst0, align 4
  %196 = call i32 @build_real(i32 %194, i32 %195)
  %197 = call i32 @fold_build2(i32 %190, i32 %191, i32 %192, i32 %196)
  %198 = load i32, i32* @NE_EXPR, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @TREE_TYPE(i32 %201)
  %203 = load i32, i32* %16, align 4
  %204 = call i32 @build_real(i32 %202, i32 %203)
  %205 = call i32 @fold_build2(i32 %198, i32 %199, i32 %200, i32 %204)
  %206 = call i32 @fold_build2(i32 %188, i32 %189, i32 %197, i32 %205)
  store i32 %206, i32* %6, align 4
  br label %256

207:                                              ; preds = %125
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @HONOR_NANS(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %220, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @TREE_TYPE(i32 %215)
  %217 = load i32, i32* %16, align 4
  %218 = call i32 @build_real(i32 %216, i32 %217)
  %219 = call i32 @fold_build2(i32 %212, i32 %213, i32 %214, i32 %218)
  store i32 %219, i32* %6, align 4
  br label %256

220:                                              ; preds = %207
  %221 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %222 = call i64 (...) %221()
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %250

224:                                              ; preds = %220
  %225 = load i32, i32* %13, align 4
  %226 = call i64 @CONTAINS_PLACEHOLDER_P(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %250, label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %13, align 4
  %230 = call i32 @save_expr(i32 %229)
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @GE_EXPR, align 4
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @TREE_TYPE(i32 %236)
  %238 = load i32, i32* @dconst0, align 4
  %239 = call i32 @build_real(i32 %237, i32 %238)
  %240 = call i32 @fold_build2(i32 %233, i32 %234, i32 %235, i32 %239)
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = call i32 @TREE_TYPE(i32 %244)
  %246 = load i32, i32* %16, align 4
  %247 = call i32 @build_real(i32 %245, i32 %246)
  %248 = call i32 @fold_build2(i32 %241, i32 %242, i32 %243, i32 %247)
  %249 = call i32 @fold_build2(i32 %231, i32 %232, i32 %240, i32 %248)
  store i32 %249, i32* %6, align 4
  br label %256

250:                                              ; preds = %224, %220
  br label %251

251:                                              ; preds = %250, %121
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253, %5
  %255 = load i32, i32* @NULL_TREE, align 4
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %254, %228, %211, %185, %183, %166, %153, %144, %108, %103, %94, %62, %57, %44
  %257 = load i32, i32* %6, align 4
  ret i32 %257
}

declare dso_local i64 @BUILTIN_SQRT_P(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_REAL_CST(i32) #1

declare dso_local i64 @REAL_VALUE_NEGATIVE(i32) #1

declare dso_local i32 @omit_one_operand(i32, i32, i32) #1

declare dso_local i32 @HONOR_NANS(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i32 @REAL_ARITHMETIC(i32, i32, i32, i32) #1

declare dso_local i32 @real_convert(i32*, i32, i32*) #1

declare dso_local i64 @REAL_VALUE_ISINF(i32) #1

declare dso_local i64 @HONOR_INFINITIES(i32) #1

declare dso_local i64 @CONTAINS_PLACEHOLDER_P(i32) #1

declare dso_local i32 @save_expr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
