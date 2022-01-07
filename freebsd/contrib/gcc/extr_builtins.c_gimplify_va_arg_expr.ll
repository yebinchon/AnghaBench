; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_gimplify_va_arg_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_gimplify_va_arg_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i64)* }
%struct.TYPE_5__ = type { i64 (i64, i64, i64*, i64*)* }

@va_list_type_node = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@GS_ERROR = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"first argument to %<va_arg%> not of type %<va_list%>\00", align 1
@lang_hooks = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@gimplify_va_arg_expr.gave_help = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%qT is promoted to %qT when passed through %<...%>\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"(so you should pass %qT not %qT to %<va_arg%>)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"if this code is reached, the program will abort\00", align 1
@implicit_built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_TRAP = common dso_local global i64 0, align 8
@GS_ALL_DONE = common dso_local global i32 0, align 4
@is_gimple_val = common dso_local global i32 0, align 4
@fb_rvalue = common dso_local global i32 0, align 4
@is_gimple_min_lval = common dso_local global i32 0, align 4
@fb_lvalue = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gimplify_va_arg_expr(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @TREE_OPERAND(i64 %16, i32 0)
  store i64 %17, i64* %11, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @TREE_TYPE(i64 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* @va_list_type_node, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @TREE_TYPE(i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @error_mark_node, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @GS_ERROR, align 4
  store i32 %28, i32* %4, align 4
  br label %132

29:                                               ; preds = %3
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @ARRAY_TYPE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @TREE_CODE(i64 %35)
  %37 = load i64, i64* @ARRAY_TYPE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @POINTER_TYPE_P(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %34
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @TREE_TYPE(i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @TREE_TYPE(i64 %46)
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %43, %39
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @TYPE_MAIN_VARIANT(i64 %50)
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @TYPE_MAIN_VARIANT(i64 %52)
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @GS_ERROR, align 4
  store i32 %57, i32* %4, align 4
  br label %132

58:                                               ; preds = %49
  %59 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i64 %59(i64 %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %58
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @warning(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %66)
  %68 = load i32, i32* @gimplify_va_arg_expr.gave_help, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  store i32 1, i32* @gimplify_va_arg_expr.gave_help, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @warning(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %64
  %75 = call i32 @inform(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32*, i32** @implicit_built_in_decls, align 8
  %77 = load i64, i64* @BUILT_IN_TRAP, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @build_function_call_expr(i32 %79, i32* null)
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i64*, i64** %6, align 8
  %83 = call i32 @append_to_statement_list(i64 %81, i64* %82)
  %84 = load i64, i64* %12, align 8
  %85 = call i64 @dummy_object(i64 %84)
  %86 = load i64*, i64** %5, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %87, i32* %4, align 4
  br label %132

88:                                               ; preds = %58
  %89 = load i64, i64* @va_list_type_node, align 8
  %90 = call i64 @TREE_CODE(i64 %89)
  %91 = load i64, i64* @ARRAY_TYPE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load i64, i64* %11, align 8
  %95 = call i64 @TREE_TYPE(i64 %94)
  %96 = call i64 @TREE_CODE(i64 %95)
  %97 = load i64, i64* @ARRAY_TYPE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load i64, i64* @va_list_type_node, align 8
  %101 = call i64 @TREE_TYPE(i64 %100)
  %102 = call i64 @build_pointer_type(i64 %101)
  store i64 %102, i64* %14, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %14, align 8
  %105 = call i64 @build_fold_addr_expr_with_type(i64 %103, i64 %104)
  store i64 %105, i64* %11, align 8
  br label %106

106:                                              ; preds = %99, %93
  %107 = load i64*, i64** %6, align 8
  %108 = load i64*, i64** %7, align 8
  %109 = load i32, i32* @is_gimple_val, align 4
  %110 = load i32, i32* @fb_rvalue, align 4
  %111 = call i32 @gimplify_expr(i64* %11, i64* %107, i64* %108, i32 %109, i32 %110)
  br label %118

112:                                              ; preds = %88
  %113 = load i64*, i64** %6, align 8
  %114 = load i64*, i64** %7, align 8
  %115 = load i32, i32* @is_gimple_min_lval, align 4
  %116 = load i32, i32* @fb_lvalue, align 4
  %117 = call i32 @gimplify_expr(i64* %11, i64* %113, i64* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i64 (i64, i64, i64*, i64*)*, i64 (i64, i64, i64*, i64*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @targetm, i32 0, i32 0), align 8
  %120 = icmp ne i64 (i64, i64, i64*, i64*)* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %122, i32* %4, align 4
  br label %132

123:                                              ; preds = %118
  %124 = load i64 (i64, i64, i64*, i64*)*, i64 (i64, i64, i64*, i64*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @targetm, i32 0, i32 0), align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64*, i64** %6, align 8
  %128 = load i64*, i64** %7, align 8
  %129 = call i64 %124(i64 %125, i64 %126, i64* %127, i64* %128)
  %130 = load i64*, i64** %5, align 8
  store i64 %129, i64* %130, align 8
  %131 = load i32, i32* @GS_OK, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %123, %121, %74, %55, %27
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @warning(i32, i8*, i64, i64) #1

declare dso_local i32 @inform(i8*) #1

declare dso_local i64 @build_function_call_expr(i32, i32*) #1

declare dso_local i32 @append_to_statement_list(i64, i64*) #1

declare dso_local i64 @dummy_object(i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @build_fold_addr_expr_with_type(i64, i64) #1

declare dso_local i32 @gimplify_expr(i64*, i64*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
