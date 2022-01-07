; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_stpcpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_stpcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@const0_rtx = common dso_local global i64 0, align 8
@implicit_built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_STRCPY = common dso_local global i64 0, align 8
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32)* @expand_builtin_stpcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_builtin_stpcpy(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TREE_OPERAND(i32 %17, i32 1)
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @const0_rtx, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load i32*, i32** @implicit_built_in_decls, align 8
  %24 = load i64, i64* @BUILT_IN_STRCPY, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i64 0, i64* %4, align 8
  br label %164

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @build_function_call_expr(i32 %31, i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @EXPAND_NORMAL, align 4
  %37 = call i64 @expand_expr(i32 %33, i64 %34, i32 %35, i32 %36)
  store i64 %37, i64* %4, align 8
  br label %164

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @POINTER_TYPE, align 4
  %41 = load i32, i32* @POINTER_TYPE, align 4
  %42 = load i32, i32* @VOID_TYPE, align 4
  %43 = call i32 @validate_arglist(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i64 0, i64* %4, align 8
  br label %164

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @TREE_CHAIN(i32 %47)
  %49 = call i32 @TREE_VALUE(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @c_getstr(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @c_strlen(i32 %54, i32 0)
  store i32 %55, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %53, %46
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @TREE_VALUE(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @TREE_CHAIN(i32 %60)
  %62 = call i32 @TREE_VALUE(i32 %61)
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @expand_movstr(i32 %59, i32 %62, i64 %63, i32 2)
  store i64 %64, i64* %4, align 8
  br label %164

65:                                               ; preds = %53
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @TREE_VALUE(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @PLUS_EXPR, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @ssize_int(i32 1)
  %71 = call i32 @size_binop(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* @NULL_TREE, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @build_tree_list(i32 %72, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* @NULL_TREE, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @tree_cons(i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* @NULL_TREE, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @tree_cons(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @TREE_TYPE(i32 %84)
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @expand_builtin_mempcpy(i32 %83, i32 %85, i64 %86, i32 %87, i32 2)
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* %15, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %65
  %92 = load i64, i64* %15, align 8
  store i64 %92, i64* %4, align 8
  br label %164

93:                                               ; preds = %65
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @TREE_CODE(i32 %94)
  %96 = load i64, i64* @INTEGER_CST, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %156

98:                                               ; preds = %93
  %99 = load i32, i32* %12, align 4
  %100 = call i64 @expand_normal(i32 %99)
  store i64 %100, i64* %16, align 8
  %101 = load i64, i64* %16, align 8
  %102 = call i64 @GET_CODE(i64 %101)
  %103 = load i64, i64* @CONST_INT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %155

105:                                              ; preds = %98
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @get_callee_fndecl(i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i64, i64* %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i64 @expand_builtin_strcpy(i32 %107, i32 %108, i64 %109, i32 %110)
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %154

114:                                              ; preds = %105
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %130, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @VOIDmode, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = zext i32 %122 to i64
  %124 = call i64 @gen_reg_rtx(i64 %123)
  store i64 %124, i64* %6, align 8
  br label %129

125:                                              ; preds = %117
  %126 = load i64, i64* %15, align 8
  %127 = call i64 @GET_MODE(i64 %126)
  %128 = call i64 @gen_reg_rtx(i64 %127)
  store i64 %128, i64* %6, align 8
  br label %129

129:                                              ; preds = %125, %121
  br label %130

130:                                              ; preds = %129, %114
  %131 = load i64, i64* %6, align 8
  %132 = call i64 @GET_MODE(i64 %131)
  %133 = load i64, i64* %15, align 8
  %134 = call i64 @GET_MODE(i64 %133)
  %135 = icmp ne i64 %132, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i64, i64* %6, align 8
  %138 = call i64 @GET_MODE(i64 %137)
  %139 = load i64, i64* %15, align 8
  %140 = call i64 @gen_lowpart(i64 %138, i64 %139)
  store i64 %140, i64* %15, align 8
  br label %141

141:                                              ; preds = %136, %130
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %16, align 8
  %144 = call i32 @INTVAL(i64 %143)
  %145 = call i64 @plus_constant(i64 %142, i32 %144)
  store i64 %145, i64* %15, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load i32, i32* @NULL_RTX, align 4
  %149 = call i32 @force_operand(i64 %147, i32 %148)
  %150 = call i64 @emit_move_insn(i64 %146, i32 %149)
  store i64 %150, i64* %15, align 8
  %151 = load i64, i64* %15, align 8
  %152 = call i32 @gcc_assert(i64 %151)
  %153 = load i64, i64* %6, align 8
  store i64 %153, i64* %4, align 8
  br label %164

154:                                              ; preds = %105
  br label %155

155:                                              ; preds = %154, %98
  br label %156

156:                                              ; preds = %155, %93
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @TREE_VALUE(i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @TREE_CHAIN(i32 %159)
  %161 = call i32 @TREE_VALUE(i32 %160)
  %162 = load i64, i64* %6, align 8
  %163 = call i64 @expand_movstr(i32 %158, i32 %161, i64 %162, i32 2)
  store i64 %163, i64* %4, align 8
  br label %164

164:                                              ; preds = %156, %141, %91, %57, %45, %30, %29
  %165 = load i64, i64* %4, align 8
  ret i64 %165
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @expand_expr(i32, i64, i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

declare dso_local i32 @validate_arglist(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @c_getstr(i32) #1

declare dso_local i32 @c_strlen(i32, i32) #1

declare dso_local i64 @expand_movstr(i32, i32, i64, i32) #1

declare dso_local i32 @size_binop(i32, i32, i32) #1

declare dso_local i32 @ssize_int(i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i64 @expand_builtin_mempcpy(i32, i32, i64, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @expand_normal(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @expand_builtin_strcpy(i32, i32, i64, i32) #1

declare dso_local i32 @get_callee_fndecl(i32) #1

declare dso_local i64 @gen_reg_rtx(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @gen_lowpart(i64, i64) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @emit_move_insn(i64, i32) #1

declare dso_local i32 @force_operand(i64, i32) #1

declare dso_local i32 @gcc_assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
