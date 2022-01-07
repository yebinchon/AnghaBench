; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_build_function_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_build_function_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@ERROR_MARK = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"called object %qE is not a function\00", align 1
@current_function_returns_abnormally = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_TRAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"function called through a non-compatible type\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"if this code is reached, the program will abort\00", align 1
@integer_zero_node = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@require_constant_value = common dso_local global i64 0, align 8
@CALL_EXPR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"__builtin_\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"initializer element is not constant\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_function_call(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @STRIP_TYPE_NOPS(i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @FUNCTION_DECL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @resolve_overloaded_builtin(i64 %23, i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %3, align 8
  br label %222

30:                                               ; preds = %22
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @DECL_NAME(i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %30, %2
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @TREE_TYPE(i64 %35)
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @FUNCTION_TYPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @function_to_pointer_conversion(i64 %41)
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @objc_rewrite_function_call(i64 %44, i64 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @TREE_TYPE(i64 %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @TREE_CODE(i64 %49)
  %51 = load i64, i64* @ERROR_MARK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i64, i64* @error_mark_node, align 8
  store i64 %54, i64* %3, align 8
  br label %222

55:                                               ; preds = %43
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @TREE_CODE(i64 %56)
  %58 = load i64, i64* @POINTER_TYPE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @TREE_CODE(i64 %61)
  %63 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60, %55
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @TREE_TYPE(i64 %66)
  %68 = call i64 @TREE_CODE(i64 %67)
  %69 = load i64, i64* @FUNCTION_TYPE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %65, %60
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i64, i64* @error_mark_node, align 8
  store i64 %74, i64* %3, align 8
  br label %222

75:                                               ; preds = %65
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i64, i64* %7, align 8
  %80 = call i64 @TREE_THIS_VOLATILE(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* @current_function_returns_abnormally, align 4
  br label %83

83:                                               ; preds = %82, %78, %75
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @TREE_TYPE(i64 %84)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %4, align 8
  %87 = call i64 @TREE_CODE(i64 %86)
  %88 = load i64, i64* @NOP_EXPR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = load i64, i64* %4, align 8
  %92 = call i64 @TREE_CODE(i64 %91)
  %93 = load i64, i64* @CONVERT_EXPR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %148

95:                                               ; preds = %90, %83
  %96 = load i64, i64* %4, align 8
  %97 = call i64 @TREE_OPERAND(i64 %96, i32 0)
  store i64 %97, i64* %11, align 8
  %98 = call i64 @TREE_CODE(i64 %97)
  %99 = load i64, i64* @ADDR_EXPR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %148

101:                                              ; preds = %95
  %102 = load i64, i64* %11, align 8
  %103 = call i64 @TREE_OPERAND(i64 %102, i32 0)
  store i64 %103, i64* %11, align 8
  %104 = call i64 @TREE_CODE(i64 %103)
  %105 = load i64, i64* @FUNCTION_DECL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %148

107:                                              ; preds = %101
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %11, align 8
  %110 = call i64 @TREE_TYPE(i64 %109)
  %111 = call i32 @comptypes(i64 %108, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %148, label %113

113:                                              ; preds = %107
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @TREE_TYPE(i64 %114)
  store i64 %115, i64* %12, align 8
  %116 = load i64*, i64** @built_in_decls, align 8
  %117 = load i64, i64* @BUILT_IN_TRAP, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NULL_TREE, align 8
  %121 = call i64 @build_function_call(i64 %119, i64 %120)
  store i64 %121, i64* %13, align 8
  %122 = call i32 @warning(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %123 = call i32 @inform(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i64, i64* %12, align 8
  %125 = call i64 @VOID_TYPE_P(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i64, i64* %13, align 8
  store i64 %128, i64* %3, align 8
  br label %222

129:                                              ; preds = %113
  %130 = load i64, i64* %12, align 8
  %131 = call i64 @AGGREGATE_TYPE_P(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @build_constructor(i64 %135, i32 0)
  %137 = call i64 @build_compound_literal(i64 %134, i32 %136)
  store i64 %137, i64* %14, align 8
  br label %142

138:                                              ; preds = %129
  %139 = load i64, i64* %12, align 8
  %140 = load i32, i32* @integer_zero_node, align 4
  %141 = call i64 @fold_convert(i64 %139, i32 %140)
  store i64 %141, i64* %14, align 8
  br label %142

142:                                              ; preds = %138, %133
  %143 = load i32, i32* @COMPOUND_EXPR, align 4
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %14, align 8
  %147 = call i64 @build2(i32 %143, i64 %144, i64 %145, i64 %146)
  store i64 %147, i64* %3, align 8
  br label %222

148:                                              ; preds = %107, %101, %95, %90
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @TYPE_ARG_TYPES(i64 %149)
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* %7, align 8
  %154 = call i64 @convert_arguments(i32 %150, i64 %151, i64 %152, i64 %153)
  store i64 %154, i64* %8, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* @error_mark_node, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = load i64, i64* @error_mark_node, align 8
  store i64 %159, i64* %3, align 8
  br label %222

160:                                              ; preds = %148
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @TYPE_ATTRIBUTES(i64 %161)
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %6, align 8
  %165 = call i32 @TYPE_ARG_TYPES(i64 %164)
  %166 = call i32 @check_function_arguments(i32 %162, i64 %163, i32 %165)
  %167 = load i64, i64* %4, align 8
  %168 = call i64 @TREE_TYPE(i64 %167)
  %169 = call i64 @TREE_CODE(i64 %168)
  %170 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %160
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* %4, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i64 @build_block_call(i64 %173, i64 %174, i64 %175)
  store i64 %176, i64* %10, align 8
  br label %212

177:                                              ; preds = %160
  %178 = load i64, i64* @require_constant_value, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %203

180:                                              ; preds = %177
  %181 = load i32, i32* @CALL_EXPR, align 4
  %182 = load i64, i64* %6, align 8
  %183 = call i64 @TREE_TYPE(i64 %182)
  %184 = load i64, i64* %4, align 8
  %185 = load i64, i64* %8, align 8
  %186 = load i64, i64* @NULL_TREE, align 8
  %187 = call i64 @fold_build3_initializer(i32 %181, i64 %183, i64 %184, i64 %185, i64 %186)
  store i64 %187, i64* %10, align 8
  %188 = load i64, i64* %10, align 8
  %189 = call i64 @TREE_CONSTANT(i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %180
  %192 = load i64, i64* %9, align 8
  %193 = load i64, i64* @NULL_TREE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %200, label %195

195:                                              ; preds = %191
  %196 = load i64, i64* %9, align 8
  %197 = call i32 @IDENTIFIER_POINTER(i64 %196)
  %198 = call i64 @strncmp(i32 %197, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195, %191
  %201 = call i32 @pedwarn_init(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %195, %180
  br label %211

203:                                              ; preds = %177
  %204 = load i32, i32* @CALL_EXPR, align 4
  %205 = load i64, i64* %6, align 8
  %206 = call i64 @TREE_TYPE(i64 %205)
  %207 = load i64, i64* %4, align 8
  %208 = load i64, i64* %8, align 8
  %209 = load i64, i64* @NULL_TREE, align 8
  %210 = call i64 @fold_build3(i32 %204, i64 %206, i64 %207, i64 %208, i64 %209)
  store i64 %210, i64* %10, align 8
  br label %211

211:                                              ; preds = %203, %202
  br label %212

212:                                              ; preds = %211, %172
  %213 = load i64, i64* %10, align 8
  %214 = call i64 @TREE_TYPE(i64 %213)
  %215 = call i64 @VOID_TYPE_P(i64 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = load i64, i64* %10, align 8
  store i64 %218, i64* %3, align 8
  br label %222

219:                                              ; preds = %212
  %220 = load i64, i64* %10, align 8
  %221 = call i64 @require_complete_type(i64 %220)
  store i64 %221, i64* %3, align 8
  br label %222

222:                                              ; preds = %219, %217, %158, %142, %127, %71, %53, %28
  %223 = load i64, i64* %3, align 8
  ret i64 %223
}

declare dso_local i32 @STRIP_TYPE_NOPS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @resolve_overloaded_builtin(i64, i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @function_to_pointer_conversion(i64) #1

declare dso_local i64 @objc_rewrite_function_call(i64, i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @comptypes(i64, i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @inform(i8*) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i64 @build_compound_literal(i64, i32) #1

declare dso_local i32 @build_constructor(i64, i32) #1

declare dso_local i64 @fold_convert(i64, i32) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @convert_arguments(i32, i64, i64, i64) #1

declare dso_local i32 @TYPE_ARG_TYPES(i64) #1

declare dso_local i32 @check_function_arguments(i32, i64, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i64) #1

declare dso_local i64 @build_block_call(i64, i64, i64) #1

declare dso_local i64 @fold_build3_initializer(i32, i64, i64, i64, i64) #1

declare dso_local i64 @TREE_CONSTANT(i64) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @IDENTIFIER_POINTER(i64) #1

declare dso_local i32 @pedwarn_init(i8*) #1

declare dso_local i64 @fold_build3(i32, i64, i64, i64, i64) #1

declare dso_local i64 @require_complete_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
