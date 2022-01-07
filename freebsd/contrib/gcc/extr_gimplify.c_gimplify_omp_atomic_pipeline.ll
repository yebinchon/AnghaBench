; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_omp_atomic_pipeline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_omp_atomic_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_VAL_COMPARE_AND_SWAP_N = common dso_local global i32 0, align 4
@sync_compare_and_swap = common dso_local global i64* null, align 8
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@GS_UNHANDLED = common dso_local global i32 0, align 4
@GS_ERROR = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i64 0, align 8
@VIEW_CONVERT_EXPR = common dso_local global i32 0, align 4
@LABEL_EXPR = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i64 0, align 8
@GOTO_EXPR = common dso_local global i32 0, align 4
@GS_ALL_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64, i64, i32)* @gimplify_omp_atomic_pipeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gimplify_omp_atomic_pipeline(i64* %0, i64* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load i64*, i64** @built_in_decls, align 8
  %25 = load i32, i32* @BUILT_IN_VAL_COMPARE_AND_SWAP_N, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %25, %26
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %24, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %20, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @TREE_TYPE(i64 %32)
  %34 = call i64 @TREE_TYPE(i64 %33)
  %35 = call i64 @TYPE_MAIN_VARIANT(i64 %34)
  store i64 %35, i64* %18, align 8
  %36 = load i64, i64* %20, align 8
  %37 = call i64 @TREE_TYPE(i64 %36)
  %38 = call i64 @TREE_TYPE(i64 %37)
  store i64 %38, i64* %19, align 8
  %39 = load i64*, i64** @sync_compare_and_swap, align 8
  %40 = load i64, i64* %19, align 8
  %41 = call i64 @TYPE_MODE(i64 %40)
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CODE_FOR_nothing, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %5
  %47 = load i32, i32* @GS_UNHANDLED, align 4
  store i32 %47, i32* %6, align 4
  br label %214

48:                                               ; preds = %5
  %49 = load i64, i64* %18, align 8
  %50 = call i64 @create_tmp_var(i64 %49, i32* null)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %18, align 8
  %52 = call i64 @create_tmp_var(i64 %51, i32* null)
  store i64 %52, i64* %15, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @goa_stabilize_expr(i64* %10, i64* %53, i64 %54, i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @GS_ERROR, align 4
  store i32 %59, i32* %6, align 4
  br label %214

60:                                               ; preds = %48
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @build_fold_indirect_ref(i64 %61)
  store i64 %62, i64* %22, align 8
  %63 = load i32, i32* @MODIFY_EXPR, align 4
  %64 = load i64, i64* @void_type_node, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %22, align 8
  %67 = call i64 @build2(i32 %63, i64 %64, i64 %65, i64 %66)
  store i64 %67, i64* %22, align 8
  %68 = load i64, i64* %22, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = call i32 @gimplify_and_add(i64 %68, i64* %69)
  %71 = load i64, i64* %18, align 8
  %72 = call i64 @INTEGRAL_TYPE_P(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %60
  %75 = load i64, i64* %18, align 8
  %76 = call i64 @POINTER_TYPE_P(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74, %60
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %15, align 8
  store i64 %80, i64* %16, align 8
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %23, align 8
  br label %103

82:                                               ; preds = %74
  %83 = load i64, i64* %19, align 8
  %84 = call i64 @create_tmp_var(i64 %83, i32* null)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %19, align 8
  %86 = call i64 @create_tmp_var(i64 %85, i32* null)
  store i64 %86, i64* %16, align 8
  %87 = load i32, i32* @VIEW_CONVERT_EXPR, align 4
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @build1(i32 %87, i64 %88, i64 %89)
  store i64 %90, i64* %22, align 8
  %91 = load i32, i32* @MODIFY_EXPR, align 4
  %92 = load i64, i64* @void_type_node, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %22, align 8
  %95 = call i64 @build2(i32 %91, i64 %92, i64 %93, i64 %94)
  store i64 %95, i64* %22, align 8
  %96 = load i64, i64* %22, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = call i32 @gimplify_and_add(i64 %96, i64* %97)
  %99 = load i64, i64* %19, align 8
  %100 = call i64 @build_pointer_type(i64 %99)
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @fold_convert(i64 %100, i64 %101)
  store i64 %102, i64* %23, align 8
  br label %103

103:                                              ; preds = %82, %78
  %104 = load i64, i64* %19, align 8
  %105 = call i64 @create_tmp_var(i64 %104, i32* null)
  store i64 %105, i64* %14, align 8
  %106 = call i64 (...) @create_artificial_label()
  store i64 %106, i64* %17, align 8
  %107 = load i32, i32* @LABEL_EXPR, align 4
  %108 = load i64, i64* @void_type_node, align 8
  %109 = load i64, i64* %17, align 8
  %110 = call i64 @build1(i32 %107, i64 %108, i64 %109)
  store i64 %110, i64* %22, align 8
  %111 = load i64, i64* %22, align 8
  %112 = load i64*, i64** %8, align 8
  %113 = call i32 @gimplify_and_add(i64 %111, i64* %112)
  %114 = load i32, i32* @MODIFY_EXPR, align 4
  %115 = load i64, i64* @void_type_node, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i64 @build2(i32 %114, i64 %115, i64 %116, i64 %117)
  store i64 %118, i64* %22, align 8
  %119 = load i64, i64* %22, align 8
  %120 = load i64*, i64** %8, align 8
  %121 = call i32 @gimplify_and_add(i64 %119, i64* %120)
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %16, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %103
  %126 = load i32, i32* @VIEW_CONVERT_EXPR, align 4
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i64 @build1(i32 %126, i64 %127, i64 %128)
  store i64 %129, i64* %22, align 8
  %130 = load i32, i32* @MODIFY_EXPR, align 4
  %131 = load i64, i64* @void_type_node, align 8
  %132 = load i64, i64* %16, align 8
  %133 = load i64, i64* %22, align 8
  %134 = call i64 @build2(i32 %130, i64 %131, i64 %132, i64 %133)
  store i64 %134, i64* %22, align 8
  %135 = load i64, i64* %22, align 8
  %136 = load i64*, i64** %8, align 8
  %137 = call i32 @gimplify_and_add(i64 %135, i64* %136)
  br label %138

138:                                              ; preds = %125, %103
  %139 = load i32, i32* @MODIFY_EXPR, align 4
  %140 = load i64, i64* @void_type_node, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* %19, align 8
  %143 = load i64, i64* %13, align 8
  %144 = call i64 @fold_convert(i64 %142, i64 %143)
  %145 = call i64 @build2(i32 %139, i64 %140, i64 %141, i64 %144)
  store i64 %145, i64* %22, align 8
  %146 = load i64, i64* %22, align 8
  %147 = load i64*, i64** %8, align 8
  %148 = call i32 @gimplify_and_add(i64 %146, i64* %147)
  %149 = load i64, i64* %19, align 8
  %150 = load i64, i64* %16, align 8
  %151 = call i64 @fold_convert(i64 %149, i64 %150)
  %152 = call i64 @tree_cons(i32* null, i64 %151, i64 0)
  store i64 %152, i64* %21, align 8
  %153 = load i64, i64* %19, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i64 @fold_convert(i64 %153, i64 %154)
  %156 = load i64, i64* %21, align 8
  %157 = call i64 @tree_cons(i32* null, i64 %155, i64 %156)
  store i64 %157, i64* %21, align 8
  %158 = load i64, i64* %23, align 8
  %159 = load i64, i64* %21, align 8
  %160 = call i64 @tree_cons(i32* null, i64 %158, i64 %159)
  store i64 %160, i64* %21, align 8
  %161 = load i64, i64* %20, align 8
  %162 = load i64, i64* %21, align 8
  %163 = call i64 @build_function_call_expr(i64 %161, i64 %162)
  store i64 %163, i64* %22, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* %13, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %138
  %168 = load i64, i64* %18, align 8
  %169 = load i64, i64* %22, align 8
  %170 = call i64 @fold_convert(i64 %168, i64 %169)
  store i64 %170, i64* %22, align 8
  br label %171

171:                                              ; preds = %167, %138
  %172 = load i32, i32* @MODIFY_EXPR, align 4
  %173 = load i64, i64* @void_type_node, align 8
  %174 = load i64, i64* %13, align 8
  %175 = load i64, i64* %22, align 8
  %176 = call i64 @build2(i32 %172, i64 %173, i64 %174, i64 %175)
  store i64 %176, i64* %22, align 8
  %177 = load i64, i64* %22, align 8
  %178 = load i64*, i64** %8, align 8
  %179 = call i32 @gimplify_and_add(i64 %177, i64* %178)
  %180 = load i64, i64* %12, align 8
  %181 = load i64, i64* %13, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %171
  %184 = load i32, i32* @VIEW_CONVERT_EXPR, align 4
  %185 = load i64, i64* %18, align 8
  %186 = load i64, i64* %13, align 8
  %187 = call i64 @build1(i32 %184, i64 %185, i64 %186)
  store i64 %187, i64* %22, align 8
  %188 = load i32, i32* @MODIFY_EXPR, align 4
  %189 = load i64, i64* @void_type_node, align 8
  %190 = load i64, i64* %12, align 8
  %191 = load i64, i64* %22, align 8
  %192 = call i64 @build2(i32 %188, i64 %189, i64 %190, i64 %191)
  store i64 %192, i64* %22, align 8
  %193 = load i64, i64* %22, align 8
  %194 = load i64*, i64** %8, align 8
  %195 = call i32 @gimplify_and_add(i64 %193, i64* %194)
  br label %196

196:                                              ; preds = %183, %171
  %197 = load i32, i32* @COND_EXPR, align 4
  %198 = load i64, i64* @void_type_node, align 8
  %199 = load i32, i32* @NE_EXPR, align 4
  %200 = load i64, i64* @boolean_type_node, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* %14, align 8
  %203 = call i64 @build2(i32 %199, i64 %200, i64 %201, i64 %202)
  %204 = load i32, i32* @GOTO_EXPR, align 4
  %205 = load i64, i64* @void_type_node, align 8
  %206 = load i64, i64* %17, align 8
  %207 = call i64 @build1(i32 %204, i64 %205, i64 %206)
  %208 = call i64 @build3(i32 %197, i64 %198, i64 %203, i64 %207, i32* null)
  store i64 %208, i64* %22, align 8
  %209 = load i64, i64* %22, align 8
  %210 = load i64*, i64** %8, align 8
  %211 = call i32 @gimplify_and_add(i64 %209, i64* %210)
  %212 = load i64*, i64** %7, align 8
  store i64 0, i64* %212, align 8
  %213 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %196, %58, %46
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_MODE(i64) #1

declare dso_local i64 @create_tmp_var(i64, i32*) #1

declare dso_local i64 @goa_stabilize_expr(i64*, i64*, i64, i64) #1

declare dso_local i64 @build_fold_indirect_ref(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i32 @gimplify_and_add(i64, i64*) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @create_artificial_label(...) #1

declare dso_local i64 @tree_cons(i32*, i64, i64) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

declare dso_local i64 @build3(i32, i64, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
