; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_infer_loop_bounds_from_undefined.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_infer_loop_bounds_from_undefined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, i32, i32 }

@CDI_DOMINATORS = common dso_local global i32 0, align 4
@ARRAY_REF = common dso_local global i32 0, align 4
@flag_wrapv = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@CEIL_DIV_EXPR = common dso_local global i32 0, align 4
@boolean_true_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*)* @infer_loop_bounds_from_undefined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infer_loop_bounds_from_undefined(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
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
  %17 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %2, align 8
  %18 = load %struct.loop*, %struct.loop** %2, align 8
  %19 = call i32* @get_loop_body(%struct.loop* %18)
  store i32* %19, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %219, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.loop*, %struct.loop** %2, align 8
  %23 = getelementptr inbounds %struct.loop, %struct.loop* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %222

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @CDI_DOMINATORS, align 4
  %33 = load %struct.loop*, %struct.loop** %2, align 8
  %34 = getelementptr inbounds %struct.loop, %struct.loop* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dominated_by_p(i32 %32, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %219

40:                                               ; preds = %26
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @bsi_start(i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %216, %40
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @bsi_end_p(i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %218

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @bsi_stmt(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @TREE_CODE(i32 %51)
  switch i32 %52, label %214 [
    i32 128, label %53
    i32 129, label %187
  ]

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @TREE_OPERAND(i32 %54, i32 0)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @TREE_OPERAND(i32 %56, i32 1)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @TREE_CODE(i32 %58)
  %60 = load i32, i32* @ARRAY_REF, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @array_ref_contains_indirect_ref(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @estimate_iters_using_array(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62, %53
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @TREE_CODE(i32 %71)
  %73 = load i32, i32* @ARRAY_REF, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @array_ref_contains_indirect_ref(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @estimate_iters_using_array(i32 %80, i32 %81)
  br label %186

83:                                               ; preds = %75, %70
  %84 = load i32, i32* @flag_wrapv, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %185, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @TREE_CODE(i32 %87)
  %89 = load i32, i32* @SSA_NAME, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %185

91:                                               ; preds = %86
  %92 = load %struct.loop*, %struct.loop** %2, align 8
  %93 = load %struct.loop*, %struct.loop** %2, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @analyze_scalar_evolution(%struct.loop* %93, i32 %94)
  %96 = call i32 @instantiate_parameters(%struct.loop* %92, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @chrec_type(i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @chrec_contains_undetermined(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @TYPE_OVERFLOW_WRAPS(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %91
  br label %215

107:                                              ; preds = %102
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.loop*, %struct.loop** %2, align 8
  %110 = getelementptr inbounds %struct.loop, %struct.loop* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @initial_condition_in_loop_num(i32 %108, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.loop*, %struct.loop** %2, align 8
  %115 = getelementptr inbounds %struct.loop, %struct.loop* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @evolution_part_in_loop_num(i32 %113, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @NULL_TREE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %145, label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @NULL_TREE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %145, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @TREE_CODE(i32 %126)
  %128 = load i32, i32* @INTEGER_CST, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %145, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @TREE_CODE(i32 %131)
  %133 = load i32, i32* @INTEGER_CST, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %145, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @TYPE_MIN_VALUE(i32 %136)
  %138 = load i32, i32* @NULL_TREE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @TYPE_MAX_VALUE(i32 %141)
  %143 = load i32, i32* @NULL_TREE, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140, %135, %130, %125, %121, %107
  br label %215

146:                                              ; preds = %140
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @integer_nonzerop(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %184

150:                                              ; preds = %146
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @integer_zero_node, align 4
  %153 = call i32 @tree_int_cst_lt(i32 %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i32, i32* @MINUS_EXPR, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @TYPE_MIN_VALUE(i32 %159)
  %161 = call i32 @fold_build2(i32 %156, i32 %157, i32 %158, i32 %160)
  store i32 %161, i32* %12, align 4
  br label %169

162:                                              ; preds = %150
  %163 = load i32, i32* @MINUS_EXPR, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @TYPE_MAX_VALUE(i32 %165)
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @fold_build2(i32 %163, i32 %164, i32 %166, i32 %167)
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %162, %155
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @unsigned_type_for(i32 %170)
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* @CEIL_DIV_EXPR, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @fold_build2(i32 %172, i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load %struct.loop*, %struct.loop** %2, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @fold_convert(i32 %178, i32 %179)
  %181 = load i32, i32* @boolean_true_node, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @record_estimate(%struct.loop* %177, i32 %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %169, %146
  br label %185

185:                                              ; preds = %184, %86, %83
  br label %186

186:                                              ; preds = %185, %79
  br label %215

187:                                              ; preds = %48
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @TREE_OPERAND(i32 %188, i32 1)
  store i32 %189, i32* %17, align 4
  br label %190

190:                                              ; preds = %210, %187
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %190
  %194 = load i32, i32* %17, align 4
  %195 = call i32 @TREE_VALUE(i32 %194)
  %196 = call i32 @TREE_CODE(i32 %195)
  %197 = load i32, i32* @ARRAY_REF, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %193
  %200 = load i32, i32* %17, align 4
  %201 = call i32 @TREE_VALUE(i32 %200)
  %202 = call i32 @array_ref_contains_indirect_ref(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %17, align 4
  %207 = call i32 @TREE_VALUE(i32 %206)
  %208 = call i32 @estimate_iters_using_array(i32 %205, i32 %207)
  br label %209

209:                                              ; preds = %204, %199, %193
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %17, align 4
  %212 = call i32 @TREE_CHAIN(i32 %211)
  store i32 %212, i32* %17, align 4
  br label %190

213:                                              ; preds = %190
  br label %215

214:                                              ; preds = %48
  br label %215

215:                                              ; preds = %214, %213, %186, %145, %106
  br label %216

216:                                              ; preds = %215
  %217 = call i32 @bsi_next(i32* %6)
  br label %43

218:                                              ; preds = %43
  br label %219

219:                                              ; preds = %218, %39
  %220 = load i32, i32* %3, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %20

222:                                              ; preds = %20
  %223 = load %struct.loop*, %struct.loop** %2, align 8
  %224 = call i32 @compute_estimated_nb_iterations(%struct.loop* %223)
  %225 = load i32*, i32** %5, align 8
  %226 = call i32 @free(i32* %225)
  ret void
}

declare dso_local i32* @get_loop_body(%struct.loop*) #1

declare dso_local i32 @dominated_by_p(i32, i32, i32) #1

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @array_ref_contains_indirect_ref(i32) #1

declare dso_local i32 @estimate_iters_using_array(i32, i32) #1

declare dso_local i32 @instantiate_parameters(%struct.loop*, i32) #1

declare dso_local i32 @analyze_scalar_evolution(%struct.loop*, i32) #1

declare dso_local i32 @chrec_type(i32) #1

declare dso_local i32 @chrec_contains_undetermined(i32) #1

declare dso_local i32 @TYPE_OVERFLOW_WRAPS(i32) #1

declare dso_local i32 @initial_condition_in_loop_num(i32, i32) #1

declare dso_local i32 @evolution_part_in_loop_num(i32, i32) #1

declare dso_local i32 @TYPE_MIN_VALUE(i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

declare dso_local i32 @integer_nonzerop(i32) #1

declare dso_local i32 @tree_int_cst_lt(i32, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @unsigned_type_for(i32) #1

declare dso_local i32 @record_estimate(%struct.loop*, i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i32 @compute_estimated_nb_iterations(%struct.loop*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
