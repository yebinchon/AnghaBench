; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_cxx_declaration(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @DECL_LANG_SPECIFIC(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pp_cxx_simple_declaration(i32* %9, i32 %10)
  br label %72

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DECL_USE_TEMPLATE(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DECL_USE_TEMPLATE(i32 %17)
  switch i32 %18, label %31 [
    i32 1, label %19
    i32 2, label %23
    i32 3, label %27
  ]

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pp_cxx_template_declaration(i32* %20, i32 %21)
  br label %32

23:                                               ; preds = %16
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pp_cxx_explicit_specialization(i32* %24, i32 %25)
  br label %32

27:                                               ; preds = %16
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pp_cxx_explicit_instantiation(i32* %28, i32 %29)
  br label %32

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %27, %23, %19
  br label %71

33:                                               ; preds = %12
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @TREE_CODE(i32 %34)
  switch i32 %35, label %66 [
    i32 128, label %36
    i32 129, label %36
    i32 131, label %40
    i32 130, label %53
  ]

36:                                               ; preds = %33, %33
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @pp_cxx_simple_declaration(i32* %37, i32 %38)
  br label %70

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @DECL_SAVED_TREE(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @pp_cxx_function_definition(i32* %45, i32 %46)
  br label %52

48:                                               ; preds = %40
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @pp_cxx_simple_declaration(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %70

53:                                               ; preds = %33
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @DECL_NAMESPACE_ALIAS(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @pp_cxx_namespace_alias_definition(i32* %58, i32 %59)
  br label %65

61:                                               ; preds = %53
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @pp_cxx_original_namespace_definition(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %70

66:                                               ; preds = %33
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @pp_unsupported_tree(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %65, %52, %36
  br label %71

71:                                               ; preds = %70, %32
  br label %72

72:                                               ; preds = %71, %8
  ret void
}

declare dso_local i32 @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i32 @pp_cxx_simple_declaration(i32*, i32) #1

declare dso_local i32 @DECL_USE_TEMPLATE(i32) #1

declare dso_local i32 @pp_cxx_template_declaration(i32*, i32) #1

declare dso_local i32 @pp_cxx_explicit_specialization(i32*, i32) #1

declare dso_local i32 @pp_cxx_explicit_instantiation(i32*, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_SAVED_TREE(i32) #1

declare dso_local i32 @pp_cxx_function_definition(i32*, i32) #1

declare dso_local i32 @DECL_NAMESPACE_ALIAS(i32) #1

declare dso_local i32 @pp_cxx_namespace_alias_definition(i32*, i32) #1

declare dso_local i32 @pp_cxx_original_namespace_definition(i32*, i32) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
