; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_determine_exit_conditions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_determine_exit_conditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.tree_niter_desc = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@boolean_true_node = common dso_local global i64 0, align 8
@boolean_false_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@ERROR_MARK = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@GT_EXPR = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@LE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, %struct.tree_niter_desc*, i32, i64*, i64*, i64*, i32*, i64*)* @determine_exit_conditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_exit_conditions(%struct.loop* %0, %struct.tree_niter_desc* %1, i32 %2, i64* %3, i64* %4, i64* %5, i32* %6, i64* %7) #0 {
  %9 = alloca %struct.loop*, align 8
  %10 = alloca %struct.tree_niter_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %9, align 8
  store %struct.tree_niter_desc* %1, %struct.tree_niter_desc** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i64* %7, i64** %16, align 8
  %29 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %30 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %18, align 8
  %33 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %34 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %19, align 8
  %37 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %38 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %20, align 8
  %40 = load i64, i64* %18, align 8
  %41 = call i64 @TREE_TYPE(i64 %40)
  store i64 %41, i64* %21, align 8
  %42 = load i64, i64* %21, align 8
  %43 = load i64, i64* %21, align 8
  %44 = call i64 @lower_bound_in_type(i64 %42, i64 %43)
  store i64 %44, i64* %24, align 8
  %45 = load i64, i64* %21, align 8
  %46 = load i64, i64* %21, align 8
  %47 = call i64 @upper_bound_in_type(i64 %45, i64 %46)
  store i64 %47, i64* %25, align 8
  %48 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %49 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %26, align 4
  %51 = load i64, i64* @boolean_true_node, align 8
  store i64 %51, i64* %27, align 8
  %52 = load i64, i64* @boolean_false_node, align 8
  %53 = load i64*, i64** %12, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i64, i64* @NULL_TREE, align 8
  %55 = load i64*, i64** %13, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* @NULL_TREE, align 8
  %57 = load i64*, i64** %14, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* @ERROR_MARK, align 4
  %59 = load i32*, i32** %15, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i64, i64* @NULL_TREE, align 8
  %61 = load i64*, i64** %16, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i32, i32* %26, align 4
  %63 = load i32, i32* @ERROR_MARK, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @gcc_assert(i32 %65)
  %67 = load i32, i32* %26, align 4
  %68 = load i32, i32* @NE_EXPR, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %8
  %71 = load i64, i64* %19, align 8
  %72 = call i32 @tree_int_cst_sign_bit(i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @GT_EXPR, align 4
  store i32 %75, i32* %26, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @LT_EXPR, align 4
  store i32 %77, i32* %26, align 4
  br label %78

78:                                               ; preds = %76, %74
  br label %102

79:                                               ; preds = %8
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* @LT_EXPR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i64, i64* %19, align 8
  %85 = call i32 @tree_int_cst_sign_bit(i64 %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @gcc_assert(i32 %88)
  br label %101

90:                                               ; preds = %79
  %91 = load i32, i32* %26, align 4
  %92 = load i32, i32* @GT_EXPR, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i64, i64* %19, align 8
  %96 = call i32 @tree_int_cst_sign_bit(i64 %95)
  %97 = call i32 @gcc_assert(i32 %96)
  br label %100

98:                                               ; preds = %90
  %99 = call i32 (...) @gcc_unreachable()
  br label %100

100:                                              ; preds = %98, %94
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %78
  %103 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %104 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @zero_p(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %110 = load i64, i64* @boolean_type_node, align 8
  %111 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %112 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @invert_truthvalue(i32 %113)
  %115 = load i64, i64* %27, align 8
  %116 = call i64 @fold_build2(i32 %109, i64 %110, i64 %114, i64 %115)
  store i64 %116, i64* %27, align 8
  br label %117

117:                                              ; preds = %108, %102
  %118 = load i32, i32* @MULT_EXPR, align 4
  %119 = load i64, i64* %21, align 8
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* %21, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i64 @build_int_cst_type(i64 %121, i32 %122)
  %124 = call i64 @fold_build2(i32 %118, i64 %119, i64 %120, i64 %123)
  store i64 %124, i64* %22, align 8
  %125 = load i32, i32* @MINUS_EXPR, align 4
  %126 = load i64, i64* %21, align 8
  %127 = load i64, i64* %22, align 8
  %128 = load i64, i64* %19, align 8
  %129 = call i64 @fold_build2(i32 %125, i64 %126, i64 %127, i64 %128)
  store i64 %129, i64* %23, align 8
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* @LT_EXPR, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %117
  %134 = load i32, i32* @GE_EXPR, align 4
  %135 = load i64, i64* @boolean_type_node, align 8
  %136 = load i64, i64* %20, align 8
  %137 = load i32, i32* @PLUS_EXPR, align 4
  %138 = load i64, i64* %21, align 8
  %139 = load i64, i64* %24, align 8
  %140 = load i64, i64* %23, align 8
  %141 = call i64 @fold_build2(i32 %137, i64 %138, i64 %139, i64 %140)
  %142 = call i64 @fold_build2(i32 %134, i64 %135, i64 %136, i64 %141)
  store i64 %142, i64* %28, align 8
  br label %153

143:                                              ; preds = %117
  %144 = load i32, i32* @LE_EXPR, align 4
  %145 = load i64, i64* @boolean_type_node, align 8
  %146 = load i64, i64* %20, align 8
  %147 = load i32, i32* @PLUS_EXPR, align 4
  %148 = load i64, i64* %21, align 8
  %149 = load i64, i64* %25, align 8
  %150 = load i64, i64* %23, align 8
  %151 = call i64 @fold_build2(i32 %147, i64 %148, i64 %149, i64 %150)
  %152 = call i64 @fold_build2(i32 %144, i64 %145, i64 %146, i64 %151)
  store i64 %152, i64* %28, align 8
  br label %153

153:                                              ; preds = %143, %133
  %154 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %155 = load i64, i64* @boolean_type_node, align 8
  %156 = load i64, i64* %28, align 8
  %157 = load i64, i64* %27, align 8
  %158 = call i64 @fold_build2(i32 %154, i64 %155, i64 %156, i64 %157)
  store i64 %158, i64* %27, align 8
  %159 = load i32, i32* @MINUS_EXPR, align 4
  %160 = load i64, i64* %21, align 8
  %161 = load i64, i64* %20, align 8
  %162 = load i64, i64* %23, align 8
  %163 = call i64 @fold_build2(i32 %159, i64 %160, i64 %161, i64 %162)
  store i64 %163, i64* %20, align 8
  %164 = load i32, i32* %26, align 4
  %165 = load i64, i64* @boolean_type_node, align 8
  %166 = load i64, i64* %18, align 8
  %167 = load i64, i64* %20, align 8
  %168 = call i64 @fold_build2(i32 %164, i64 %165, i64 %166, i64 %167)
  store i64 %168, i64* %28, align 8
  %169 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %170 = load i64, i64* @boolean_type_node, align 8
  %171 = load i64, i64* %28, align 8
  %172 = load i64, i64* %27, align 8
  %173 = call i64 @fold_build2(i32 %169, i64 %170, i64 %171, i64 %172)
  store i64 %173, i64* %27, align 8
  %174 = load i64, i64* %27, align 8
  %175 = call i64 @unshare_expr(i64 %174)
  %176 = load i64, i64* @NULL_TREE, align 8
  %177 = call i64 @force_gimple_operand(i64 %175, i64* %17, i32 0, i64 %176)
  store i64 %177, i64* %27, align 8
  %178 = load i64, i64* %17, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %153
  %181 = load %struct.loop*, %struct.loop** %9, align 8
  %182 = call i32 @loop_preheader_edge(%struct.loop* %181)
  %183 = load i64, i64* %17, align 8
  %184 = call i32 @bsi_insert_on_edge_immediate_loop(i32 %182, i64 %183)
  br label %185

185:                                              ; preds = %180, %153
  %186 = load i64, i64* %27, align 8
  %187 = call i32 @is_gimple_condexpr(i64 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %201, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* %27, align 8
  %191 = load i64, i64* @NULL_TREE, align 8
  %192 = call i64 @force_gimple_operand(i64 %190, i64* %17, i32 1, i64 %191)
  store i64 %192, i64* %27, align 8
  %193 = load i64, i64* %17, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load %struct.loop*, %struct.loop** %9, align 8
  %197 = call i32 @loop_preheader_edge(%struct.loop* %196)
  %198 = load i64, i64* %17, align 8
  %199 = call i32 @bsi_insert_on_edge_immediate_loop(i32 %197, i64 %198)
  br label %200

200:                                              ; preds = %195, %189
  br label %201

201:                                              ; preds = %200, %185
  %202 = load i64, i64* %27, align 8
  %203 = load i64*, i64** %12, align 8
  store i64 %202, i64* %203, align 8
  %204 = load i64, i64* %18, align 8
  %205 = call i64 @unshare_expr(i64 %204)
  %206 = load i64, i64* @NULL_TREE, align 8
  %207 = call i64 @force_gimple_operand(i64 %205, i64* %17, i32 1, i64 %206)
  store i64 %207, i64* %18, align 8
  %208 = load i64, i64* %17, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %201
  %211 = load %struct.loop*, %struct.loop** %9, align 8
  %212 = call i32 @loop_preheader_edge(%struct.loop* %211)
  %213 = load i64, i64* %17, align 8
  %214 = call i32 @bsi_insert_on_edge_immediate_loop(i32 %212, i64 %213)
  br label %215

215:                                              ; preds = %210, %201
  %216 = load i64, i64* %20, align 8
  %217 = call i64 @unshare_expr(i64 %216)
  %218 = load i64, i64* @NULL_TREE, align 8
  %219 = call i64 @force_gimple_operand(i64 %217, i64* %17, i32 1, i64 %218)
  store i64 %219, i64* %20, align 8
  %220 = load i64, i64* %17, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %215
  %223 = load %struct.loop*, %struct.loop** %9, align 8
  %224 = call i32 @loop_preheader_edge(%struct.loop* %223)
  %225 = load i64, i64* %17, align 8
  %226 = call i32 @bsi_insert_on_edge_immediate_loop(i32 %224, i64 %225)
  br label %227

227:                                              ; preds = %222, %215
  %228 = load i64, i64* %18, align 8
  %229 = load i64*, i64** %13, align 8
  store i64 %228, i64* %229, align 8
  %230 = load i64, i64* %22, align 8
  %231 = load i64*, i64** %14, align 8
  store i64 %230, i64* %231, align 8
  %232 = load i32, i32* %26, align 4
  %233 = load i32*, i32** %15, align 8
  store i32 %232, i32* %233, align 4
  %234 = load i64, i64* %20, align 8
  %235 = load i64*, i64** %16, align 8
  store i64 %234, i64* %235, align 8
  ret void
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @lower_bound_in_type(i64, i64) #1

declare dso_local i64 @upper_bound_in_type(i64, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @tree_int_cst_sign_bit(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @zero_p(i32) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i64 @invert_truthvalue(i32) #1

declare dso_local i64 @build_int_cst_type(i64, i32) #1

declare dso_local i64 @force_gimple_operand(i64, i64*, i32, i64) #1

declare dso_local i64 @unshare_expr(i64) #1

declare dso_local i32 @bsi_insert_on_edge_immediate_loop(i32, i64) #1

declare dso_local i32 @loop_preheader_edge(%struct.loop*) #1

declare dso_local i32 @is_gimple_condexpr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
