; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mf_xform_derefs_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mf_xform_derefs_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@integer_zero_node = common dso_local global i64 0, align 8
@flag_mudflap_ignore_reads = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i32 0, align 4
@PARM_DECL = common dso_local global i32 0, align 4
@RESULT_DECL = common dso_local global i32 0, align 4
@STRING_CST = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@mf_uintptr_type = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"mudflap checking not yet implemented for ARRAY_RANGE_REF\00", align 1
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@bitsizetype = common dso_local global i32 0, align 4
@TRUNC_MOD_EXPR = common dso_local global i32 0, align 4
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@CEIL_DIV_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32*, i64)* @mf_xform_derefs_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mf_xform_derefs_1(i32* %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @integer_zero_node, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i64, i64* @flag_mudflap_ignore_reads, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %303

30:                                               ; preds = %26, %4
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @mf_marked_p(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %303

36:                                               ; preds = %30
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i64 @TREE_TYPE(i64 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @error_mark_node, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %303

45:                                               ; preds = %36
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @TYPE_SIZE_UNIT(i64 %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @TREE_CODE(i64 %48)
  switch i32 %49, label %295 [
    i32 132, label %50
    i32 130, label %50
    i32 129, label %208
    i32 128, label %221
    i32 133, label %236
    i32 131, label %238
  ]

50:                                               ; preds = %45, %45
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @TREE_CODE(i64 %51)
  %53 = icmp eq i32 %52, 130
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %16, align 4
  %55 = load i64, i64* @NULL_TREE, align 8
  store i64 %55, i64* %17, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @TREE_CODE(i64 %56)
  %58 = icmp eq i32 %57, 130
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i64, i64* %14, align 8
  %61 = call i64 @TREE_OPERAND(i64 %60, i32 1)
  %62 = call i32 @DECL_BIT_FIELD_TYPE(i64 %61)
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %59, %50
  %65 = phi i1 [ false, %50 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %18, align 4
  %67 = load i64, i64* %14, align 8
  %68 = call i64 @TREE_OPERAND(i64 %67, i32 0)
  store i64 %68, i64* %15, align 8
  br label %69

69:                                               ; preds = %64, %146
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* @NULL_TREE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @TREE_CODE(i64 %77)
  %79 = icmp eq i32 %78, 132
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @TREE_CODE(i64 %81)
  %83 = icmp eq i32 %82, 130
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %76
  %85 = load i64, i64* %15, align 8
  store i64 %85, i64* %17, align 8
  br label %86

86:                                               ; preds = %84, %80, %72, %69
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @TREE_CODE(i64 %87)
  %89 = icmp eq i32 %88, 132
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  store i32 0, i32* %16, align 4
  %91 = load i64, i64* %15, align 8
  %92 = call i64 @TREE_OPERAND(i64 %91, i32 0)
  store i64 %92, i64* %15, align 8
  br label %146

93:                                               ; preds = %86
  %94 = load i64, i64* %15, align 8
  %95 = call i32 @TREE_CODE(i64 %94)
  %96 = icmp eq i32 %95, 130
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i64, i64* %15, align 8
  %99 = call i64 @TREE_OPERAND(i64 %98, i32 0)
  store i64 %99, i64* %15, align 8
  br label %145

100:                                              ; preds = %93
  %101 = load i64, i64* %15, align 8
  %102 = call i32 @INDIRECT_REF_P(i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i64, i64* %15, align 8
  %106 = call i64 @TREE_OPERAND(i64 %105, i32 0)
  store i64 %106, i64* %10, align 8
  br label %147

107:                                              ; preds = %100
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @TREE_CODE(i64 %108)
  %110 = load i32, i32* @VAR_DECL, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %127, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %15, align 8
  %114 = call i32 @TREE_CODE(i64 %113)
  %115 = load i32, i32* @PARM_DECL, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %127, label %117

117:                                              ; preds = %112
  %118 = load i64, i64* %15, align 8
  %119 = call i32 @TREE_CODE(i64 %118)
  %120 = load i32, i32* @RESULT_DECL, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load i64, i64* %15, align 8
  %124 = call i32 @TREE_CODE(i64 %123)
  %125 = load i32, i32* @STRING_CST, align 4
  %126 = icmp eq i32 %124, %125
  br label %127

127:                                              ; preds = %122, %117, %112, %107
  %128 = phi i1 [ true, %117 ], [ true, %112 ], [ true, %107 ], [ %126, %122 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @gcc_assert(i32 %129)
  %131 = load i64, i64* %15, align 8
  %132 = call i32 @mf_decl_eligible_p(i64 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134, %127
  br label %303

138:                                              ; preds = %134
  %139 = load i32, i32* @ADDR_EXPR, align 4
  %140 = load i64, i64* %15, align 8
  %141 = call i64 @TREE_TYPE(i64 %140)
  %142 = call i32 @build_pointer_type(i64 %141)
  %143 = load i64, i64* %15, align 8
  %144 = call i64 @build1(i32 %139, i32 %142, i64 %143)
  store i64 %144, i64* %10, align 8
  br label %147

145:                                              ; preds = %97
  br label %146

146:                                              ; preds = %145, %90
  br label %69

147:                                              ; preds = %138, %104
  %148 = load i32, i32* %18, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %190

150:                                              ; preds = %147
  %151 = load i64, i64* %14, align 8
  %152 = call i64 @TREE_OPERAND(i64 %151, i32 1)
  store i64 %152, i64* %19, align 8
  %153 = load i64, i64* %19, align 8
  %154 = call i64 @DECL_SIZE_UNIT(i64 %153)
  %155 = call i32 @TREE_CODE(i64 %154)
  %156 = load i32, i32* @INTEGER_CST, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load i64, i64* %19, align 8
  %160 = call i64 @DECL_SIZE_UNIT(i64 %159)
  store i64 %160, i64* %13, align 8
  br label %161

161:                                              ; preds = %158, %150
  %162 = load i64, i64* %17, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load i32, i32* @ADDR_EXPR, align 4
  %166 = load i64, i64* %17, align 8
  %167 = call i64 @TREE_TYPE(i64 %166)
  %168 = call i32 @build_pointer_type(i64 %167)
  %169 = load i64, i64* %17, align 8
  %170 = call i64 @build1(i32 %165, i32 %168, i64 %169)
  store i64 %170, i64* %17, align 8
  br label %171

171:                                              ; preds = %164, %161
  %172 = load i32, i32* @ptr_type_node, align 4
  %173 = load i64, i64* %17, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i64, i64* %17, align 8
  br label %179

177:                                              ; preds = %171
  %178 = load i64, i64* %10, align 8
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i64 [ %176, %175 ], [ %178, %177 ]
  %181 = call i64 @fold_convert(i32 %172, i64 %180)
  store i64 %181, i64* %12, align 8
  %182 = load i32, i32* @PLUS_EXPR, align 4
  %183 = load i32, i32* @ptr_type_node, align 4
  %184 = load i64, i64* %12, align 8
  %185 = load i32, i32* @ptr_type_node, align 4
  %186 = load i64, i64* %19, align 8
  %187 = call i64 @byte_position(i64 %186)
  %188 = call i64 @fold_convert(i32 %185, i64 %187)
  %189 = call i64 @fold_build2(i32 %182, i32 %183, i64 %184, i64 %188)
  store i64 %189, i64* %12, align 8
  br label %196

190:                                              ; preds = %147
  %191 = load i32, i32* @ADDR_EXPR, align 4
  %192 = load i64, i64* %9, align 8
  %193 = call i32 @build_pointer_type(i64 %192)
  %194 = load i64, i64* %14, align 8
  %195 = call i64 @build1(i32 %191, i32 %193, i64 %194)
  store i64 %195, i64* %12, align 8
  br label %196

196:                                              ; preds = %190, %179
  %197 = load i32, i32* @MINUS_EXPR, align 4
  %198 = load i32, i32* @mf_uintptr_type, align 4
  %199 = load i32, i32* @PLUS_EXPR, align 4
  %200 = load i32, i32* @mf_uintptr_type, align 4
  %201 = load i32, i32* @mf_uintptr_type, align 4
  %202 = load i64, i64* %12, align 8
  %203 = call i64 @convert(i32 %201, i64 %202)
  %204 = load i64, i64* %13, align 8
  %205 = call i64 @fold_build2(i32 %199, i32 %200, i64 %203, i64 %204)
  %206 = load i64, i64* @integer_one_node, align 8
  %207 = call i64 @fold_build2(i32 %197, i32 %198, i64 %205, i64 %206)
  store i64 %207, i64* %11, align 8
  br label %296

208:                                              ; preds = %45
  %209 = load i64, i64* %14, align 8
  %210 = call i64 @TREE_OPERAND(i64 %209, i32 0)
  store i64 %210, i64* %12, align 8
  %211 = load i64, i64* %12, align 8
  store i64 %211, i64* %10, align 8
  %212 = load i32, i32* @MINUS_EXPR, align 4
  %213 = load i32, i32* @ptr_type_node, align 4
  %214 = load i32, i32* @PLUS_EXPR, align 4
  %215 = load i32, i32* @ptr_type_node, align 4
  %216 = load i64, i64* %10, align 8
  %217 = load i64, i64* %13, align 8
  %218 = call i64 @fold_build2(i32 %214, i32 %215, i64 %216, i64 %217)
  %219 = load i64, i64* @integer_one_node, align 8
  %220 = call i64 @fold_build2(i32 %212, i32 %213, i64 %218, i64 %219)
  store i64 %220, i64* %11, align 8
  br label %296

221:                                              ; preds = %45
  %222 = load i32, i32* @ptr_type_node, align 4
  %223 = load i64, i64* %14, align 8
  %224 = call i64 @tree_mem_ref_addr(i32 %222, i64 %223)
  store i64 %224, i64* %12, align 8
  %225 = load i64, i64* %12, align 8
  store i64 %225, i64* %10, align 8
  %226 = load i32, i32* @MINUS_EXPR, align 4
  %227 = load i32, i32* @ptr_type_node, align 4
  %228 = load i32, i32* @PLUS_EXPR, align 4
  %229 = load i32, i32* @ptr_type_node, align 4
  %230 = load i64, i64* %10, align 8
  %231 = load i64, i64* %13, align 8
  %232 = call i64 @fold_build2(i32 %228, i32 %229, i64 %230, i64 %231)
  %233 = load i32, i32* @ptr_type_node, align 4
  %234 = call i64 @build_int_cst(i32 %233, i32 1)
  %235 = call i64 @fold_build2(i32 %226, i32 %227, i64 %232, i64 %234)
  store i64 %235, i64* %11, align 8
  br label %296

236:                                              ; preds = %45
  %237 = call i32 @warning(i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %303

238:                                              ; preds = %45
  %239 = load i64, i64* %14, align 8
  %240 = call i64 @TREE_OPERAND(i64 %239, i32 0)
  %241 = call i32 @TREE_CODE(i64 %240)
  %242 = icmp ne i32 %241, 129
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %303

244:                                              ; preds = %238
  %245 = load i32, i32* @BITS_PER_UNIT, align 4
  %246 = call i64 @bitsize_int(i32 %245)
  store i64 %246, i64* %22, align 8
  %247 = load i32, i32* @bitsizetype, align 4
  %248 = load i64, i64* %14, align 8
  %249 = call i64 @TREE_OPERAND(i64 %248, i32 2)
  %250 = call i64 @convert(i32 %247, i64 %249)
  store i64 %250, i64* %20, align 8
  %251 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %252 = load i64, i64* %20, align 8
  %253 = load i64, i64* %22, align 8
  %254 = call i64 @size_binop(i32 %251, i64 %252, i64 %253)
  store i64 %254, i64* %21, align 8
  %255 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %256 = load i64, i64* %20, align 8
  %257 = load i64, i64* %22, align 8
  %258 = call i64 @size_binop(i32 %255, i64 %256, i64 %257)
  store i64 %258, i64* %20, align 8
  %259 = load i32, i32* @bitsizetype, align 4
  %260 = load i64, i64* %14, align 8
  %261 = call i64 @TREE_OPERAND(i64 %260, i32 1)
  %262 = call i64 @convert(i32 %259, i64 %261)
  store i64 %262, i64* %13, align 8
  %263 = load i32, i32* @PLUS_EXPR, align 4
  %264 = load i64, i64* %13, align 8
  %265 = load i64, i64* %21, align 8
  %266 = call i64 @size_binop(i32 %263, i64 %264, i64 %265)
  store i64 %266, i64* %13, align 8
  %267 = load i32, i32* @CEIL_DIV_EXPR, align 4
  %268 = load i64, i64* %13, align 8
  %269 = load i64, i64* %22, align 8
  %270 = call i64 @size_binop(i32 %267, i64 %268, i64 %269)
  store i64 %270, i64* %13, align 8
  %271 = load i32, i32* @sizetype, align 4
  %272 = load i64, i64* %13, align 8
  %273 = call i64 @convert(i32 %271, i64 %272)
  store i64 %273, i64* %13, align 8
  %274 = load i64, i64* %14, align 8
  %275 = call i64 @TREE_OPERAND(i64 %274, i32 0)
  %276 = call i64 @TREE_OPERAND(i64 %275, i32 0)
  store i64 %276, i64* %12, align 8
  %277 = load i32, i32* @ptr_type_node, align 4
  %278 = load i64, i64* %12, align 8
  %279 = call i64 @convert(i32 %277, i64 %278)
  store i64 %279, i64* %12, align 8
  %280 = load i32, i32* @PLUS_EXPR, align 4
  %281 = load i32, i32* @ptr_type_node, align 4
  %282 = load i64, i64* %12, align 8
  %283 = load i64, i64* %20, align 8
  %284 = call i64 @fold_build2(i32 %280, i32 %281, i64 %282, i64 %283)
  store i64 %284, i64* %12, align 8
  %285 = load i64, i64* %12, align 8
  store i64 %285, i64* %10, align 8
  %286 = load i32, i32* @MINUS_EXPR, align 4
  %287 = load i32, i32* @ptr_type_node, align 4
  %288 = load i32, i32* @PLUS_EXPR, align 4
  %289 = load i32, i32* @ptr_type_node, align 4
  %290 = load i64, i64* %10, align 8
  %291 = load i64, i64* %13, align 8
  %292 = call i64 @fold_build2(i32 %288, i32 %289, i64 %290, i64 %291)
  %293 = load i64, i64* @integer_one_node, align 8
  %294 = call i64 @fold_build2(i32 %286, i32 %287, i64 %292, i64 %293)
  store i64 %294, i64* %11, align 8
  br label %296

295:                                              ; preds = %45
  br label %303

296:                                              ; preds = %244, %221, %208, %196
  %297 = load i64, i64* %10, align 8
  %298 = load i64, i64* %11, align 8
  %299 = load i32*, i32** %5, align 8
  %300 = load i32*, i32** %7, align 8
  %301 = load i64, i64* %8, align 8
  %302 = call i32 @mf_build_check_statement_for(i64 %297, i64 %298, i32* %299, i32* %300, i64 %301)
  br label %303

303:                                              ; preds = %296, %295, %243, %236, %137, %44, %35, %29
  ret void
}

declare dso_local i64 @mf_marked_p(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_SIZE_UNIT(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @DECL_BIT_FIELD_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @INDIRECT_REF_P(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @mf_decl_eligible_p(i64) #1

declare dso_local i64 @build1(i32, i32, i64) #1

declare dso_local i32 @build_pointer_type(i64) #1

declare dso_local i64 @DECL_SIZE_UNIT(i64) #1

declare dso_local i64 @fold_convert(i32, i64) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i64) #1

declare dso_local i64 @byte_position(i64) #1

declare dso_local i64 @convert(i32, i64) #1

declare dso_local i64 @tree_mem_ref_addr(i32, i64) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @bitsize_int(i32) #1

declare dso_local i64 @size_binop(i32, i64, i64) #1

declare dso_local i32 @mf_build_check_statement_for(i64, i64, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
