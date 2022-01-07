; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mf_build_check_statement_for.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mf_build_check_statement_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_23__*, %struct.TYPE_23__* }

@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@mf_cache_structptr_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"__mf_elem\00", align 1
@mf_uintptr_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"__mf_base\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"__mf_limit\00", align 1
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@TSI_CONTINUE_LINKING = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@flag_mudflap_threads = common dso_local global i64 0, align 8
@mf_cache_shift_decl = common dso_local global i32 0, align 4
@mf_cache_shift_decl_l = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@mf_cache_mask_decl = common dso_local global i32 0, align 4
@mf_cache_mask_decl_l = common dso_local global i32 0, align 4
@ARRAY_REF = common dso_local global i32 0, align 4
@mf_cache_array_decl = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@mf_cache_struct_type = common dso_local global i32 0, align 4
@GT_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@TRUTH_OR_EXPR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"__mf_unlikely_cond\00", align 1
@COND_EXPR = common dso_local global i32 0, align 4
@GOTO_EXPR = common dso_local global i32 0, align 4
@BSI_CONTINUE_LINKING = common dso_local global i32 0, align 4
@UNKNOWN_LOCATION = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@mf_check_fndecl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32)* @mf_build_check_statement_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mf_build_check_statement_for(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bsi_stmt(i32 %26)
  %28 = call %struct.TYPE_23__* @bb_for_stmt(i32 %27)
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %14, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = call i32 @bsi_prev(i32* %13)
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @bsi_end_p(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %5
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @bsi_stmt(i32 %37)
  %39 = call %struct.TYPE_22__* @split_block(%struct.TYPE_23__* %36, i32 %38)
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %17, align 8
  br label %43

40:                                               ; preds = %5
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %42 = call %struct.TYPE_22__* @split_block_after_labels(%struct.TYPE_23__* %41)
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %17, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %45, align 8
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %14, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %16, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %51 = call %struct.TYPE_23__* @create_empty_bb(%struct.TYPE_23__* %50)
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %15, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %54 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %55 = call i32 @make_edge(%struct.TYPE_23__* %52, %struct.TYPE_23__* %53, i32 %54)
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %58 = load i32, i32* @EDGE_FALLTHRU, align 4
  %59 = call i32 @make_single_succ_edge(%struct.TYPE_23__* %56, %struct.TYPE_23__* %57, i32 %58)
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %62 = call %struct.TYPE_22__* @find_edge(%struct.TYPE_23__* %60, %struct.TYPE_23__* %61)
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %17, align 8
  %63 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @CDI_DOMINATORS, align 4
  %75 = call i64 @dom_info_available_p(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %43
  %78 = load i32, i32* @CDI_DOMINATORS, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %81 = call i32 @set_immediate_dominator(i32 %78, %struct.TYPE_23__* %79, %struct.TYPE_23__* %80)
  %82 = load i32, i32* @CDI_DOMINATORS, align 4
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %85 = call i32 @set_immediate_dominator(i32 %82, %struct.TYPE_23__* %83, %struct.TYPE_23__* %84)
  br label %86

86:                                               ; preds = %77, %43
  %87 = load i32, i32* @mf_cache_structptr_type, align 4
  %88 = call i32 @create_tmp_var(i32 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %88, i32* %23, align 4
  %89 = load i32, i32* @mf_uintptr_type, align 4
  %90 = call i32 @create_tmp_var(i32 %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* @mf_uintptr_type, align 4
  %92 = call i32 @create_tmp_var(i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %92, i32* %24, align 4
  %93 = load i32, i32* @MODIFY_EXPR, align 4
  %94 = load i32, i32* @void_type_node, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* @mf_uintptr_type, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @unshare_expr(i32 %97)
  %99 = call i32 @convert(i32 %96, i32 %98)
  %100 = call i32 @build2(i32 %93, i32 %94, i32 %95, i32 %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @SET_EXPR_LOCUS(i32 %101, i32* %102)
  %104 = call i32 @gimplify_to_stmt_list(i32* %19)
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @tsi_start(i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %19, align 4
  %108 = call i32 @tsi_last(i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* @MODIFY_EXPR, align 4
  %110 = load i32, i32* @void_type_node, align 4
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* @mf_uintptr_type, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @unshare_expr(i32 %113)
  %115 = call i32 @convert(i32 %112, i32 %114)
  %116 = call i32 @build2(i32 %109, i32 %110, i32 %111, i32 %115)
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @SET_EXPR_LOCUS(i32 %117, i32* %118)
  %120 = call i32 @gimplify_to_stmt_list(i32* %19)
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* @TSI_CONTINUE_LINKING, align 4
  %123 = call i32 @tsi_link_after(i32* %12, i32 %121, i32 %122)
  %124 = load i32, i32* @RSHIFT_EXPR, align 4
  %125 = load i32, i32* @mf_uintptr_type, align 4
  %126 = load i32, i32* %22, align 4
  %127 = load i64, i64* @flag_mudflap_threads, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %86
  %130 = load i32, i32* @mf_cache_shift_decl, align 4
  br label %133

131:                                              ; preds = %86
  %132 = load i32, i32* @mf_cache_shift_decl_l, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = call i32 @build2(i32 %124, i32 %125, i32 %126, i32 %134)
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* @BIT_AND_EXPR, align 4
  %137 = load i32, i32* @mf_uintptr_type, align 4
  %138 = load i32, i32* %19, align 4
  %139 = load i64, i64* @flag_mudflap_threads, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* @mf_cache_mask_decl, align 4
  br label %145

143:                                              ; preds = %133
  %144 = load i32, i32* @mf_cache_mask_decl_l, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = call i32 @build2(i32 %136, i32 %137, i32 %138, i32 %146)
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* @ARRAY_REF, align 4
  %149 = load i32, i32* @mf_cache_array_decl, align 4
  %150 = call i32 @TREE_TYPE(i32 %149)
  %151 = call i32 @TREE_TYPE(i32 %150)
  %152 = load i32, i32* @mf_cache_array_decl, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* @NULL_TREE, align 4
  %155 = load i32, i32* @NULL_TREE, align 4
  %156 = call i32 @build4(i32 %148, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %19, align 4
  %157 = load i32, i32* @ADDR_EXPR, align 4
  %158 = load i32, i32* @mf_cache_structptr_type, align 4
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @build1(i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* @MODIFY_EXPR, align 4
  %162 = load i32, i32* @void_type_node, align 4
  %163 = load i32, i32* %23, align 4
  %164 = load i32, i32* %19, align 4
  %165 = call i32 @build2(i32 %161, i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %19, align 4
  %166 = load i32, i32* %19, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 @SET_EXPR_LOCUS(i32 %166, i32* %167)
  %169 = call i32 @gimplify_to_stmt_list(i32* %19)
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* @TSI_CONTINUE_LINKING, align 4
  %172 = call i32 @tsi_link_after(i32* %12, i32 %170, i32 %171)
  %173 = load i32, i32* @COMPONENT_REF, align 4
  %174 = load i32, i32* @mf_uintptr_type, align 4
  %175 = load i32, i32* @INDIRECT_REF, align 4
  %176 = load i32, i32* @mf_cache_struct_type, align 4
  %177 = load i32, i32* %23, align 4
  %178 = call i32 @build1(i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* @mf_cache_struct_type, align 4
  %180 = call i32 @TYPE_FIELDS(i32 %179)
  %181 = load i32, i32* @NULL_TREE, align 4
  %182 = call i32 @build3(i32 %173, i32 %174, i32 %178, i32 %180, i32 %181)
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* @GT_EXPR, align 4
  %184 = load i32, i32* @boolean_type_node, align 4
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %22, align 4
  %187 = call i32 @build2(i32 %183, i32 %184, i32 %185, i32 %186)
  store i32 %187, i32* %19, align 4
  %188 = load i32, i32* @COMPONENT_REF, align 4
  %189 = load i32, i32* @mf_uintptr_type, align 4
  %190 = load i32, i32* @INDIRECT_REF, align 4
  %191 = load i32, i32* @mf_cache_struct_type, align 4
  %192 = load i32, i32* %23, align 4
  %193 = call i32 @build1(i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* @mf_cache_struct_type, align 4
  %195 = call i32 @TYPE_FIELDS(i32 %194)
  %196 = call i32 @TREE_CHAIN(i32 %195)
  %197 = load i32, i32* @NULL_TREE, align 4
  %198 = call i32 @build3(i32 %188, i32 %189, i32 %193, i32 %196, i32 %197)
  store i32 %198, i32* %20, align 4
  %199 = load i32, i32* %24, align 4
  store i32 %199, i32* %21, align 4
  %200 = load i32, i32* @LT_EXPR, align 4
  %201 = load i32, i32* @boolean_type_node, align 4
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %21, align 4
  %204 = call i32 @build2(i32 %200, i32 %201, i32 %202, i32 %203)
  store i32 %204, i32* %20, align 4
  %205 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %206 = load i32, i32* @boolean_type_node, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %20, align 4
  %209 = call i32 @build2(i32 %205, i32 %206, i32 %207, i32 %208)
  store i32 %209, i32* %19, align 4
  %210 = load i32, i32* @boolean_type_node, align 4
  %211 = call i32 @create_tmp_var(i32 %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %211, i32* %18, align 4
  %212 = load i32, i32* @MODIFY_EXPR, align 4
  %213 = load i32, i32* @boolean_type_node, align 4
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %19, align 4
  %216 = call i32 @build2(i32 %212, i32 %213, i32 %214, i32 %215)
  store i32 %216, i32* %19, align 4
  %217 = call i32 @gimplify_to_stmt_list(i32* %19)
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* @TSI_CONTINUE_LINKING, align 4
  %220 = call i32 @tsi_link_after(i32* %12, i32 %218, i32 %219)
  %221 = load i32, i32* @COND_EXPR, align 4
  %222 = load i32, i32* @void_type_node, align 4
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* @GOTO_EXPR, align 4
  %225 = load i32, i32* @void_type_node, align 4
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %227 = call i32 @tree_block_label(%struct.TYPE_23__* %226)
  %228 = call i32 @build1(i32 %224, i32 %225, i32 %227)
  %229 = load i32, i32* @GOTO_EXPR, align 4
  %230 = load i32, i32* @void_type_node, align 4
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %232 = call i32 @tree_block_label(%struct.TYPE_23__* %231)
  %233 = call i32 @build1(i32 %229, i32 %230, i32 %232)
  %234 = call i32 @build3(i32 %221, i32 %222, i32 %223, i32 %228, i32 %233)
  store i32 %234, i32* %19, align 4
  %235 = load i32, i32* %19, align 4
  %236 = load i32*, i32** %9, align 8
  %237 = call i32 @SET_EXPR_LOCUS(i32 %235, i32* %236)
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* @TSI_CONTINUE_LINKING, align 4
  %240 = call i32 @tsi_link_after(i32* %12, i32 %238, i32 %239)
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %242 = call i32 @bsi_last(%struct.TYPE_23__* %241)
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %11, align 4
  store i32 %243, i32* %12, align 4
  br label %244

244:                                              ; preds = %254, %145
  %245 = load i32, i32* %12, align 4
  %246 = call i32 @tsi_end_p(i32 %245)
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  br i1 %248, label %249, label %256

249:                                              ; preds = %244
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @tsi_stmt(i32 %250)
  %252 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %253 = call i32 @bsi_insert_after(i32* %13, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %249
  %255 = call i32 @tsi_next(i32* %12)
  br label %244

256:                                              ; preds = %244
  %257 = load i32, i32* @NULL_TREE, align 4
  %258 = load i32*, i32** %9, align 8
  %259 = icmp eq i32* %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = load i32, i32* @UNKNOWN_LOCATION, align 4
  br label %265

262:                                              ; preds = %256
  %263 = load i32*, i32** %9, align 8
  %264 = load i32, i32* %263, align 4
  br label %265

265:                                              ; preds = %262, %260
  %266 = phi i32 [ %261, %260 ], [ %264, %262 ]
  %267 = call i32 @mf_file_function_line_tree(i32 %266)
  %268 = load i32, i32* @NULL_TREE, align 4
  %269 = call i32 @tree_cons(i32 %257, i32 %267, i32 %268)
  store i32 %269, i32* %20, align 4
  %270 = load i32, i32* @NULL_TREE, align 4
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %20, align 4
  %273 = call i32 @tree_cons(i32 %270, i32 %271, i32 %272)
  store i32 %273, i32* %20, align 4
  %274 = load i32, i32* @NULL_TREE, align 4
  %275 = load i32, i32* @PLUS_EXPR, align 4
  %276 = load i32, i32* @integer_type_node, align 4
  %277 = load i32, i32* @MINUS_EXPR, align 4
  %278 = load i32, i32* @mf_uintptr_type, align 4
  %279 = load i32, i32* %24, align 4
  %280 = load i32, i32* %22, align 4
  %281 = call i32 @fold_build2(i32 %277, i32 %278, i32 %279, i32 %280)
  %282 = load i32, i32* @integer_one_node, align 4
  %283 = call i32 @fold_build2(i32 %275, i32 %276, i32 %281, i32 %282)
  %284 = load i32, i32* %20, align 4
  %285 = call i32 @tree_cons(i32 %274, i32 %283, i32 %284)
  store i32 %285, i32* %20, align 4
  %286 = load i32, i32* @NULL_TREE, align 4
  %287 = load i32, i32* %22, align 4
  %288 = load i32, i32* %20, align 4
  %289 = call i32 @tree_cons(i32 %286, i32 %287, i32 %288)
  store i32 %289, i32* %20, align 4
  %290 = load i32, i32* @mf_check_fndecl, align 4
  %291 = load i32, i32* %20, align 4
  %292 = call i32 @build_function_call_expr(i32 %290, i32 %291)
  store i32 %292, i32* %19, align 4
  %293 = call i32 @gimplify_to_stmt_list(i32* %19)
  %294 = load i32, i32* %19, align 4
  %295 = call i32 @tsi_start(i32 %294)
  store i32 %295, i32* %11, align 4
  %296 = load i32, i32* %19, align 4
  %297 = call i32 @tsi_last(i32 %296)
  store i32 %297, i32* %12, align 4
  %298 = load i64, i64* @flag_mudflap_threads, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %317, label %300

300:                                              ; preds = %265
  %301 = load i32, i32* @MODIFY_EXPR, align 4
  %302 = load i32, i32* @void_type_node, align 4
  %303 = load i32, i32* @mf_cache_shift_decl_l, align 4
  %304 = load i32, i32* @mf_cache_shift_decl, align 4
  %305 = call i32 @build2(i32 %301, i32 %302, i32 %303, i32 %304)
  store i32 %305, i32* %19, align 4
  %306 = load i32, i32* %19, align 4
  %307 = load i32, i32* @TSI_CONTINUE_LINKING, align 4
  %308 = call i32 @tsi_link_after(i32* %12, i32 %306, i32 %307)
  %309 = load i32, i32* @MODIFY_EXPR, align 4
  %310 = load i32, i32* @void_type_node, align 4
  %311 = load i32, i32* @mf_cache_mask_decl_l, align 4
  %312 = load i32, i32* @mf_cache_mask_decl, align 4
  %313 = call i32 @build2(i32 %309, i32 %310, i32 %311, i32 %312)
  store i32 %313, i32* %19, align 4
  %314 = load i32, i32* %19, align 4
  %315 = load i32, i32* @TSI_CONTINUE_LINKING, align 4
  %316 = call i32 @tsi_link_after(i32* %12, i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %300, %265
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %319 = call i32 @bsi_start(%struct.TYPE_23__* %318)
  store i32 %319, i32* %13, align 4
  %320 = load i32, i32* %11, align 4
  store i32 %320, i32* %12, align 4
  br label %321

321:                                              ; preds = %331, %317
  %322 = load i32, i32* %12, align 4
  %323 = call i32 @tsi_end_p(i32 %322)
  %324 = icmp ne i32 %323, 0
  %325 = xor i1 %324, true
  br i1 %325, label %326, label %333

326:                                              ; preds = %321
  %327 = load i32, i32* %12, align 4
  %328 = call i32 @tsi_stmt(i32 %327)
  %329 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %330 = call i32 @bsi_insert_after(i32* %13, i32 %328, i32 %329)
  br label %331

331:                                              ; preds = %326
  %332 = call i32 @tsi_next(i32* %12)
  br label %321

333:                                              ; preds = %321
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %335 = call i32 @bsi_start(%struct.TYPE_23__* %334)
  %336 = load i32*, i32** %8, align 8
  store i32 %335, i32* %336, align 4
  %337 = load i32*, i32** %8, align 8
  %338 = call i32 @bsi_next(i32* %337)
  ret void
}

declare dso_local %struct.TYPE_23__* @bb_for_stmt(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @bsi_prev(i32*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local %struct.TYPE_22__* @split_block(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_22__* @split_block_after_labels(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @create_empty_bb(%struct.TYPE_23__*) #1

declare dso_local i32 @make_edge(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @make_single_succ_edge(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_22__* @find_edge(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i64 @dom_info_available_p(i32) #1

declare dso_local i32 @set_immediate_dominator(i32, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @create_tmp_var(i32, i8*) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i32 @unshare_expr(i32) #1

declare dso_local i32 @SET_EXPR_LOCUS(i32, i32*) #1

declare dso_local i32 @gimplify_to_stmt_list(i32*) #1

declare dso_local i32 @tsi_start(i32) #1

declare dso_local i32 @tsi_last(i32) #1

declare dso_local i32 @tsi_link_after(i32*, i32, i32) #1

declare dso_local i32 @build4(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @tree_block_label(%struct.TYPE_23__*) #1

declare dso_local i32 @bsi_last(%struct.TYPE_23__*) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32 @bsi_insert_after(i32*, i32, i32) #1

declare dso_local i32 @tsi_stmt(i32) #1

declare dso_local i32 @tsi_next(i32*) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @mf_file_function_line_tree(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

declare dso_local i32 @bsi_start(%struct.TYPE_23__*) #1

declare dso_local i32 @bsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
