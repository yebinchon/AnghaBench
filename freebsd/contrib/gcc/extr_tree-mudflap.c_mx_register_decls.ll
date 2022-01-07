; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mx_register_decls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mx_register_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@size_type_node = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@mf_unregister_fndecl = common dso_local global i32 0, align 4
@mf_register_fndecl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"mudflap cannot track %qs in stub function\00", align 1
@TSI_SAME_STMT = common dso_local global i32 0, align 4
@TRY_FINALLY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*)* @mx_register_decls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx_register_decls(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %14 = load i64, i64* @NULL_TREE, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @tsi_start(i64 %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %113, %2
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @NULL_TREE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %116

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @mf_decl_eligible_p(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %113

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @mf_marked_p(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %113, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @DECL_EXTERNAL(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %113, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @TREE_STATIC(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %113, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @NULL_TREE, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i32, i32* @size_type_node, align 4
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @TREE_TYPE(i64 %41)
  %43 = call i32 @TYPE_SIZE_UNIT(i32 %42)
  %44 = call i64 @convert(i32 %40, i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* @NULL_TREE, align 8
  %46 = load i32, i32* @ptr_type_node, align 4
  %47 = load i32, i32* @ADDR_EXPR, align 4
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @TREE_TYPE(i64 %48)
  %50 = call i32 @build_pointer_type(i32 %49)
  %51 = load i64, i64* %3, align 8
  %52 = call i64 @build1(i32 %47, i32 %50, i64 %51)
  %53 = call i32 @mf_mark(i64 %52)
  %54 = call i64 @convert(i32 %46, i32 %53)
  %55 = load i64, i64* @NULL_TREE, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @NULL_TREE, align 8
  %58 = load i64, i64* @NULL_TREE, align 8
  %59 = call i64 @build_int_cst(i64 %58, i32 3)
  %60 = load i64, i64* @NULL_TREE, align 8
  %61 = call i64 @tree_cons(i64 %57, i64 %59, i64 %60)
  %62 = call i64 @tree_cons(i64 %55, i64 %56, i64 %61)
  %63 = call i64 @tree_cons(i64 %45, i64 %54, i64 %62)
  store i64 %63, i64* %10, align 8
  %64 = load i32, i32* @mf_unregister_fndecl, align 4
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @build_function_call_expr(i32 %64, i64 %65)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @mf_varname_tree(i64 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* @NULL_TREE, align 8
  %70 = load i32, i32* @ptr_type_node, align 4
  %71 = load i32, i32* @ADDR_EXPR, align 4
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @TREE_TYPE(i64 %72)
  %74 = call i32 @build_pointer_type(i32 %73)
  %75 = load i64, i64* %3, align 8
  %76 = call i64 @build1(i32 %71, i32 %74, i64 %75)
  %77 = call i32 @mf_mark(i64 %76)
  %78 = call i64 @convert(i32 %70, i32 %77)
  %79 = load i64, i64* @NULL_TREE, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @NULL_TREE, align 8
  %82 = load i64, i64* @NULL_TREE, align 8
  %83 = call i64 @build_int_cst(i64 %82, i32 3)
  %84 = load i64, i64* @NULL_TREE, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @NULL_TREE, align 8
  %87 = call i64 @tree_cons(i64 %84, i64 %85, i64 %86)
  %88 = call i64 @tree_cons(i64 %81, i64 %83, i64 %87)
  %89 = call i64 @tree_cons(i64 %79, i64 %80, i64 %88)
  %90 = call i64 @tree_cons(i64 %69, i64 %78, i64 %89)
  store i64 %90, i64* %12, align 8
  %91 = load i32, i32* @mf_register_fndecl, align 4
  %92 = load i64, i64* %12, align 8
  %93 = call i64 @build_function_call_expr(i32 %91, i64 %92)
  store i64 %93, i64* %11, align 8
  %94 = call i32 @gimplify_stmt(i64* %11)
  %95 = call i32 @gimplify_stmt(i64* %9)
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @tsi_end_p(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %38
  %100 = load i64, i64* %3, align 8
  %101 = call i32 @DECL_NAME(i64 %100)
  %102 = call i32 @IDENTIFIER_POINTER(i32 %101)
  %103 = call i32 @warning(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %110

104:                                              ; preds = %38
  %105 = load i64, i64* %11, align 8
  %106 = load i32, i32* @TSI_SAME_STMT, align 4
  %107 = call i32 @tsi_link_before(i32* %6, i64 %105, i32 %106)
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @append_to_statement_list(i64 %108, i64* %5)
  br label %110

110:                                              ; preds = %104, %99
  %111 = load i64, i64* %3, align 8
  %112 = call i32 @mf_mark(i64 %111)
  br label %113

113:                                              ; preds = %110, %34, %30, %26, %22
  %114 = load i64, i64* %3, align 8
  %115 = call i64 @TREE_CHAIN(i64 %114)
  store i64 %115, i64* %3, align 8
  br label %18

116:                                              ; preds = %18
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @NULL_TREE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i32, i32* @TRY_FINALLY_EXPR, align 4
  %122 = load i32, i32* @void_type_node, align 4
  %123 = load i64*, i64** %4, align 8
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %5, align 8
  %126 = call i64 @build2(i32 %121, i32 %122, i64 %124, i64 %125)
  store i64 %126, i64* %13, align 8
  %127 = load i64*, i64** %4, align 8
  store i64 0, i64* %127, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i64*, i64** %4, align 8
  %130 = call i32 @append_to_statement_list(i64 %128, i64* %129)
  br label %131

131:                                              ; preds = %120, %116
  ret void
}

declare dso_local i32 @tsi_start(i64) #1

declare dso_local i64 @mf_decl_eligible_p(i64) #1

declare dso_local i32 @mf_marked_p(i64) #1

declare dso_local i32 @DECL_EXTERNAL(i64) #1

declare dso_local i32 @TREE_STATIC(i64) #1

declare dso_local i64 @convert(i32, i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i32 @mf_mark(i64) #1

declare dso_local i64 @build1(i32, i32, i64) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i64 @build_function_call_expr(i32, i64) #1

declare dso_local i64 @mf_varname_tree(i64) #1

declare dso_local i32 @gimplify_stmt(i64*) #1

declare dso_local i64 @tsi_end_p(i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i32 @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i32 @tsi_link_before(i32*, i64, i32) #1

declare dso_local i32 @append_to_statement_list(i64, i64*) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
