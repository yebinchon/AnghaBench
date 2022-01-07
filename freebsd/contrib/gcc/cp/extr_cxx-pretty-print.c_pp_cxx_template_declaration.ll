; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_template_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_template_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"template\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @pp_cxx_template_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_template_declaration(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @most_general_template(i64 %8)
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @pp_maybe_newline_and_indent(i32* %10, i32 0)
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @DECL_TEMPLATE_PARMS(i64 %12)
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %32, %2
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @pp_cxx_identifier(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @pp_cxx_begin_template_argument_list(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @TREE_VALUE(i64 %23)
  %25 = call i32 @pp_cxx_template_parameter_list(i32* %22, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @pp_cxx_end_template_argument_list(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @pp_newline_and_indent(i32* %28, i32 3)
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 3
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @TREE_CHAIN(i64 %33)
  store i64 %34, i64* %6, align 8
  br label %14

35:                                               ; preds = %14
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @FUNCTION_DECL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @DECL_SAVED_TREE(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @pp_cxx_function_definition(i32* %45, i64 %46)
  br label %52

48:                                               ; preds = %40, %35
  %49 = load i32*, i32** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @pp_cxx_simple_declaration(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %48, %44
  ret void
}

declare dso_local i64 @most_general_template(i64) #1

declare dso_local i32 @pp_maybe_newline_and_indent(i32*, i32) #1

declare dso_local i64 @DECL_TEMPLATE_PARMS(i64) #1

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i32 @pp_cxx_begin_template_argument_list(i32*) #1

declare dso_local i32 @pp_cxx_template_parameter_list(i32*, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i32 @pp_cxx_end_template_argument_list(i32*) #1

declare dso_local i32 @pp_newline_and_indent(i32*, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_SAVED_TREE(i64) #1

declare dso_local i32 @pp_cxx_function_definition(i32*, i64) #1

declare dso_local i32 @pp_cxx_simple_declaration(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
