; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_build_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_build_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"possible problem detected in invocation of delete operator:\00", align 1
@.str.1 = private unnamed_addr constant [131 x i8] c"neither the destructor nor the class-specific operator delete will be called, even if they are declared when the class is defined.\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"unknown array size in delete\00", align 1
@ADDR_EXPR = common dso_local global i32 0, align 4
@sfk_deleting_destructor = common dso_local global i64 0, align 8
@void_zero_node = common dso_local global i64 0, align 8
@DELETE_EXPR = common dso_local global i32 0, align 4
@sfk_destructor = common dso_local global i32 0, align 4
@sfk_complete_destructor = common dso_local global i64 0, align 8
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@LOOKUP_DESTRUCTOR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i64 0, align 8
@NE_EXPR = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_delete(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @error_mark_node, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i64, i64* @error_mark_node, align 8
  store i64 %20, i64* %6, align 8
  br label %245

21:                                               ; preds = %5
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @error_mark_node, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @error_mark_node, align 8
  store i64 %26, i64* %6, align 8
  br label %245

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @TYPE_MAIN_VARIANT(i64 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @POINTER_TYPE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %27
  store i32 1, i32* %13, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @TREE_TYPE(i64 %35)
  %37 = call i64 @TYPE_MAIN_VARIANT(i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @ARRAY_TYPE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %92

43:                                               ; preds = %34
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @VOID_TYPE_P(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @complete_type(i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @COMPLETE_TYPE_P(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = call i32 @warning(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @cxx_incomplete_type_diagnostic(i64 %55, i64 %56, i32 1)
  %58 = call i32 @inform(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %53, %47
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @VOID_TYPE_P(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @IS_AGGR_TYPE(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67, %64, %60
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @build_builtin_delete_call(i64 %72)
  store i64 %73, i64* %6, align 8
  br label %245

74:                                               ; preds = %67
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @TREE_SIDE_EFFECTS(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @save_expr(i64 %79)
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @build_pointer_type(i64 %82)
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @convert_force(i32 %83, i64 %84, i32 0)
  store i64 %85, i64* %8, align 8
  br label %123

86:                                               ; preds = %27
  %87 = load i64, i64* %7, align 8
  %88 = call i64 @TREE_CODE(i64 %87)
  %89 = load i64, i64* @ARRAY_TYPE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %42
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @TYPE_DOMAIN(i64 %93)
  %95 = load i64, i64* @NULL_TREE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i64, i64* @error_mark_node, align 8
  store i64 %99, i64* %6, align 8
  br label %245

100:                                              ; preds = %92
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @array_type_nelts(i64 %102)
  %104 = load i64, i64* %9, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i64 @build_vec_delete(i64 %101, i32 %103, i64 %104, i32 %105)
  store i64 %106, i64* %6, align 8
  br label %245

107:                                              ; preds = %86
  %108 = load i32, i32* @ADDR_EXPR, align 4
  %109 = load i64, i64* %8, align 8
  %110 = call i64 @build_unary_op(i32 %108, i64 %109, i32 0)
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  %112 = call i64 @TREE_SIDE_EFFECTS(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i64, i64* %8, align 8
  %116 = call i64 @save_expr(i64 %115)
  store i64 %116, i64* %8, align 8
  br label %117

117:                                              ; preds = %114, %107
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @build_pointer_type(i64 %118)
  %120 = load i64, i64* %8, align 8
  %121 = call i64 @convert_force(i32 %119, i64 %120, i32 0)
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122, %81
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @IS_AGGR_TYPE(i64 %124)
  %126 = call i32 @gcc_assert(i32 %125)
  %127 = load i64, i64* %7, align 8
  %128 = call i64 @TYPE_HAS_TRIVIAL_DESTRUCTOR(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %123
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* @sfk_deleting_destructor, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* @void_zero_node, align 8
  store i64 %135, i64* %6, align 8
  br label %245

136:                                              ; preds = %130
  %137 = load i32, i32* @DELETE_EXPR, align 4
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @cxx_sizeof_nowarn(i64 %139)
  %141 = load i32, i32* %11, align 4
  %142 = load i64, i64* @NULL_TREE, align 8
  %143 = load i64, i64* @NULL_TREE, align 8
  %144 = call i64 @build_op_delete_call(i32 %137, i64 %138, i32 %140, i32 %141, i64 %142, i64 %143)
  store i64 %144, i64* %6, align 8
  br label %245

145:                                              ; preds = %123
  %146 = load i64, i64* @NULL_TREE, align 8
  store i64 %146, i64* %14, align 8
  %147 = load i64, i64* %7, align 8
  %148 = call i64 @CLASSTYPE_LAZY_DESTRUCTOR(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32, i32* @sfk_destructor, align 4
  %152 = load i64, i64* %7, align 8
  %153 = call i32 @lazily_declare_fn(i32 %151, i64 %152)
  br label %154

154:                                              ; preds = %150, %145
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* @sfk_deleting_destructor, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i64, i64* %8, align 8
  %163 = call i64 @save_expr(i64 %162)
  store i64 %163, i64* %8, align 8
  %164 = load i64, i64* %8, align 8
  %165 = call i64 @build_builtin_delete_call(i64 %164)
  store i64 %165, i64* %14, align 8
  %166 = load i64, i64* @sfk_complete_destructor, align 8
  store i64 %166, i64* %9, align 8
  br label %205

167:                                              ; preds = %157, %154
  %168 = load i64, i64* %7, align 8
  %169 = call i32 @CLASSTYPE_DESTRUCTORS(i64 %168)
  %170 = call i32 @DECL_VIRTUAL_P(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %187, label %172

172:                                              ; preds = %167
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @sfk_deleting_destructor, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load i64, i64* %8, align 8
  %178 = call i64 @save_expr(i64 %177)
  store i64 %178, i64* %8, align 8
  %179 = load i32, i32* @DELETE_EXPR, align 4
  %180 = load i64, i64* %8, align 8
  %181 = load i64, i64* %7, align 8
  %182 = call i32 @cxx_sizeof_nowarn(i64 %181)
  %183 = load i64, i64* @NULL_TREE, align 8
  %184 = load i64, i64* @NULL_TREE, align 8
  %185 = call i64 @build_op_delete_call(i32 %179, i64 %180, i32 %182, i32 0, i64 %183, i64 %184)
  store i64 %185, i64* %14, align 8
  %186 = load i64, i64* @sfk_complete_destructor, align 8
  store i64 %186, i64* %9, align 8
  br label %204

187:                                              ; preds = %172, %167
  %188 = load i64, i64* %9, align 8
  %189 = load i64, i64* @sfk_deleting_destructor, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %187
  %192 = load i64, i64* %7, align 8
  %193 = call i64 @TYPE_GETS_REG_DELETE(i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %191
  %196 = load i32, i32* @DELETE_EXPR, align 4
  %197 = load i64, i64* %8, align 8
  %198 = load i64, i64* %7, align 8
  %199 = call i32 @cxx_sizeof_nowarn(i64 %198)
  %200 = load i64, i64* @NULL_TREE, align 8
  %201 = load i64, i64* @NULL_TREE, align 8
  %202 = call i64 @build_op_delete_call(i32 %196, i64 %197, i32 %199, i32 0, i64 %200, i64 %201)
  br label %203

203:                                              ; preds = %195, %191, %187
  br label %204

204:                                              ; preds = %203, %176
  br label %205

205:                                              ; preds = %204, %161
  %206 = load i64, i64* %8, align 8
  %207 = call i32 @build_indirect_ref(i64 %206, i32* null)
  %208 = load i64, i64* %9, align 8
  %209 = load i32, i32* %10, align 4
  %210 = call i64 @build_dtor_call(i32 %207, i64 %208, i32 %209)
  store i64 %210, i64* %12, align 8
  %211 = load i64, i64* %14, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %205
  %214 = load i32, i32* @COMPOUND_EXPR, align 4
  %215 = load i32, i32* @void_type_node, align 4
  %216 = load i64, i64* %12, align 8
  %217 = load i64, i64* %14, align 8
  %218 = call i64 @build2(i32 %214, i32 %215, i64 %216, i64 %217)
  store i64 %218, i64* %12, align 8
  br label %219

219:                                              ; preds = %213, %205
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @LOOKUP_DESTRUCTOR, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i64, i64* @integer_one_node, align 8
  store i64 %225, i64* %15, align 8
  br label %232

226:                                              ; preds = %219
  %227 = load i32, i32* @NE_EXPR, align 4
  %228 = load i64, i64* %8, align 8
  %229 = load i32, i32* @integer_zero_node, align 4
  %230 = call i32 @cp_build_binary_op(i32 %227, i64 %228, i32 %229)
  %231 = call i64 @fold(i32 %230)
  store i64 %231, i64* %15, align 8
  br label %232

232:                                              ; preds = %226, %224
  %233 = load i64, i64* %15, align 8
  %234 = load i64, i64* @integer_one_node, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = load i32, i32* @COND_EXPR, align 4
  %238 = load i32, i32* @void_type_node, align 4
  %239 = load i64, i64* %15, align 8
  %240 = load i64, i64* %12, align 8
  %241 = load i64, i64* @void_zero_node, align 8
  %242 = call i64 @build3(i32 %237, i32 %238, i64 %239, i64 %240, i64 %241)
  store i64 %242, i64* %12, align 8
  br label %243

243:                                              ; preds = %236, %232
  %244 = load i64, i64* %12, align 8
  store i64 %244, i64* %6, align 8
  br label %245

245:                                              ; preds = %243, %136, %134, %100, %97, %71, %25, %19
  %246 = load i64, i64* %6, align 8
  ret i64 %246
}

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i32 @complete_type(i64) #1

declare dso_local i32 @COMPLETE_TYPE_P(i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @cxx_incomplete_type_diagnostic(i64, i64, i32) #1

declare dso_local i32 @inform(i8*) #1

declare dso_local i32 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @build_builtin_delete_call(i64) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @save_expr(i64) #1

declare dso_local i64 @convert_force(i32, i64, i32) #1

declare dso_local i32 @build_pointer_type(i64) #1

declare dso_local i64 @TYPE_DOMAIN(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @build_vec_delete(i64, i32, i64, i32) #1

declare dso_local i32 @array_type_nelts(i64) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TYPE_HAS_TRIVIAL_DESTRUCTOR(i64) #1

declare dso_local i64 @build_op_delete_call(i32, i64, i32, i32, i64, i64) #1

declare dso_local i32 @cxx_sizeof_nowarn(i64) #1

declare dso_local i64 @CLASSTYPE_LAZY_DESTRUCTOR(i64) #1

declare dso_local i32 @lazily_declare_fn(i32, i64) #1

declare dso_local i32 @DECL_VIRTUAL_P(i32) #1

declare dso_local i32 @CLASSTYPE_DESTRUCTORS(i64) #1

declare dso_local i64 @TYPE_GETS_REG_DELETE(i64) #1

declare dso_local i64 @build_dtor_call(i32, i64, i32) #1

declare dso_local i32 @build_indirect_ref(i64, i32*) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

declare dso_local i64 @fold(i32) #1

declare dso_local i32 @cp_build_binary_op(i32, i64, i32) #1

declare dso_local i64 @build3(i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
