; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_init_ttree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_init_ttree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@TYPE_HASH_INITIAL_SIZE = common dso_local global i32 0, align 4
@type_hash_hash = common dso_local global i32 0, align 4
@type_hash_eq = common dso_local global i32 0, align 4
@type_hash_table = common dso_local global i8* null, align 8
@tree_map_hash = common dso_local global i32 0, align 4
@tree_map_eq = common dso_local global i32 0, align 4
@debug_expr_for_decl = common dso_local global i8* null, align 8
@value_expr_for_decl = common dso_local global i8* null, align 8
@tree_int_map_hash = common dso_local global i32 0, align 4
@tree_int_map_eq = common dso_local global i32 0, align 4
@init_priority_for_decl = common dso_local global i8* null, align 8
@restrict_base_for_decl = common dso_local global i8* null, align 8
@int_cst_hash_hash = common dso_local global i32 0, align 4
@int_cst_hash_eq = common dso_local global i32 0, align 4
@int_cst_hash_table = common dso_local global i8* null, align 8
@INTEGER_CST = common dso_local global i32 0, align 4
@int_cst_node = common dso_local global i32 0, align 4
@tree_contains_struct = common dso_local global i32** null, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@TS_DECL_NON_COMMON = common dso_local global i64 0, align 8
@TRANSLATION_UNIT_DECL = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@CONST_DECL = common dso_local global i64 0, align 8
@TS_DECL_COMMON = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@RESULT_DECL = common dso_local global i64 0, align 8
@LABEL_DECL = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@TS_DECL_WRTL = common dso_local global i64 0, align 8
@TS_DECL_MINIMAL = common dso_local global i64 0, align 8
@STRUCT_FIELD_TAG = common dso_local global i64 0, align 8
@NAME_MEMORY_TAG = common dso_local global i64 0, align 8
@SYMBOL_MEMORY_TAG = common dso_local global i64 0, align 8
@TS_MEMORY_TAG = common dso_local global i64 0, align 8
@TS_STRUCT_FIELD_TAG = common dso_local global i64 0, align 8
@TS_DECL_WITH_VIS = common dso_local global i64 0, align 8
@TS_VAR_DECL = common dso_local global i64 0, align 8
@TS_FIELD_DECL = common dso_local global i64 0, align 8
@TS_PARM_DECL = common dso_local global i64 0, align 8
@TS_LABEL_DECL = common dso_local global i64 0, align 8
@TS_RESULT_DECL = common dso_local global i64 0, align 8
@TS_CONST_DECL = common dso_local global i64 0, align 8
@TS_TYPE_DECL = common dso_local global i64 0, align 8
@TS_FUNCTION_DECL = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_ttree() #0 {
  %1 = load i32, i32* @TYPE_HASH_INITIAL_SIZE, align 4
  %2 = load i32, i32* @type_hash_hash, align 4
  %3 = load i32, i32* @type_hash_eq, align 4
  %4 = call i8* @htab_create_ggc(i32 %1, i32 %2, i32 %3, i32* null)
  store i8* %4, i8** @type_hash_table, align 8
  %5 = load i32, i32* @tree_map_hash, align 4
  %6 = load i32, i32* @tree_map_eq, align 4
  %7 = call i8* @htab_create_ggc(i32 512, i32 %5, i32 %6, i32* null)
  store i8* %7, i8** @debug_expr_for_decl, align 8
  %8 = load i32, i32* @tree_map_hash, align 4
  %9 = load i32, i32* @tree_map_eq, align 4
  %10 = call i8* @htab_create_ggc(i32 512, i32 %8, i32 %9, i32* null)
  store i8* %10, i8** @value_expr_for_decl, align 8
  %11 = load i32, i32* @tree_int_map_hash, align 4
  %12 = load i32, i32* @tree_int_map_eq, align 4
  %13 = call i8* @htab_create_ggc(i32 512, i32 %11, i32 %12, i32* null)
  store i8* %13, i8** @init_priority_for_decl, align 8
  %14 = load i32, i32* @tree_map_hash, align 4
  %15 = load i32, i32* @tree_map_eq, align 4
  %16 = call i8* @htab_create_ggc(i32 256, i32 %14, i32 %15, i32* null)
  store i8* %16, i8** @restrict_base_for_decl, align 8
  %17 = load i32, i32* @int_cst_hash_hash, align 4
  %18 = load i32, i32* @int_cst_hash_eq, align 4
  %19 = call i8* @htab_create_ggc(i32 1024, i32 %17, i32 %18, i32* null)
  store i8* %19, i8** @int_cst_hash_table, align 8
  %20 = load i32, i32* @INTEGER_CST, align 4
  %21 = call i32 @make_node(i32 %20)
  store i32 %21, i32* @int_cst_node, align 4
  %22 = load i32**, i32*** @tree_contains_struct, align 8
  %23 = load i64, i64* @FUNCTION_DECL, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @TS_DECL_NON_COMMON, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 1, i32* %27, align 4
  %28 = load i32**, i32*** @tree_contains_struct, align 8
  %29 = load i64, i64* @TRANSLATION_UNIT_DECL, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @TS_DECL_NON_COMMON, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 1, i32* %33, align 4
  %34 = load i32**, i32*** @tree_contains_struct, align 8
  %35 = load i64, i64* @TYPE_DECL, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @TS_DECL_NON_COMMON, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 1, i32* %39, align 4
  %40 = load i32**, i32*** @tree_contains_struct, align 8
  %41 = load i64, i64* @CONST_DECL, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @TS_DECL_COMMON, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 1, i32* %45, align 4
  %46 = load i32**, i32*** @tree_contains_struct, align 8
  %47 = load i64, i64* @VAR_DECL, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @TS_DECL_COMMON, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 1, i32* %51, align 4
  %52 = load i32**, i32*** @tree_contains_struct, align 8
  %53 = load i64, i64* @PARM_DECL, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @TS_DECL_COMMON, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 1, i32* %57, align 4
  %58 = load i32**, i32*** @tree_contains_struct, align 8
  %59 = load i64, i64* @RESULT_DECL, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @TS_DECL_COMMON, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 1, i32* %63, align 4
  %64 = load i32**, i32*** @tree_contains_struct, align 8
  %65 = load i64, i64* @FUNCTION_DECL, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @TS_DECL_COMMON, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 1, i32* %69, align 4
  %70 = load i32**, i32*** @tree_contains_struct, align 8
  %71 = load i64, i64* @TYPE_DECL, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @TS_DECL_COMMON, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 1, i32* %75, align 4
  %76 = load i32**, i32*** @tree_contains_struct, align 8
  %77 = load i64, i64* @TRANSLATION_UNIT_DECL, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @TS_DECL_COMMON, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 1, i32* %81, align 4
  %82 = load i32**, i32*** @tree_contains_struct, align 8
  %83 = load i64, i64* @LABEL_DECL, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @TS_DECL_COMMON, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 1, i32* %87, align 4
  %88 = load i32**, i32*** @tree_contains_struct, align 8
  %89 = load i64, i64* @FIELD_DECL, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @TS_DECL_COMMON, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 1, i32* %93, align 4
  %94 = load i32**, i32*** @tree_contains_struct, align 8
  %95 = load i64, i64* @CONST_DECL, align 8
  %96 = getelementptr inbounds i32*, i32** %94, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @TS_DECL_WRTL, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 1, i32* %99, align 4
  %100 = load i32**, i32*** @tree_contains_struct, align 8
  %101 = load i64, i64* @VAR_DECL, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @TS_DECL_WRTL, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 1, i32* %105, align 4
  %106 = load i32**, i32*** @tree_contains_struct, align 8
  %107 = load i64, i64* @PARM_DECL, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @TS_DECL_WRTL, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 1, i32* %111, align 4
  %112 = load i32**, i32*** @tree_contains_struct, align 8
  %113 = load i64, i64* @RESULT_DECL, align 8
  %114 = getelementptr inbounds i32*, i32** %112, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @TS_DECL_WRTL, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 1, i32* %117, align 4
  %118 = load i32**, i32*** @tree_contains_struct, align 8
  %119 = load i64, i64* @FUNCTION_DECL, align 8
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @TS_DECL_WRTL, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 1, i32* %123, align 4
  %124 = load i32**, i32*** @tree_contains_struct, align 8
  %125 = load i64, i64* @LABEL_DECL, align 8
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @TS_DECL_WRTL, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 1, i32* %129, align 4
  %130 = load i32**, i32*** @tree_contains_struct, align 8
  %131 = load i64, i64* @CONST_DECL, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 1, i32* %135, align 4
  %136 = load i32**, i32*** @tree_contains_struct, align 8
  %137 = load i64, i64* @VAR_DECL, align 8
  %138 = getelementptr inbounds i32*, i32** %136, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32 1, i32* %141, align 4
  %142 = load i32**, i32*** @tree_contains_struct, align 8
  %143 = load i64, i64* @PARM_DECL, align 8
  %144 = getelementptr inbounds i32*, i32** %142, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32 1, i32* %147, align 4
  %148 = load i32**, i32*** @tree_contains_struct, align 8
  %149 = load i64, i64* @RESULT_DECL, align 8
  %150 = getelementptr inbounds i32*, i32** %148, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 1, i32* %153, align 4
  %154 = load i32**, i32*** @tree_contains_struct, align 8
  %155 = load i64, i64* @FUNCTION_DECL, align 8
  %156 = getelementptr inbounds i32*, i32** %154, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32 1, i32* %159, align 4
  %160 = load i32**, i32*** @tree_contains_struct, align 8
  %161 = load i64, i64* @TYPE_DECL, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 1, i32* %165, align 4
  %166 = load i32**, i32*** @tree_contains_struct, align 8
  %167 = load i64, i64* @TRANSLATION_UNIT_DECL, align 8
  %168 = getelementptr inbounds i32*, i32** %166, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 1, i32* %171, align 4
  %172 = load i32**, i32*** @tree_contains_struct, align 8
  %173 = load i64, i64* @LABEL_DECL, align 8
  %174 = getelementptr inbounds i32*, i32** %172, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32 1, i32* %177, align 4
  %178 = load i32**, i32*** @tree_contains_struct, align 8
  %179 = load i64, i64* @FIELD_DECL, align 8
  %180 = getelementptr inbounds i32*, i32** %178, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32 1, i32* %183, align 4
  %184 = load i32**, i32*** @tree_contains_struct, align 8
  %185 = load i64, i64* @STRUCT_FIELD_TAG, align 8
  %186 = getelementptr inbounds i32*, i32** %184, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 1, i32* %189, align 4
  %190 = load i32**, i32*** @tree_contains_struct, align 8
  %191 = load i64, i64* @NAME_MEMORY_TAG, align 8
  %192 = getelementptr inbounds i32*, i32** %190, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 1, i32* %195, align 4
  %196 = load i32**, i32*** @tree_contains_struct, align 8
  %197 = load i64, i64* @SYMBOL_MEMORY_TAG, align 8
  %198 = getelementptr inbounds i32*, i32** %196, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32 1, i32* %201, align 4
  %202 = load i32**, i32*** @tree_contains_struct, align 8
  %203 = load i64, i64* @STRUCT_FIELD_TAG, align 8
  %204 = getelementptr inbounds i32*, i32** %202, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @TS_MEMORY_TAG, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32 1, i32* %207, align 4
  %208 = load i32**, i32*** @tree_contains_struct, align 8
  %209 = load i64, i64* @NAME_MEMORY_TAG, align 8
  %210 = getelementptr inbounds i32*, i32** %208, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @TS_MEMORY_TAG, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 1, i32* %213, align 4
  %214 = load i32**, i32*** @tree_contains_struct, align 8
  %215 = load i64, i64* @SYMBOL_MEMORY_TAG, align 8
  %216 = getelementptr inbounds i32*, i32** %214, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @TS_MEMORY_TAG, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32 1, i32* %219, align 4
  %220 = load i32**, i32*** @tree_contains_struct, align 8
  %221 = load i64, i64* @STRUCT_FIELD_TAG, align 8
  %222 = getelementptr inbounds i32*, i32** %220, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* @TS_STRUCT_FIELD_TAG, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32 1, i32* %225, align 4
  %226 = load i32**, i32*** @tree_contains_struct, align 8
  %227 = load i64, i64* @VAR_DECL, align 8
  %228 = getelementptr inbounds i32*, i32** %226, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @TS_DECL_WITH_VIS, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  store i32 1, i32* %231, align 4
  %232 = load i32**, i32*** @tree_contains_struct, align 8
  %233 = load i64, i64* @FUNCTION_DECL, align 8
  %234 = getelementptr inbounds i32*, i32** %232, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @TS_DECL_WITH_VIS, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32 1, i32* %237, align 4
  %238 = load i32**, i32*** @tree_contains_struct, align 8
  %239 = load i64, i64* @TYPE_DECL, align 8
  %240 = getelementptr inbounds i32*, i32** %238, i64 %239
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* @TS_DECL_WITH_VIS, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32 1, i32* %243, align 4
  %244 = load i32**, i32*** @tree_contains_struct, align 8
  %245 = load i64, i64* @TRANSLATION_UNIT_DECL, align 8
  %246 = getelementptr inbounds i32*, i32** %244, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* @TS_DECL_WITH_VIS, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  store i32 1, i32* %249, align 4
  %250 = load i32**, i32*** @tree_contains_struct, align 8
  %251 = load i64, i64* @VAR_DECL, align 8
  %252 = getelementptr inbounds i32*, i32** %250, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* @TS_VAR_DECL, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  store i32 1, i32* %255, align 4
  %256 = load i32**, i32*** @tree_contains_struct, align 8
  %257 = load i64, i64* @FIELD_DECL, align 8
  %258 = getelementptr inbounds i32*, i32** %256, i64 %257
  %259 = load i32*, i32** %258, align 8
  %260 = load i64, i64* @TS_FIELD_DECL, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32 1, i32* %261, align 4
  %262 = load i32**, i32*** @tree_contains_struct, align 8
  %263 = load i64, i64* @PARM_DECL, align 8
  %264 = getelementptr inbounds i32*, i32** %262, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* @TS_PARM_DECL, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  store i32 1, i32* %267, align 4
  %268 = load i32**, i32*** @tree_contains_struct, align 8
  %269 = load i64, i64* @LABEL_DECL, align 8
  %270 = getelementptr inbounds i32*, i32** %268, i64 %269
  %271 = load i32*, i32** %270, align 8
  %272 = load i64, i64* @TS_LABEL_DECL, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  store i32 1, i32* %273, align 4
  %274 = load i32**, i32*** @tree_contains_struct, align 8
  %275 = load i64, i64* @RESULT_DECL, align 8
  %276 = getelementptr inbounds i32*, i32** %274, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* @TS_RESULT_DECL, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32 1, i32* %279, align 4
  %280 = load i32**, i32*** @tree_contains_struct, align 8
  %281 = load i64, i64* @CONST_DECL, align 8
  %282 = getelementptr inbounds i32*, i32** %280, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = load i64, i64* @TS_CONST_DECL, align 8
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  store i32 1, i32* %285, align 4
  %286 = load i32**, i32*** @tree_contains_struct, align 8
  %287 = load i64, i64* @TYPE_DECL, align 8
  %288 = getelementptr inbounds i32*, i32** %286, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @TS_TYPE_DECL, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32 1, i32* %291, align 4
  %292 = load i32**, i32*** @tree_contains_struct, align 8
  %293 = load i64, i64* @FUNCTION_DECL, align 8
  %294 = getelementptr inbounds i32*, i32** %292, i64 %293
  %295 = load i32*, i32** %294, align 8
  %296 = load i64, i64* @TS_FUNCTION_DECL, align 8
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  store i32 1, i32* %297, align 4
  %298 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %299 = call i32 (...) %298()
  ret void
}

declare dso_local i8* @htab_create_ggc(i32, i32, i32, i32*) #1

declare dso_local i32 @make_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
