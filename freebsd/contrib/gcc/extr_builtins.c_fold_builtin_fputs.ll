; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_fputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_fputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_FPUTC_UNLOCKED = common dso_local global i64 0, align 8
@implicit_built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_FPUTC = common dso_local global i64 0, align 8
@BUILT_IN_FWRITE_UNLOCKED = common dso_local global i64 0, align 8
@BUILT_IN_FWRITE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@integer_type_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i32 0, align 4
@size_one_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fold_builtin_fputs(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i64*, i64** @built_in_decls, align 8
  %19 = load i64, i64* @BUILT_IN_FPUTC_UNLOCKED, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  br label %27

22:                                               ; preds = %4
  %23 = load i64*, i64** @implicit_built_in_decls, align 8
  %24 = load i64, i64* @BUILT_IN_FPUTC, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i64 [ %21, %17 ], [ %26, %22 ]
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i64*, i64** @built_in_decls, align 8
  %33 = load i64, i64* @BUILT_IN_FWRITE_UNLOCKED, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  br label %41

36:                                               ; preds = %27
  %37 = load i64*, i64** @implicit_built_in_decls, align 8
  %38 = load i64, i64* @BUILT_IN_FWRITE, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i64 [ %35, %31 ], [ %40, %36 ]
  store i64 %42, i64* %12, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i64 0, i64* %5, align 8
  br label %137

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @POINTER_TYPE, align 4
  %49 = load i32, i32* @POINTER_TYPE, align 4
  %50 = load i32, i32* @VOID_TYPE, align 4
  %51 = call i32 @validate_arglist(i64 %47, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  store i64 0, i64* %5, align 8
  br label %137

54:                                               ; preds = %46
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @TREE_VALUE(i64 %58)
  %60 = call i64 @c_strlen(i64 %59, i32 0)
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @INTEGER_CST, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %61
  store i64 0, i64* %5, align 8
  br label %137

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @compare_tree_int(i64 %71, i32 1)
  switch i32 %72, label %127 [
    i32 -1, label %73
    i32 0, label %80
    i32 1, label %102
  ]

73:                                               ; preds = %70
  %74 = load i32, i32* @integer_type_node, align 4
  %75 = load i32, i32* @integer_zero_node, align 4
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @TREE_CHAIN(i64 %76)
  %78 = call i64 @TREE_VALUE(i64 %77)
  %79 = call i64 @omit_one_operand(i32 %74, i32 %75, i64 %78)
  store i64 %79, i64* %5, align 8
  br label %137

80:                                               ; preds = %70
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @TREE_VALUE(i64 %81)
  %83 = call i8* @c_getstr(i64 %82)
  store i8* %83, i8** %13, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = load i32, i32* @NULL_TREE, align 4
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @TREE_CHAIN(i64 %88)
  %90 = call i64 @TREE_VALUE(i64 %89)
  %91 = call i64 @build_tree_list(i32 %87, i64 %90)
  store i64 %91, i64* %6, align 8
  %92 = load i32, i32* @NULL_TREE, align 4
  %93 = load i32, i32* @NULL_TREE, align 4
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = call i64 @build_int_cst(i32 %93, i8 signext %96)
  %98 = load i64, i64* %6, align 8
  %99 = call i64 @tree_cons(i32 %92, i64 %97, i64 %98)
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* %11, align 8
  store i64 %100, i64* %10, align 8
  br label %129

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %70, %101
  %103 = load i32, i32* @optimize_size, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i64 0, i64* %5, align 8
  br label %137

106:                                              ; preds = %102
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @TREE_VALUE(i64 %107)
  store i64 %108, i64* %14, align 8
  %109 = load i32, i32* @NULL_TREE, align 4
  %110 = load i64, i64* %6, align 8
  %111 = call i64 @TREE_CHAIN(i64 %110)
  %112 = call i64 @TREE_VALUE(i64 %111)
  %113 = call i64 @build_tree_list(i32 %109, i64 %112)
  store i64 %113, i64* %6, align 8
  %114 = load i32, i32* @NULL_TREE, align 4
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %6, align 8
  %117 = call i64 @tree_cons(i32 %114, i64 %115, i64 %116)
  store i64 %117, i64* %6, align 8
  %118 = load i32, i32* @NULL_TREE, align 4
  %119 = load i64, i64* @size_one_node, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @tree_cons(i32 %118, i64 %119, i64 %120)
  store i64 %121, i64* %6, align 8
  %122 = load i32, i32* @NULL_TREE, align 4
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i64 @tree_cons(i32 %122, i64 %123, i64 %124)
  store i64 %125, i64* %6, align 8
  %126 = load i64, i64* %12, align 8
  store i64 %126, i64* %10, align 8
  br label %129

127:                                              ; preds = %70
  %128 = call i32 (...) @gcc_unreachable()
  br label %129

129:                                              ; preds = %127, %106, %86
  %130 = load i64, i64* %10, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  store i64 0, i64* %5, align 8
  br label %137

133:                                              ; preds = %129
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call i64 @build_function_call_expr(i64 %134, i64 %135)
  store i64 %136, i64* %5, align 8
  br label %137

137:                                              ; preds = %133, %132, %105, %73, %69, %53, %45
  %138 = load i64, i64* %5, align 8
  ret i64 %138
}

declare dso_local i32 @validate_arglist(i64, i32, i32, i32) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @compare_tree_int(i64, i32) #1

declare dso_local i64 @omit_one_operand(i32, i32, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i8* @c_getstr(i64) #1

declare dso_local i64 @build_tree_list(i32, i64) #1

declare dso_local i64 @tree_cons(i32, i64, i64) #1

declare dso_local i64 @build_int_cst(i32, i8 signext) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
