; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_omp_for_static_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_omp_for_static_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { i32, i32, i32 }
%struct.omp_for_data = type { i64, i8*, i8*, i8*, i8*, i8* }

@built_in_decls = common dso_local global i8** null, align 8
@BUILT_IN_OMP_GET_NUM_THREADS = common dso_local global i64 0, align 8
@BUILT_IN_OMP_GET_THREAD_NUM = common dso_local global i64 0, align 8
@LT_EXPR = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i64 0, align 8
@TRUNC_DIV_EXPR = common dso_local global i64 0, align 8
@OMP_FOR = common dso_local global i64 0, align 8
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i64 0, align 8
@MIN_EXPR = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i8* null, align 8
@COND_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i8* null, align 8
@BSI_CONTINUE_LINKING = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i64 0, align 8
@OMP_CONTINUE = common dso_local global i64 0, align 8
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omp_region*, %struct.omp_for_data*)* @expand_omp_for_static_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_omp_for_static_chunk(%struct.omp_region* %0, %struct.omp_for_data* %1) #0 {
  %3 = alloca %struct.omp_region*, align 8
  %4 = alloca %struct.omp_for_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store %struct.omp_region* %0, %struct.omp_region** %3, align 8
  store %struct.omp_for_data* %1, %struct.omp_for_data** %4, align 8
  %29 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %30 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @TREE_TYPE(i8* %31)
  store i8* %32, i8** %18, align 8
  %33 = load %struct.omp_region*, %struct.omp_region** %3, align 8
  %34 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = call i32 @create_empty_bb(i32 %36)
  store i32 %37, i32* %23, align 4
  %38 = load i32, i32* %23, align 4
  %39 = call i32 @create_empty_bb(i32 %38)
  store i32 %39, i32* %22, align 4
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @single_succ(i32 %40)
  store i32 %41, i32* %21, align 4
  %42 = load %struct.omp_region*, %struct.omp_region** %3, align 8
  %43 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %25, align 4
  %45 = load i32, i32* %25, align 4
  %46 = call i32 @create_empty_bb(i32 %45)
  store i32 %46, i32* %24, align 4
  %47 = load i32, i32* %25, align 4
  %48 = call i32 @single_succ(i32 %47)
  store i32 %48, i32* %26, align 4
  %49 = load %struct.omp_region*, %struct.omp_region** %3, align 8
  %50 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %23, align 4
  %53 = call i8* @tree_block_label(i32 %52)
  store i8* %53, i8** %5, align 8
  %54 = load i32, i32* %22, align 4
  %55 = call i8* @tree_block_label(i32 %54)
  store i8* %55, i8** %6, align 8
  %56 = load i32, i32* %21, align 4
  %57 = call i8* @tree_block_label(i32 %56)
  store i8* %57, i8** %7, align 8
  %58 = load i32, i32* %24, align 4
  %59 = call i8* @tree_block_label(i32 %58)
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* %26, align 4
  %61 = call i8* @tree_block_label(i32 %60)
  store i8* %61, i8** %9, align 8
  %62 = call i8* (...) @alloc_stmt_list()
  store i8* %62, i8** %27, align 8
  %63 = load i8**, i8*** @built_in_decls, align 8
  %64 = load i64, i64* @BUILT_IN_OMP_GET_NUM_THREADS, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %14, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i8* @build_function_call_expr(i8* %67, i32* null)
  store i8* %68, i8** %14, align 8
  %69 = load i8*, i8** %18, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = call i8* @fold_convert(i8* %69, i8* %70)
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = call i8* @get_formal_tmp_var(i8* %72, i8** %27)
  store i8* %73, i8** %16, align 8
  %74 = load i8**, i8*** @built_in_decls, align 8
  %75 = load i64, i64* @BUILT_IN_OMP_GET_THREAD_NUM, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %14, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = call i8* @build_function_call_expr(i8* %78, i32* null)
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = call i8* @fold_convert(i8* %80, i8* %81)
  store i8* %82, i8** %14, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = call i8* @get_formal_tmp_var(i8* %83, i8** %27)
  store i8* %84, i8** %17, align 8
  %85 = load i8*, i8** %18, align 8
  %86 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %87 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @fold_convert(i8* %85, i8* %88)
  %90 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %91 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %93 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @is_gimple_val(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %2
  %98 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %99 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @get_formal_tmp_var(i8* %100, i8** %27)
  %102 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %103 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %2
  %105 = load i8*, i8** %18, align 8
  %106 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %107 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %106, i32 0, i32 5
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @fold_convert(i8* %105, i8* %108)
  %110 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %111 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %113 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @is_gimple_val(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %104
  %118 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %119 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %118, i32 0, i32 5
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @get_formal_tmp_var(i8* %120, i8** %27)
  %122 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %123 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %117, %104
  %125 = load i8*, i8** %18, align 8
  %126 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %127 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @fold_convert(i8* %125, i8* %128)
  %130 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %131 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %133 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @is_gimple_val(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %124
  %138 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %139 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = call i8* @get_formal_tmp_var(i8* %140, i8** %27)
  %142 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %143 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %137, %124
  %145 = load i8*, i8** %18, align 8
  %146 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %147 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @fold_convert(i8* %145, i8* %148)
  %150 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %151 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %153 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @is_gimple_val(i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %144
  %158 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %159 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %158, i32 0, i32 4
  %160 = load i8*, i8** %159, align 8
  %161 = call i8* @get_formal_tmp_var(i8* %160, i8** %27)
  %162 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %163 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %157, %144
  %165 = load i8*, i8** %18, align 8
  %166 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %167 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @LT_EXPR, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 -1, i32 1
  %173 = call i8* @build_int_cst(i8* %165, i32 %172)
  store i8* %173, i8** %14, align 8
  %174 = load i64, i64* @PLUS_EXPR, align 8
  %175 = load i8*, i8** %18, align 8
  %176 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %177 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** %14, align 8
  %180 = call i8* @fold_build2(i64 %174, i8* %175, i8* %178, i8* %179)
  store i8* %180, i8** %14, align 8
  %181 = load i64, i64* @PLUS_EXPR, align 8
  %182 = load i8*, i8** %18, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %185 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %184, i32 0, i32 5
  %186 = load i8*, i8** %185, align 8
  %187 = call i8* @fold_build2(i64 %181, i8* %182, i8* %183, i8* %186)
  store i8* %187, i8** %14, align 8
  %188 = load i64, i64* @MINUS_EXPR, align 8
  %189 = load i8*, i8** %18, align 8
  %190 = load i8*, i8** %14, align 8
  %191 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %192 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = call i8* @fold_build2(i64 %188, i8* %189, i8* %190, i8* %193)
  store i8* %194, i8** %14, align 8
  %195 = load i64, i64* @TRUNC_DIV_EXPR, align 8
  %196 = load i8*, i8** %18, align 8
  %197 = load i8*, i8** %14, align 8
  %198 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %199 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = call i8* @fold_build2(i64 %195, i8* %196, i8* %197, i8* %200)
  store i8* %201, i8** %14, align 8
  %202 = load i8*, i8** %18, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = call i8* @fold_convert(i8* %202, i8* %203)
  store i8* %204, i8** %14, align 8
  %205 = load i8*, i8** %14, align 8
  %206 = call i64 @is_gimple_val(i8* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %164
  %209 = load i8*, i8** %14, align 8
  store i8* %209, i8** %10, align 8
  br label %213

210:                                              ; preds = %164
  %211 = load i8*, i8** %14, align 8
  %212 = call i8* @get_formal_tmp_var(i8* %211, i8** %27)
  store i8* %212, i8** %10, align 8
  br label %213

213:                                              ; preds = %210, %208
  %214 = load i8*, i8** %18, align 8
  %215 = call i8* @build_int_cst(i8* %214, i32 0)
  store i8* %215, i8** %14, align 8
  %216 = load i8*, i8** %14, align 8
  %217 = call i8* @get_initialized_tmp_var(i8* %216, i8** %27, i32* null)
  store i8* %217, i8** %15, align 8
  %218 = load i32, i32* %19, align 4
  %219 = call i32 @bsi_last(i32 %218)
  store i32 %219, i32* %28, align 4
  %220 = load i32, i32* %28, align 4
  %221 = call i32 @bsi_stmt(i32 %220)
  %222 = call i64 @TREE_CODE(i32 %221)
  %223 = load i64, i64* @OMP_FOR, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @gcc_assert(i32 %225)
  %227 = load i8*, i8** %27, align 8
  %228 = load i32, i32* @BSI_SAME_STMT, align 4
  %229 = call i32 @bsi_insert_after(i32* %28, i8* %227, i32 %228)
  %230 = call i32 @bsi_remove(i32* %28, i32 1)
  %231 = call i8* (...) @alloc_stmt_list()
  store i8* %231, i8** %27, align 8
  %232 = load i64, i64* @MULT_EXPR, align 8
  %233 = load i8*, i8** %18, align 8
  %234 = load i8*, i8** %15, align 8
  %235 = load i8*, i8** %16, align 8
  %236 = call i8* @build2(i64 %232, i8* %233, i8* %234, i8* %235)
  store i8* %236, i8** %14, align 8
  %237 = load i64, i64* @PLUS_EXPR, align 8
  %238 = load i8*, i8** %18, align 8
  %239 = load i8*, i8** %14, align 8
  %240 = load i8*, i8** %17, align 8
  %241 = call i8* @build2(i64 %237, i8* %238, i8* %239, i8* %240)
  store i8* %241, i8** %14, align 8
  %242 = load i64, i64* @MULT_EXPR, align 8
  %243 = load i8*, i8** %18, align 8
  %244 = load i8*, i8** %14, align 8
  %245 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %246 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %245, i32 0, i32 4
  %247 = load i8*, i8** %246, align 8
  %248 = call i8* @build2(i64 %242, i8* %243, i8* %244, i8* %247)
  store i8* %248, i8** %14, align 8
  %249 = load i8*, i8** %14, align 8
  %250 = call i8* @get_formal_tmp_var(i8* %249, i8** %27)
  store i8* %250, i8** %11, align 8
  %251 = load i64, i64* @PLUS_EXPR, align 8
  %252 = load i8*, i8** %18, align 8
  %253 = load i8*, i8** %11, align 8
  %254 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %255 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %254, i32 0, i32 4
  %256 = load i8*, i8** %255, align 8
  %257 = call i8* @build2(i64 %251, i8* %252, i8* %253, i8* %256)
  store i8* %257, i8** %14, align 8
  %258 = load i64, i64* @MIN_EXPR, align 8
  %259 = load i8*, i8** %18, align 8
  %260 = load i8*, i8** %14, align 8
  %261 = load i8*, i8** %10, align 8
  %262 = call i8* @build2(i64 %258, i8* %259, i8* %260, i8* %261)
  store i8* %262, i8** %14, align 8
  %263 = load i8*, i8** %14, align 8
  %264 = call i8* @get_formal_tmp_var(i8* %263, i8** %27)
  store i8* %264, i8** %12, align 8
  %265 = load i64, i64* @LT_EXPR, align 8
  %266 = load i8*, i8** @boolean_type_node, align 8
  %267 = load i8*, i8** %11, align 8
  %268 = load i8*, i8** %10, align 8
  %269 = call i8* @build2(i64 %265, i8* %266, i8* %267, i8* %268)
  store i8* %269, i8** %14, align 8
  %270 = load i32, i32* @COND_EXPR, align 4
  %271 = load i8*, i8** @void_type_node, align 8
  %272 = load i8*, i8** %14, align 8
  %273 = call i32 @build_and_jump(i8** %6)
  %274 = call i32 @build_and_jump(i8** %9)
  %275 = call i8* @build3(i32 %270, i8* %271, i8* %272, i32 %273, i32 %274)
  store i8* %275, i8** %14, align 8
  %276 = load i8*, i8** %14, align 8
  %277 = call i32 @append_to_statement_list(i8* %276, i8** %27)
  %278 = load i32, i32* %23, align 4
  %279 = call i32 @bsi_start(i32 %278)
  store i32 %279, i32* %28, align 4
  %280 = load i8*, i8** %27, align 8
  %281 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %282 = call i32 @bsi_insert_after(i32* %28, i8* %280, i32 %281)
  %283 = call i8* (...) @alloc_stmt_list()
  store i8* %283, i8** %27, align 8
  %284 = load i8*, i8** %18, align 8
  %285 = load i8*, i8** %11, align 8
  %286 = call i8* @fold_convert(i8* %284, i8* %285)
  store i8* %286, i8** %14, align 8
  %287 = load i64, i64* @MULT_EXPR, align 8
  %288 = load i8*, i8** %18, align 8
  %289 = load i8*, i8** %14, align 8
  %290 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %291 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %290, i32 0, i32 2
  %292 = load i8*, i8** %291, align 8
  %293 = call i8* @build2(i64 %287, i8* %288, i8* %289, i8* %292)
  store i8* %293, i8** %14, align 8
  %294 = load i64, i64* @PLUS_EXPR, align 8
  %295 = load i8*, i8** %18, align 8
  %296 = load i8*, i8** %14, align 8
  %297 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %298 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %297, i32 0, i32 3
  %299 = load i8*, i8** %298, align 8
  %300 = call i8* @build2(i64 %294, i8* %295, i8* %296, i8* %299)
  store i8* %300, i8** %14, align 8
  %301 = load i64, i64* @MODIFY_EXPR, align 8
  %302 = load i8*, i8** @void_type_node, align 8
  %303 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %304 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = load i8*, i8** %14, align 8
  %307 = call i8* @build2(i64 %301, i8* %302, i8* %305, i8* %306)
  store i8* %307, i8** %14, align 8
  %308 = load i8*, i8** %14, align 8
  %309 = call i32 @gimplify_and_add(i8* %308, i8** %27)
  %310 = load i8*, i8** %18, align 8
  %311 = load i8*, i8** %12, align 8
  %312 = call i8* @fold_convert(i8* %310, i8* %311)
  store i8* %312, i8** %14, align 8
  %313 = load i64, i64* @MULT_EXPR, align 8
  %314 = load i8*, i8** %18, align 8
  %315 = load i8*, i8** %14, align 8
  %316 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %317 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %316, i32 0, i32 2
  %318 = load i8*, i8** %317, align 8
  %319 = call i8* @build2(i64 %313, i8* %314, i8* %315, i8* %318)
  store i8* %319, i8** %14, align 8
  %320 = load i64, i64* @PLUS_EXPR, align 8
  %321 = load i8*, i8** %18, align 8
  %322 = load i8*, i8** %14, align 8
  %323 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %324 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %323, i32 0, i32 3
  %325 = load i8*, i8** %324, align 8
  %326 = call i8* @build2(i64 %320, i8* %321, i8* %322, i8* %325)
  store i8* %326, i8** %14, align 8
  %327 = load i8*, i8** %14, align 8
  %328 = call i8* @get_formal_tmp_var(i8* %327, i8** %27)
  store i8* %328, i8** %13, align 8
  %329 = load i32, i32* %22, align 4
  %330 = call i32 @bsi_start(i32 %329)
  store i32 %330, i32* %28, align 4
  %331 = load i8*, i8** %27, align 8
  %332 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %333 = call i32 @bsi_insert_after(i32* %28, i8* %331, i32 %332)
  %334 = call i8* (...) @alloc_stmt_list()
  store i8* %334, i8** %27, align 8
  %335 = load i64, i64* @PLUS_EXPR, align 8
  %336 = load i8*, i8** %18, align 8
  %337 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %338 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %337, i32 0, i32 1
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %341 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %340, i32 0, i32 2
  %342 = load i8*, i8** %341, align 8
  %343 = call i8* @build2(i64 %335, i8* %336, i8* %339, i8* %342)
  store i8* %343, i8** %14, align 8
  %344 = load i64, i64* @MODIFY_EXPR, align 8
  %345 = load i8*, i8** @void_type_node, align 8
  %346 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %347 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %346, i32 0, i32 1
  %348 = load i8*, i8** %347, align 8
  %349 = load i8*, i8** %14, align 8
  %350 = call i8* @build2(i64 %344, i8* %345, i8* %348, i8* %349)
  store i8* %350, i8** %14, align 8
  %351 = load i8*, i8** %14, align 8
  %352 = call i32 @gimplify_and_add(i8* %351, i8** %27)
  %353 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %354 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i8*, i8** @boolean_type_node, align 8
  %357 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %358 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %357, i32 0, i32 1
  %359 = load i8*, i8** %358, align 8
  %360 = load i8*, i8** %13, align 8
  %361 = call i8* @build2(i64 %355, i8* %356, i8* %359, i8* %360)
  store i8* %361, i8** %14, align 8
  %362 = load i8*, i8** %14, align 8
  %363 = call i8* @get_formal_tmp_var(i8* %362, i8** %27)
  store i8* %363, i8** %14, align 8
  %364 = load i32, i32* @COND_EXPR, align 4
  %365 = load i8*, i8** @void_type_node, align 8
  %366 = load i8*, i8** %14, align 8
  %367 = call i32 @build_and_jump(i8** %7)
  %368 = call i32 @build_and_jump(i8** %8)
  %369 = call i8* @build3(i32 %364, i8* %365, i8* %366, i32 %367, i32 %368)
  store i8* %369, i8** %14, align 8
  %370 = load i8*, i8** %14, align 8
  %371 = call i32 @append_to_statement_list(i8* %370, i8** %27)
  %372 = load i32, i32* %25, align 4
  %373 = call i32 @bsi_last(i32 %372)
  store i32 %373, i32* %28, align 4
  %374 = load i32, i32* %28, align 4
  %375 = call i32 @bsi_stmt(i32 %374)
  %376 = call i64 @TREE_CODE(i32 %375)
  %377 = load i64, i64* @OMP_CONTINUE, align 8
  %378 = icmp eq i64 %376, %377
  %379 = zext i1 %378 to i32
  %380 = call i32 @gcc_assert(i32 %379)
  %381 = load i8*, i8** %27, align 8
  %382 = load i32, i32* @BSI_SAME_STMT, align 4
  %383 = call i32 @bsi_insert_after(i32* %28, i8* %381, i32 %382)
  %384 = call i32 @bsi_remove(i32* %28, i32 1)
  %385 = call i8* (...) @alloc_stmt_list()
  store i8* %385, i8** %27, align 8
  %386 = load i8*, i8** %18, align 8
  %387 = call i8* @build_int_cst(i8* %386, i32 1)
  store i8* %387, i8** %14, align 8
  %388 = load i64, i64* @PLUS_EXPR, align 8
  %389 = load i8*, i8** %18, align 8
  %390 = load i8*, i8** %15, align 8
  %391 = load i8*, i8** %14, align 8
  %392 = call i8* @build2(i64 %388, i8* %389, i8* %390, i8* %391)
  store i8* %392, i8** %14, align 8
  %393 = load i64, i64* @MODIFY_EXPR, align 8
  %394 = load i8*, i8** @void_type_node, align 8
  %395 = load i8*, i8** %15, align 8
  %396 = load i8*, i8** %14, align 8
  %397 = call i8* @build2(i64 %393, i8* %394, i8* %395, i8* %396)
  store i8* %397, i8** %14, align 8
  %398 = load i8*, i8** %14, align 8
  %399 = call i32 @gimplify_and_add(i8* %398, i8** %27)
  %400 = load i32, i32* %24, align 4
  %401 = call i32 @bsi_start(i32 %400)
  store i32 %401, i32* %28, align 4
  %402 = load i8*, i8** %27, align 8
  %403 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %404 = call i32 @bsi_insert_after(i32* %28, i8* %402, i32 %403)
  %405 = load i32, i32* %20, align 4
  %406 = call i32 @bsi_last(i32 %405)
  store i32 %406, i32* %28, align 4
  %407 = load i32, i32* %28, align 4
  %408 = call i32 @bsi_stmt(i32 %407)
  %409 = call i32 @OMP_RETURN_NOWAIT(i32 %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %417, label %411

411:                                              ; preds = %213
  %412 = call i8* (...) @alloc_stmt_list()
  store i8* %412, i8** %27, align 8
  %413 = call i32 @build_omp_barrier(i8** %27)
  %414 = load i8*, i8** %27, align 8
  %415 = load i32, i32* @BSI_SAME_STMT, align 4
  %416 = call i32 @bsi_insert_after(i32* %28, i8* %414, i32 %415)
  br label %417

417:                                              ; preds = %411, %213
  %418 = call i32 @bsi_remove(i32* %28, i32 1)
  %419 = load i32, i32* %19, align 4
  %420 = call i32 @single_succ_edge(i32 %419)
  %421 = call i32 @remove_edge(i32 %420)
  %422 = load i32, i32* %19, align 4
  %423 = load i32, i32* %23, align 4
  %424 = load i32, i32* @EDGE_FALLTHRU, align 4
  %425 = call i32 @make_edge(i32 %422, i32 %423, i32 %424)
  %426 = load i32, i32* %23, align 4
  %427 = load i32, i32* %22, align 4
  %428 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %429 = call i32 @make_edge(i32 %426, i32 %427, i32 %428)
  %430 = load i32, i32* %23, align 4
  %431 = load i32, i32* %26, align 4
  %432 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %433 = call i32 @make_edge(i32 %430, i32 %431, i32 %432)
  %434 = load i32, i32* %22, align 4
  %435 = load i32, i32* %21, align 4
  %436 = load i32, i32* @EDGE_FALLTHRU, align 4
  %437 = call i32 @make_edge(i32 %434, i32 %435, i32 %436)
  %438 = load i32, i32* %25, align 4
  %439 = call i32 @single_succ_edge(i32 %438)
  %440 = call i32 @remove_edge(i32 %439)
  %441 = load i32, i32* %25, align 4
  %442 = load i32, i32* %21, align 4
  %443 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %444 = call i32 @make_edge(i32 %441, i32 %442, i32 %443)
  %445 = load i32, i32* %25, align 4
  %446 = load i32, i32* %24, align 4
  %447 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %448 = call i32 @make_edge(i32 %445, i32 %446, i32 %447)
  %449 = load i32, i32* %24, align 4
  %450 = load i32, i32* %23, align 4
  %451 = load i32, i32* @EDGE_FALLTHRU, align 4
  %452 = call i32 @make_edge(i32 %449, i32 %450, i32 %451)
  ret void
}

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i32 @create_empty_bb(i32) #1

declare dso_local i32 @single_succ(i32) #1

declare dso_local i8* @tree_block_label(i32) #1

declare dso_local i8* @alloc_stmt_list(...) #1

declare dso_local i8* @build_function_call_expr(i8*, i32*) #1

declare dso_local i8* @fold_convert(i8*, i8*) #1

declare dso_local i8* @get_formal_tmp_var(i8*, i8**) #1

declare dso_local i64 @is_gimple_val(i8*) #1

declare dso_local i8* @build_int_cst(i8*, i32) #1

declare dso_local i8* @fold_build2(i64, i8*, i8*, i8*) #1

declare dso_local i8* @get_initialized_tmp_var(i8*, i8**, i32*) #1

declare dso_local i32 @bsi_last(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @bsi_insert_after(i32*, i8*, i32) #1

declare dso_local i32 @bsi_remove(i32*, i32) #1

declare dso_local i8* @build2(i64, i8*, i8*, i8*) #1

declare dso_local i8* @build3(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @build_and_jump(i8**) #1

declare dso_local i32 @append_to_statement_list(i8*, i8**) #1

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @gimplify_and_add(i8*, i8**) #1

declare dso_local i32 @OMP_RETURN_NOWAIT(i32) #1

declare dso_local i32 @build_omp_barrier(i8**) #1

declare dso_local i32 @remove_edge(i32) #1

declare dso_local i32 @single_succ_edge(i32) #1

declare dso_local i32 @make_edge(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
