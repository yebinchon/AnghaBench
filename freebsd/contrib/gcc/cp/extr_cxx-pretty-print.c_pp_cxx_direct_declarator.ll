; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_direct_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_direct_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pp_before = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_direct_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_direct_declarator(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %55 [
    i32 128, label %7
    i32 134, label %7
    i32 137, label %7
    i32 136, label %7
    i32 135, label %25
    i32 129, label %54
    i32 133, label %54
    i32 130, label %54
    i32 132, label %54
    i32 131, label %54
  ]

7:                                                ; preds = %2, %2, %2, %2
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @DECL_NAME(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  %15 = call i32 @pp_cxx_space_for_pointer_operator(i32* %12, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DECL_NAME(i32 %17)
  %19 = call i32 @pp_cxx_id_expression(i32* %16, i32 %18)
  br label %20

20:                                               ; preds = %11, %7
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @TREE_TYPE(i32 %22)
  %24 = call i32 @pp_cxx_abstract_declarator(i32* %21, i32 %23)
  br label %60

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @TREE_TYPE(i32 %27)
  %29 = call i32 @TREE_TYPE(i32 %28)
  %30 = call i32 @pp_cxx_space_for_pointer_operator(i32* %26, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @pp_cxx_id_expression(i32* %31, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pp_cxx_parameter_declaration_clause(i32* %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load i32, i32* @pp_before, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call %struct.TYPE_2__* @pp_base(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @pp_cxx_implicit_parameter_type(i32 %46)
  %48 = call i32 @pp_cxx_cv_qualifier_seq(i32* %45, i32 %47)
  br label %49

49:                                               ; preds = %40, %25
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @TREE_TYPE(i32 %51)
  %53 = call i32 @pp_cxx_exception_specification(i32* %50, i32 %52)
  br label %60

54:                                               ; preds = %2, %2, %2, %2, %2
  br label %60

55:                                               ; preds = %2
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @pp_c_base(i32* %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pp_c_direct_declarator(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %54, %49, %20
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i32 @pp_cxx_space_for_pointer_operator(i32*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_cxx_id_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_abstract_declarator(i32*, i32) #1

declare dso_local i32 @pp_cxx_parameter_declaration_clause(i32*, i32) #1

declare dso_local i32 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i32) #1

declare dso_local %struct.TYPE_2__* @pp_base(i32*) #1

declare dso_local i32 @pp_cxx_cv_qualifier_seq(i32*, i32) #1

declare dso_local i32 @pp_cxx_implicit_parameter_type(i32) #1

declare dso_local i32 @pp_cxx_exception_specification(i32*, i32) #1

declare dso_local i32 @pp_c_direct_declarator(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
