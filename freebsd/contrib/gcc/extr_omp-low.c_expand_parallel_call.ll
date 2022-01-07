; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_parallel_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_parallel_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@BUILT_IN_GOMP_PARALLEL_START = common dso_local global i32 0, align 4
@BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START = common dso_local global i32 0, align 4
@BUILT_IN_GOMP_PARALLEL_SECTIONS_START = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32* null, align 8
@unsigned_type_node = common dso_local global i32 0, align 4
@OMP_CLAUSE_IF = common dso_local global i32 0, align 4
@OMP_CLAUSE_NUM_THREADS = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@BSI_CONTINUE_LINKING = common dso_local global i32 0, align 4
@LABEL_EXPR = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@null_pointer_node = common dso_local global i32* null, align 8
@built_in_decls = common dso_local global i32** null, align 8
@BUILT_IN_GOMP_PARALLEL_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omp_region*, i32, i32*, i32*)* @expand_parallel_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_parallel_call(%struct.omp_region* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.omp_region*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_6__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.omp_region* %0, %struct.omp_region** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @OMP_PARALLEL_CLAUSES(i32* %27)
  store i32* %28, i32** %15, align 8
  %29 = call i32 (...) @push_gimplify_context()
  %30 = load i32, i32* @BUILT_IN_GOMP_PARALLEL_START, align 4
  store i32 %30, i32* %17, align 4
  %31 = load %struct.omp_region*, %struct.omp_region** %5, align 8
  %32 = call i64 @is_combined_parallel(%struct.omp_region* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %4
  %35 = load %struct.omp_region*, %struct.omp_region** %5, align 8
  %36 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %50 [
    i32 129, label %40
    i32 128, label %48
  ]

40:                                               ; preds = %34
  %41 = load i32, i32* @BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START, align 4
  %42 = load %struct.omp_region*, %struct.omp_region** %5, align 8
  %43 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %41, %46
  store i32 %47, i32* %17, align 4
  br label %52

48:                                               ; preds = %34
  %49 = load i32, i32* @BUILT_IN_GOMP_PARALLEL_SECTIONS_START, align 4
  store i32 %49, i32* %17, align 4
  br label %52

50:                                               ; preds = %34
  %51 = call i32 (...) @gcc_unreachable()
  br label %52

52:                                               ; preds = %50, %48, %40
  br label %53

53:                                               ; preds = %52, %4
  %54 = load i32*, i32** @NULL_TREE, align 8
  store i32* %54, i32** %12, align 8
  %55 = load i32, i32* @unsigned_type_node, align 4
  %56 = call i32* @build_int_cst(i32 %55, i32 0)
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* @OMP_CLAUSE_IF, align 4
  %59 = call i32* @find_omp_clause(i32* %57, i32 %58)
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32*, i32** %13, align 8
  %64 = call i32* @OMP_CLAUSE_IF_EXPR(i32* %63)
  store i32* %64, i32** %12, align 8
  br label %65

65:                                               ; preds = %62, %53
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* @OMP_CLAUSE_NUM_THREADS, align 4
  %68 = call i32* @find_omp_clause(i32* %66, i32 %67)
  store i32* %68, i32** %13, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32*, i32** %13, align 8
  %73 = call i32* @OMP_CLAUSE_NUM_THREADS_EXPR(i32* %72)
  store i32* %73, i32** %11, align 8
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32, i32* @unsigned_type_node, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = call i32* @fold_convert(i32 %75, i32* %76)
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %186

80:                                               ; preds = %74
  %81 = load i32*, i32** %12, align 8
  %82 = call i32* @gimple_boolify(i32* %81)
  store i32* %82, i32** %12, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i64 @integer_zerop(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i32, i32* @EQ_EXPR, align 4
  %88 = load i32, i32* @unsigned_type_node, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @TREE_TYPE(i32* %90)
  %92 = call i32* @build_int_cst(i32 %91, i32 0)
  %93 = call i32* @build2(i32 %87, i32 %88, i32* %89, i32* %92)
  store i32* %93, i32** %11, align 8
  br label %177

94:                                               ; preds = %80
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @TREE_TYPE(i32* %95)
  %97 = call i32* @create_tmp_var(i32 %96, i32* null)
  store i32* %97, i32** %26, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call %struct.TYPE_6__* @split_block(i32 %98, i32* null)
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %22, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %19, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %6, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %107 = call i32 @remove_edge(%struct.TYPE_6__* %106)
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @create_empty_bb(i32 %108)
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @create_empty_bb(i32 %110)
  store i32 %111, i32* %21, align 4
  %112 = call i32* (...) @create_artificial_label()
  store i32* %112, i32** %24, align 8
  %113 = call i32* (...) @create_artificial_label()
  store i32* %113, i32** %25, align 8
  %114 = load i32, i32* @COND_EXPR, align 4
  %115 = load i32, i32* @void_type_node, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @build_and_jump(i32** %24)
  %118 = call i32 @build_and_jump(i32** %25)
  %119 = call i32* @build3(i32 %114, i32 %115, i32* %116, i32 %117, i32 %118)
  store i32* %119, i32** %23, align 8
  %120 = load i32, i32* %19, align 4
  %121 = call i32 @bsi_start(i32 %120)
  store i32 %121, i32* %18, align 4
  %122 = load i32*, i32** %23, align 8
  %123 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %124 = call i32 @bsi_insert_after(i32* %18, i32* %122, i32 %123)
  %125 = load i32, i32* %20, align 4
  %126 = call i32 @bsi_start(i32 %125)
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* @LABEL_EXPR, align 4
  %128 = load i32, i32* @void_type_node, align 4
  %129 = load i32*, i32** %24, align 8
  %130 = call i32* @build1(i32 %127, i32 %128, i32* %129)
  store i32* %130, i32** %23, align 8
  %131 = load i32*, i32** %23, align 8
  %132 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %133 = call i32 @bsi_insert_after(i32* %18, i32* %131, i32 %132)
  %134 = load i32, i32* @MODIFY_EXPR, align 4
  %135 = load i32, i32* @void_type_node, align 4
  %136 = load i32*, i32** %26, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = call i32* @build2(i32 %134, i32 %135, i32* %136, i32* %137)
  store i32* %138, i32** %23, align 8
  %139 = load i32*, i32** %23, align 8
  %140 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %141 = call i32 @bsi_insert_after(i32* %18, i32* %139, i32 %140)
  %142 = load i32, i32* %21, align 4
  %143 = call i32 @bsi_start(i32 %142)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* @LABEL_EXPR, align 4
  %145 = load i32, i32* @void_type_node, align 4
  %146 = load i32*, i32** %25, align 8
  %147 = call i32* @build1(i32 %144, i32 %145, i32* %146)
  store i32* %147, i32** %23, align 8
  %148 = load i32*, i32** %23, align 8
  %149 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %150 = call i32 @bsi_insert_after(i32* %18, i32* %148, i32 %149)
  %151 = load i32, i32* @MODIFY_EXPR, align 4
  %152 = load i32, i32* @void_type_node, align 4
  %153 = load i32*, i32** %26, align 8
  %154 = load i32, i32* @unsigned_type_node, align 4
  %155 = call i32* @build_int_cst(i32 %154, i32 1)
  %156 = call i32* @build2(i32 %151, i32 %152, i32* %153, i32* %155)
  store i32* %156, i32** %23, align 8
  %157 = load i32*, i32** %23, align 8
  %158 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %159 = call i32 @bsi_insert_after(i32* %18, i32* %157, i32 %158)
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %163 = call i32 @make_edge(i32 %160, i32 %161, i32 %162)
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %167 = call i32 @make_edge(i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @EDGE_FALLTHRU, align 4
  %171 = call i32 @make_edge(i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @EDGE_FALLTHRU, align 4
  %175 = call i32 @make_edge(i32 %172, i32 %173, i32 %174)
  %176 = load i32*, i32** %26, align 8
  store i32* %176, i32** %11, align 8
  br label %177

177:                                              ; preds = %94, %86
  %178 = load i32*, i32** @NULL_TREE, align 8
  store i32* %178, i32** %14, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = call i32* @get_formal_tmp_var(i32* %179, i32** %14)
  store i32* %180, i32** %11, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @bsi_start(i32 %181)
  store i32 %182, i32* %18, align 4
  %183 = load i32*, i32** %14, align 8
  %184 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %185 = call i32 @bsi_insert_after(i32* %18, i32* %183, i32 %184)
  br label %186

186:                                              ; preds = %177, %74
  %187 = load i32*, i32** @NULL_TREE, align 8
  store i32* %187, i32** %14, align 8
  %188 = load i32*, i32** %11, align 8
  %189 = call i32* @tree_cons(i32* null, i32* %188, i32* null)
  store i32* %189, i32** %10, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = call i32* @OMP_PARALLEL_DATA_ARG(i32* %190)
  store i32* %191, i32** %9, align 8
  %192 = load i32*, i32** %9, align 8
  %193 = icmp eq i32* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %186
  %195 = load i32*, i32** @null_pointer_node, align 8
  store i32* %195, i32** %9, align 8
  br label %199

196:                                              ; preds = %186
  %197 = load i32*, i32** %9, align 8
  %198 = call i32* @build_fold_addr_expr(i32* %197)
  store i32* %198, i32** %9, align 8
  br label %199

199:                                              ; preds = %196, %194
  %200 = load i32*, i32** %9, align 8
  %201 = load i32*, i32** %10, align 8
  %202 = call i32* @tree_cons(i32* null, i32* %200, i32* %201)
  store i32* %202, i32** %10, align 8
  %203 = load i32*, i32** %7, align 8
  %204 = call i32* @OMP_PARALLEL_FN(i32* %203)
  %205 = call i32* @build_fold_addr_expr(i32* %204)
  store i32* %205, i32** %9, align 8
  %206 = load i32*, i32** %9, align 8
  %207 = load i32*, i32** %10, align 8
  %208 = call i32* @tree_cons(i32* null, i32* %206, i32* %207)
  store i32* %208, i32** %10, align 8
  %209 = load i32*, i32** %8, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %199
  %212 = load i32*, i32** %10, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = call i32* @chainon(i32* %212, i32* %213)
  store i32* %214, i32** %10, align 8
  br label %215

215:                                              ; preds = %211, %199
  %216 = load i32**, i32*** @built_in_decls, align 8
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  store i32* %220, i32** %9, align 8
  %221 = load i32*, i32** %9, align 8
  %222 = load i32*, i32** %10, align 8
  %223 = call i32* @build_function_call_expr(i32* %221, i32* %222)
  store i32* %223, i32** %9, align 8
  %224 = load i32*, i32** %9, align 8
  %225 = call i32 @gimplify_and_add(i32* %224, i32** %14)
  %226 = load i32*, i32** %7, align 8
  %227 = call i32* @OMP_PARALLEL_DATA_ARG(i32* %226)
  store i32* %227, i32** %9, align 8
  %228 = load i32*, i32** %9, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %230, label %232

230:                                              ; preds = %215
  %231 = load i32*, i32** @null_pointer_node, align 8
  store i32* %231, i32** %9, align 8
  br label %235

232:                                              ; preds = %215
  %233 = load i32*, i32** %9, align 8
  %234 = call i32* @build_fold_addr_expr(i32* %233)
  store i32* %234, i32** %9, align 8
  br label %235

235:                                              ; preds = %232, %230
  %236 = load i32*, i32** %9, align 8
  %237 = call i32* @tree_cons(i32* null, i32* %236, i32* null)
  store i32* %237, i32** %10, align 8
  %238 = load i32*, i32** %7, align 8
  %239 = call i32* @OMP_PARALLEL_FN(i32* %238)
  %240 = load i32*, i32** %10, align 8
  %241 = call i32* @build_function_call_expr(i32* %239, i32* %240)
  store i32* %241, i32** %9, align 8
  %242 = load i32*, i32** %9, align 8
  %243 = call i32 @gimplify_and_add(i32* %242, i32** %14)
  %244 = load i32**, i32*** @built_in_decls, align 8
  %245 = load i64, i64* @BUILT_IN_GOMP_PARALLEL_END, align 8
  %246 = getelementptr inbounds i32*, i32** %244, i64 %245
  %247 = load i32*, i32** %246, align 8
  store i32* %247, i32** %9, align 8
  %248 = load i32*, i32** %9, align 8
  %249 = call i32* @build_function_call_expr(i32* %248, i32* null)
  store i32* %249, i32** %9, align 8
  %250 = load i32*, i32** %9, align 8
  %251 = call i32 @gimplify_and_add(i32* %250, i32** %14)
  %252 = load i32, i32* %6, align 4
  %253 = call i32 @bsi_last(i32 %252)
  store i32 %253, i32* %16, align 4
  %254 = load i32*, i32** %14, align 8
  %255 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %256 = call i32 @bsi_insert_after(i32* %16, i32* %254, i32 %255)
  %257 = load i32*, i32** @NULL_TREE, align 8
  %258 = call i32 @pop_gimplify_context(i32* %257)
  ret void
}

declare dso_local i32* @OMP_PARALLEL_CLAUSES(i32*) #1

declare dso_local i32 @push_gimplify_context(...) #1

declare dso_local i64 @is_combined_parallel(%struct.omp_region*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32* @build_int_cst(i32, i32) #1

declare dso_local i32* @find_omp_clause(i32*, i32) #1

declare dso_local i32* @OMP_CLAUSE_IF_EXPR(i32*) #1

declare dso_local i32* @OMP_CLAUSE_NUM_THREADS_EXPR(i32*) #1

declare dso_local i32* @fold_convert(i32, i32*) #1

declare dso_local i32* @gimple_boolify(i32*) #1

declare dso_local i64 @integer_zerop(i32*) #1

declare dso_local i32* @build2(i32, i32, i32*, i32*) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i32* @create_tmp_var(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @split_block(i32, i32*) #1

declare dso_local i32 @remove_edge(%struct.TYPE_6__*) #1

declare dso_local i32 @create_empty_bb(i32) #1

declare dso_local i32* @create_artificial_label(...) #1

declare dso_local i32* @build3(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @build_and_jump(i32**) #1

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @bsi_insert_after(i32*, i32*, i32) #1

declare dso_local i32* @build1(i32, i32, i32*) #1

declare dso_local i32 @make_edge(i32, i32, i32) #1

declare dso_local i32* @get_formal_tmp_var(i32*, i32**) #1

declare dso_local i32* @tree_cons(i32*, i32*, i32*) #1

declare dso_local i32* @OMP_PARALLEL_DATA_ARG(i32*) #1

declare dso_local i32* @build_fold_addr_expr(i32*) #1

declare dso_local i32* @OMP_PARALLEL_FN(i32*) #1

declare dso_local i32* @chainon(i32*, i32*) #1

declare dso_local i32* @build_function_call_expr(i32*, i32*) #1

declare dso_local i32 @gimplify_and_add(i32*, i32**) #1

declare dso_local i32 @bsi_last(i32) #1

declare dso_local i32 @pop_gimplify_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
