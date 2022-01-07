; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %65 [
    i32 139, label %7
    i32 159, label %7
    i32 146, label %7
    i32 144, label %11
    i32 143, label %15
    i32 147, label %15
    i32 150, label %19
    i32 130, label %22
    i32 149, label %22
    i32 162, label %22
    i32 167, label %22
    i32 161, label %22
    i32 172, label %22
    i32 138, label %22
    i32 135, label %22
    i32 137, label %22
    i32 136, label %22
    i32 140, label %22
    i32 171, label %26
    i32 164, label %26
    i32 141, label %26
    i32 145, label %26
    i32 168, label %26
    i32 163, label %26
    i32 131, label %26
    i32 148, label %26
    i32 175, label %26
    i32 173, label %26
    i32 153, label %30
    i32 128, label %30
    i32 166, label %34
    i32 129, label %34
    i32 142, label %38
    i32 174, label %38
    i32 170, label %42
    i32 151, label %46
    i32 158, label %46
    i32 165, label %46
    i32 155, label %50
    i32 133, label %50
    i32 132, label %50
    i32 169, label %54
    i32 157, label %58
    i32 160, label %58
    i32 134, label %58
    i32 156, label %58
    i32 152, label %62
    i32 154, label %62
  ]

7:                                                ; preds = %2, %2, %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pp_cxx_constant(i32* %8, i32 %9)
  br label %70

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pp_cxx_unqualified_id(i32* %12, i32 %13)
  br label %70

15:                                               ; preds = %2, %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pp_cxx_qualified_id(i32* %16, i32 %17)
  br label %70

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @OVL_CURRENT(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %19
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pp_cxx_primary_expression(i32* %23, i32 %24)
  br label %70

26:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pp_cxx_postfix_expression(i32* %27, i32 %28)
  br label %70

30:                                               ; preds = %2, %2
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @pp_cxx_new_expression(i32* %31, i32 %32)
  br label %70

34:                                               ; preds = %2, %2
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pp_cxx_delete_expression(i32* %35, i32 %36)
  br label %70

38:                                               ; preds = %2, %2
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @pp_cxx_unary_expression(i32* %39, i32 %40)
  br label %70

42:                                               ; preds = %2
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @pp_cxx_cast_expression(i32* %43, i32 %44)
  br label %70

46:                                               ; preds = %2, %2, %2
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pp_cxx_pm_expression(i32* %47, i32 %48)
  br label %70

50:                                               ; preds = %2, %2, %2
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @pp_cxx_multiplicative_expression(i32* %51, i32 %52)
  br label %70

54:                                               ; preds = %2
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @pp_cxx_conditional_expression(i32* %55, i32 %56)
  br label %70

58:                                               ; preds = %2, %2, %2, %2
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @pp_cxx_assignment_expression(i32* %59, i32 %60)
  br label %70

62:                                               ; preds = %2, %2
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  call void @pp_cxx_expression(i32* %63, i32 %64)
  br label %70

65:                                               ; preds = %2
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @pp_c_base(i32* %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @pp_c_expression(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %15, %11, %7
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_cxx_constant(i32*, i32) #1

declare dso_local i32 @pp_cxx_unqualified_id(i32*, i32) #1

declare dso_local i32 @pp_cxx_qualified_id(i32*, i32) #1

declare dso_local i32 @OVL_CURRENT(i32) #1

declare dso_local i32 @pp_cxx_primary_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_postfix_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_new_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_delete_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_unary_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_cast_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_pm_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_multiplicative_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_conditional_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_assignment_expression(i32*, i32) #1

declare dso_local i32 @pp_c_expression(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
