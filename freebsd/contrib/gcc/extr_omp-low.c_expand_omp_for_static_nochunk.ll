; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_omp_for_static_nochunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_omp_for_static_nochunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { i32, i32, i32 }
%struct.omp_for_data = type { i64, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@built_in_decls = common dso_local global i8** null, align 8
@BUILT_IN_OMP_GET_NUM_THREADS = common dso_local global i64 0, align 8
@BUILT_IN_OMP_GET_THREAD_NUM = common dso_local global i64 0, align 8
@LT_EXPR = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i64 0, align 8
@TRUNC_DIV_EXPR = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i64 0, align 8
@NE_EXPR = common dso_local global i64 0, align 8
@MIN_EXPR = common dso_local global i64 0, align 8
@GE_EXPR = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i8* null, align 8
@COND_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i8* null, align 8
@OMP_FOR = common dso_local global i64 0, align 8
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i64 0, align 8
@BSI_CONTINUE_LINKING = common dso_local global i32 0, align 4
@OMP_CONTINUE = common dso_local global i64 0, align 8
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omp_region*, %struct.omp_for_data*)* @expand_omp_for_static_nochunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_omp_for_static_nochunk(%struct.omp_region* %0, %struct.omp_for_data* %1) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.omp_region* %0, %struct.omp_region** %3, align 8
  store %struct.omp_for_data* %1, %struct.omp_for_data** %4, align 8
  %25 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %26 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @TREE_TYPE(i8* %27)
  store i8* %28, i8** %16, align 8
  %29 = load %struct.omp_region*, %struct.omp_region** %3, align 8
  %30 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @create_empty_bb(i32 %32)
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %18, align 4
  %35 = call i32 @single_succ(i32 %34)
  store i32 %35, i32* %21, align 4
  %36 = load %struct.omp_region*, %struct.omp_region** %3, align 8
  %37 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %22, align 4
  %40 = call i32 @single_succ(i32 %39)
  store i32 %40, i32* %23, align 4
  %41 = load %struct.omp_region*, %struct.omp_region** %3, align 8
  %42 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %20, align 4
  %45 = call i8* @tree_block_label(i32 %44)
  store i8* %45, i8** %5, align 8
  %46 = load i32, i32* %21, align 4
  %47 = call i8* @tree_block_label(i32 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i32, i32* %23, align 4
  %49 = call i8* @tree_block_label(i32 %48)
  store i8* %49, i8** %7, align 8
  %50 = call i8* (...) @alloc_stmt_list()
  store i8* %50, i8** %17, align 8
  %51 = load i8**, i8*** @built_in_decls, align 8
  %52 = load i64, i64* @BUILT_IN_OMP_GET_NUM_THREADS, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = call i8* @build_function_call_expr(i8* %55, i32* null)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i8* @fold_convert(i8* %57, i8* %58)
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i8* @get_formal_tmp_var(i8* %60, i8** %17)
  store i8* %61, i8** %14, align 8
  %62 = load i8**, i8*** @built_in_decls, align 8
  %63 = load i64, i64* @BUILT_IN_OMP_GET_THREAD_NUM, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %13, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i8* @build_function_call_expr(i8* %66, i32* null)
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = call i8* @fold_convert(i8* %68, i8* %69)
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i8* @get_formal_tmp_var(i8* %71, i8** %17)
  store i8* %72, i8** %15, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %75 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @fold_convert(i8* %73, i8* %76)
  %78 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %79 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %81 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @is_gimple_val(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %2
  %86 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %87 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @get_formal_tmp_var(i8* %88, i8** %17)
  %90 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %91 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %85, %2
  %93 = load i8*, i8** %16, align 8
  %94 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %95 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @fold_convert(i8* %93, i8* %96)
  %98 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %99 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %101 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @is_gimple_val(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %92
  %106 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %107 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %106, i32 0, i32 4
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @get_formal_tmp_var(i8* %108, i8** %17)
  %110 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %111 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %105, %92
  %113 = load i8*, i8** %16, align 8
  %114 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %115 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @fold_convert(i8* %113, i8* %116)
  %118 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %119 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %121 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @is_gimple_val(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %112
  %126 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %127 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @get_formal_tmp_var(i8* %128, i8** %17)
  %130 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %131 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %125, %112
  %133 = load i8*, i8** %16, align 8
  %134 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %135 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LT_EXPR, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 -1, i32 1
  %141 = call i8* @build_int_cst(i8* %133, i32 %140)
  store i8* %141, i8** %13, align 8
  %142 = load i64, i64* @PLUS_EXPR, align 8
  %143 = load i8*, i8** %16, align 8
  %144 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %145 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = call i8* @fold_build2(i64 %142, i8* %143, i8* %146, i8* %147)
  store i8* %148, i8** %13, align 8
  %149 = load i64, i64* @PLUS_EXPR, align 8
  %150 = load i8*, i8** %16, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %153 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @fold_build2(i64 %149, i8* %150, i8* %151, i8* %154)
  store i8* %155, i8** %13, align 8
  %156 = load i64, i64* @MINUS_EXPR, align 8
  %157 = load i8*, i8** %16, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %160 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i8* @fold_build2(i64 %156, i8* %157, i8* %158, i8* %161)
  store i8* %162, i8** %13, align 8
  %163 = load i64, i64* @TRUNC_DIV_EXPR, align 8
  %164 = load i8*, i8** %16, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %167 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = call i8* @fold_build2(i64 %163, i8* %164, i8* %165, i8* %168)
  store i8* %169, i8** %13, align 8
  %170 = load i8*, i8** %16, align 8
  %171 = load i8*, i8** %13, align 8
  %172 = call i8* @fold_convert(i8* %170, i8* %171)
  store i8* %172, i8** %13, align 8
  %173 = load i8*, i8** %13, align 8
  %174 = call i64 @is_gimple_val(i8* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %132
  %177 = load i8*, i8** %13, align 8
  store i8* %177, i8** %8, align 8
  br label %181

178:                                              ; preds = %132
  %179 = load i8*, i8** %13, align 8
  %180 = call i8* @get_formal_tmp_var(i8* %179, i8** %17)
  store i8* %180, i8** %8, align 8
  br label %181

181:                                              ; preds = %178, %176
  %182 = load i64, i64* @TRUNC_DIV_EXPR, align 8
  %183 = load i8*, i8** %16, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = load i8*, i8** %14, align 8
  %186 = call i8* @build2(i64 %182, i8* %183, i8* %184, i8* %185)
  store i8* %186, i8** %13, align 8
  %187 = load i8*, i8** %13, align 8
  %188 = call i8* @get_formal_tmp_var(i8* %187, i8** %17)
  store i8* %188, i8** %9, align 8
  %189 = load i64, i64* @MULT_EXPR, align 8
  %190 = load i8*, i8** %16, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = call i8* @build2(i64 %189, i8* %190, i8* %191, i8* %192)
  store i8* %193, i8** %13, align 8
  %194 = load i64, i64* @NE_EXPR, align 8
  %195 = load i8*, i8** %16, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = load i8*, i8** %8, align 8
  %198 = call i8* @build2(i64 %194, i8* %195, i8* %196, i8* %197)
  store i8* %198, i8** %13, align 8
  %199 = load i64, i64* @PLUS_EXPR, align 8
  %200 = load i8*, i8** %16, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = load i8*, i8** %13, align 8
  %203 = call i8* @build2(i64 %199, i8* %200, i8* %201, i8* %202)
  store i8* %203, i8** %13, align 8
  %204 = load i8*, i8** %13, align 8
  %205 = call i8* @get_formal_tmp_var(i8* %204, i8** %17)
  store i8* %205, i8** %9, align 8
  %206 = load i64, i64* @MULT_EXPR, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = load i8*, i8** %9, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = call i8* @build2(i64 %206, i8* %207, i8* %208, i8* %209)
  store i8* %210, i8** %13, align 8
  %211 = load i8*, i8** %13, align 8
  %212 = call i8* @get_formal_tmp_var(i8* %211, i8** %17)
  store i8* %212, i8** %10, align 8
  %213 = load i64, i64* @PLUS_EXPR, align 8
  %214 = load i8*, i8** %16, align 8
  %215 = load i8*, i8** %10, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = call i8* @build2(i64 %213, i8* %214, i8* %215, i8* %216)
  store i8* %217, i8** %13, align 8
  %218 = load i64, i64* @MIN_EXPR, align 8
  %219 = load i8*, i8** %16, align 8
  %220 = load i8*, i8** %13, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = call i8* @build2(i64 %218, i8* %219, i8* %220, i8* %221)
  store i8* %222, i8** %13, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = call i8* @get_formal_tmp_var(i8* %223, i8** %17)
  store i8* %224, i8** %11, align 8
  %225 = load i64, i64* @GE_EXPR, align 8
  %226 = load i8*, i8** @boolean_type_node, align 8
  %227 = load i8*, i8** %10, align 8
  %228 = load i8*, i8** %11, align 8
  %229 = call i8* @build2(i64 %225, i8* %226, i8* %227, i8* %228)
  store i8* %229, i8** %13, align 8
  %230 = load i32, i32* @COND_EXPR, align 4
  %231 = load i8*, i8** @void_type_node, align 8
  %232 = load i8*, i8** %13, align 8
  %233 = call i32 @build_and_jump(i8** %7)
  %234 = call i32 @build_and_jump(i8** %5)
  %235 = call i8* @build3(i32 %230, i8* %231, i8* %232, i32 %233, i32 %234)
  store i8* %235, i8** %13, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = call i32 @append_to_statement_list(i8* %236, i8** %17)
  %238 = load i32, i32* %18, align 4
  %239 = call i32 @bsi_last(i32 %238)
  store i32 %239, i32* %24, align 4
  %240 = load i32, i32* %24, align 4
  %241 = call i32 @bsi_stmt(i32 %240)
  %242 = call i64 @TREE_CODE(i32 %241)
  %243 = load i64, i64* @OMP_FOR, align 8
  %244 = icmp eq i64 %242, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @gcc_assert(i32 %245)
  %247 = load i8*, i8** %17, align 8
  %248 = load i32, i32* @BSI_SAME_STMT, align 4
  %249 = call i32 @bsi_insert_after(i32* %24, i8* %247, i32 %248)
  %250 = call i32 @bsi_remove(i32* %24, i32 1)
  %251 = call i8* (...) @alloc_stmt_list()
  store i8* %251, i8** %17, align 8
  %252 = load i8*, i8** %16, align 8
  %253 = load i8*, i8** %10, align 8
  %254 = call i8* @fold_convert(i8* %252, i8* %253)
  store i8* %254, i8** %13, align 8
  %255 = load i64, i64* @MULT_EXPR, align 8
  %256 = load i8*, i8** %16, align 8
  %257 = load i8*, i8** %13, align 8
  %258 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %259 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %258, i32 0, i32 2
  %260 = load i8*, i8** %259, align 8
  %261 = call i8* @build2(i64 %255, i8* %256, i8* %257, i8* %260)
  store i8* %261, i8** %13, align 8
  %262 = load i64, i64* @PLUS_EXPR, align 8
  %263 = load i8*, i8** %16, align 8
  %264 = load i8*, i8** %13, align 8
  %265 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %266 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %265, i32 0, i32 3
  %267 = load i8*, i8** %266, align 8
  %268 = call i8* @build2(i64 %262, i8* %263, i8* %264, i8* %267)
  store i8* %268, i8** %13, align 8
  %269 = load i64, i64* @MODIFY_EXPR, align 8
  %270 = load i8*, i8** @void_type_node, align 8
  %271 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %272 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = load i8*, i8** %13, align 8
  %275 = call i8* @build2(i64 %269, i8* %270, i8* %273, i8* %274)
  store i8* %275, i8** %13, align 8
  %276 = load i8*, i8** %13, align 8
  %277 = call i32 @gimplify_and_add(i8* %276, i8** %17)
  %278 = load i8*, i8** %16, align 8
  %279 = load i8*, i8** %11, align 8
  %280 = call i8* @fold_convert(i8* %278, i8* %279)
  store i8* %280, i8** %13, align 8
  %281 = load i64, i64* @MULT_EXPR, align 8
  %282 = load i8*, i8** %16, align 8
  %283 = load i8*, i8** %13, align 8
  %284 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %285 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %284, i32 0, i32 2
  %286 = load i8*, i8** %285, align 8
  %287 = call i8* @build2(i64 %281, i8* %282, i8* %283, i8* %286)
  store i8* %287, i8** %13, align 8
  %288 = load i64, i64* @PLUS_EXPR, align 8
  %289 = load i8*, i8** %16, align 8
  %290 = load i8*, i8** %13, align 8
  %291 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %292 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %291, i32 0, i32 3
  %293 = load i8*, i8** %292, align 8
  %294 = call i8* @build2(i64 %288, i8* %289, i8* %290, i8* %293)
  store i8* %294, i8** %13, align 8
  %295 = load i8*, i8** %13, align 8
  %296 = call i8* @get_formal_tmp_var(i8* %295, i8** %17)
  store i8* %296, i8** %12, align 8
  %297 = load i32, i32* %20, align 4
  %298 = call i32 @bsi_start(i32 %297)
  store i32 %298, i32* %24, align 4
  %299 = load i8*, i8** %17, align 8
  %300 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %301 = call i32 @bsi_insert_after(i32* %24, i8* %299, i32 %300)
  %302 = call i8* (...) @alloc_stmt_list()
  store i8* %302, i8** %17, align 8
  %303 = load i64, i64* @PLUS_EXPR, align 8
  %304 = load i8*, i8** %16, align 8
  %305 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %306 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %309 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %308, i32 0, i32 2
  %310 = load i8*, i8** %309, align 8
  %311 = call i8* @build2(i64 %303, i8* %304, i8* %307, i8* %310)
  store i8* %311, i8** %13, align 8
  %312 = load i64, i64* @MODIFY_EXPR, align 8
  %313 = load i8*, i8** @void_type_node, align 8
  %314 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %315 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %314, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = load i8*, i8** %13, align 8
  %318 = call i8* @build2(i64 %312, i8* %313, i8* %316, i8* %317)
  store i8* %318, i8** %13, align 8
  %319 = load i8*, i8** %13, align 8
  %320 = call i32 @gimplify_and_add(i8* %319, i8** %17)
  %321 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %322 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i8*, i8** @boolean_type_node, align 8
  %325 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %326 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %325, i32 0, i32 1
  %327 = load i8*, i8** %326, align 8
  %328 = load i8*, i8** %12, align 8
  %329 = call i8* @build2(i64 %323, i8* %324, i8* %327, i8* %328)
  store i8* %329, i8** %13, align 8
  %330 = load i8*, i8** %13, align 8
  %331 = call i8* @get_formal_tmp_var(i8* %330, i8** %17)
  store i8* %331, i8** %13, align 8
  %332 = load i32, i32* @COND_EXPR, align 4
  %333 = load i8*, i8** @void_type_node, align 8
  %334 = load i8*, i8** %13, align 8
  %335 = call i32 @build_and_jump(i8** %6)
  %336 = call i32 @build_and_jump(i8** %7)
  %337 = call i8* @build3(i32 %332, i8* %333, i8* %334, i32 %335, i32 %336)
  store i8* %337, i8** %13, align 8
  %338 = load i8*, i8** %13, align 8
  %339 = call i32 @append_to_statement_list(i8* %338, i8** %17)
  %340 = load i32, i32* %22, align 4
  %341 = call i32 @bsi_last(i32 %340)
  store i32 %341, i32* %24, align 4
  %342 = load i32, i32* %24, align 4
  %343 = call i32 @bsi_stmt(i32 %342)
  %344 = call i64 @TREE_CODE(i32 %343)
  %345 = load i64, i64* @OMP_CONTINUE, align 8
  %346 = icmp eq i64 %344, %345
  %347 = zext i1 %346 to i32
  %348 = call i32 @gcc_assert(i32 %347)
  %349 = load i8*, i8** %17, align 8
  %350 = load i32, i32* @BSI_SAME_STMT, align 4
  %351 = call i32 @bsi_insert_after(i32* %24, i8* %349, i32 %350)
  %352 = call i32 @bsi_remove(i32* %24, i32 1)
  %353 = load i32, i32* %19, align 4
  %354 = call i32 @bsi_last(i32 %353)
  store i32 %354, i32* %24, align 4
  %355 = load i32, i32* %24, align 4
  %356 = call i32 @bsi_stmt(i32 %355)
  %357 = call i32 @OMP_RETURN_NOWAIT(i32 %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %365, label %359

359:                                              ; preds = %181
  %360 = call i8* (...) @alloc_stmt_list()
  store i8* %360, i8** %17, align 8
  %361 = call i32 @build_omp_barrier(i8** %17)
  %362 = load i8*, i8** %17, align 8
  %363 = load i32, i32* @BSI_SAME_STMT, align 4
  %364 = call i32 @bsi_insert_after(i32* %24, i8* %362, i32 %363)
  br label %365

365:                                              ; preds = %359, %181
  %366 = call i32 @bsi_remove(i32* %24, i32 1)
  %367 = load i32, i32* %20, align 4
  %368 = load i32, i32* %21, align 4
  %369 = load i32, i32* @EDGE_FALLTHRU, align 4
  %370 = call i32 @make_edge(i32 %367, i32 %368, i32 %369)
  %371 = load i32, i32* %18, align 4
  %372 = call i32 @single_succ_edge(i32 %371)
  %373 = call i32 @remove_edge(i32 %372)
  %374 = load i32, i32* %18, align 4
  %375 = load i32, i32* %23, align 4
  %376 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %377 = call i32 @make_edge(i32 %374, i32 %375, i32 %376)
  %378 = load i32, i32* %18, align 4
  %379 = load i32, i32* %20, align 4
  %380 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %381 = call i32 @make_edge(i32 %378, i32 %379, i32 %380)
  %382 = load i32, i32* %22, align 4
  %383 = load i32, i32* %21, align 4
  %384 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %385 = call i32 @make_edge(i32 %382, i32 %383, i32 %384)
  %386 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %387 = load i32, i32* %22, align 4
  %388 = load i32, i32* %23, align 4
  %389 = call %struct.TYPE_2__* @find_edge(i32 %387, i32 %388)
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 0
  store i32 %386, i32* %390, align 4
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

declare dso_local i8* @build2(i64, i8*, i8*, i8*) #1

declare dso_local i8* @build3(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @build_and_jump(i8**) #1

declare dso_local i32 @append_to_statement_list(i8*, i8**) #1

declare dso_local i32 @bsi_last(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @bsi_insert_after(i32*, i8*, i32) #1

declare dso_local i32 @bsi_remove(i32*, i32) #1

declare dso_local i32 @gimplify_and_add(i8*, i8**) #1

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @OMP_RETURN_NOWAIT(i32) #1

declare dso_local i32 @build_omp_barrier(i8**) #1

declare dso_local i32 @make_edge(i32, i32, i32) #1

declare dso_local i32 @remove_edge(i32) #1

declare dso_local i32 @single_succ_edge(i32) #1

declare dso_local %struct.TYPE_2__* @find_edge(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
