; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_parameter_declaration_clause.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_parameter_declaration_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pp_c_flag_abstract = common dso_local global i32 0, align 4
@METHOD_TYPE = common dso_local global i64 0, align 8
@pp_cxx_flag_default_argument = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pp_cxx_parameter_declaration_clause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_parameter_declaration_clause(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @TYPE_P(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @FUNCTION_FIRST_USER_PARM(i32* %14)
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi i32* [ null, %12 ], [ %15, %13 ]
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @TYPE_P(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @TYPE_ARG_TYPES(i32* %22)
  br label %27

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @FUNCTION_FIRST_USER_PARMTYPE(i32* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32* [ %23, %21 ], [ %26, %24 ]
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = call %struct.TYPE_2__* @pp_c_base(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @pp_c_flag_abstract, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %31, %27
  %40 = phi i1 [ true, %27 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @TREE_CODE(i32* %42)
  %44 = load i64, i64* @METHOD_TYPE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @TREE_CHAIN(i32* %47)
  store i32* %48, i32** %6, align 8
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @pp_cxx_left_paren(i32* %50)
  br label %52

52:                                               ; preds = %95, %49
  %53 = load i32*, i32** %5, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %100

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @pp_cxx_separate_with(i32* %59, i8 signext 44)
  br label %61

61:                                               ; preds = %58, %55
  store i32 0, i32* %8, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = call i32* @TREE_VALUE(i32* %66)
  br label %70

68:                                               ; preds = %61
  %69 = load i32*, i32** %5, align 8
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i32* [ %67, %65 ], [ %69, %68 ]
  %72 = call i32 @pp_cxx_parameter_declaration(i32* %62, i32* %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %70
  %76 = load i32*, i32** %3, align 8
  %77 = call %struct.TYPE_2__* @pp_c_base(i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @pp_cxx_flag_default_argument, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @pp_cxx_whitespace(i32* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @pp_equal(i32* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @pp_cxx_whitespace(i32* %88)
  %90 = load i32*, i32** %3, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @TREE_PURPOSE(i32* %91)
  %93 = call i32 @pp_cxx_assignment_expression(i32* %90, i32 %92)
  br label %94

94:                                               ; preds = %83, %75, %70
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %5, align 8
  %97 = call i32* @TREE_CHAIN(i32* %96)
  store i32* %97, i32** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32* @TREE_CHAIN(i32* %98)
  store i32* %99, i32** %6, align 8
  br label %52

100:                                              ; preds = %52
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @pp_cxx_right_paren(i32* %101)
  ret void
}

declare dso_local i64 @TYPE_P(i32*) #1

declare dso_local i32* @FUNCTION_FIRST_USER_PARM(i32*) #1

declare dso_local i32* @TYPE_ARG_TYPES(i32*) #1

declare dso_local i32* @FUNCTION_FIRST_USER_PARMTYPE(i32*) #1

declare dso_local %struct.TYPE_2__* @pp_c_base(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @TREE_CHAIN(i32*) #1

declare dso_local i32 @pp_cxx_left_paren(i32*) #1

declare dso_local i32 @pp_cxx_separate_with(i32*, i8 signext) #1

declare dso_local i32 @pp_cxx_parameter_declaration(i32*, i32*) #1

declare dso_local i32* @TREE_VALUE(i32*) #1

declare dso_local i32 @pp_cxx_whitespace(i32*) #1

declare dso_local i32 @pp_equal(i32*) #1

declare dso_local i32 @pp_cxx_assignment_expression(i32*, i32) #1

declare dso_local i32 @TREE_PURPOSE(i32*) #1

declare dso_local i32 @pp_cxx_right_paren(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
