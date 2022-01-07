; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_assignment_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_assignment_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_assignment_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_assignment_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %46 [
    i32 130, label %7
    i32 131, label %7
    i32 128, label %22
    i32 129, label %33
  ]

7:                                                ; preds = %2, %2
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @pp_c_base(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TREE_OPERAND(i32 %10, i32 0)
  %12 = call i32 @pp_c_logical_or_expression(i32 %9, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @pp_space(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @pp_equal(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @pp_space(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @TREE_OPERAND(i32 %20, i32 1)
  call void @pp_cxx_assignment_expression(i32* %19, i32 %21)
  br label %50

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @pp_cxx_identifier(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @TREE_OPERAND(i32 %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @TREE_OPERAND(i32 %30, i32 0)
  call void @pp_cxx_assignment_expression(i32* %29, i32 %31)
  br label %32

32:                                               ; preds = %28, %22
  br label %50

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @pp_c_base(i32* %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @TREE_OPERAND(i32 %36, i32 0)
  %38 = call i32 @pp_c_logical_or_expression(i32 %35, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @TREE_OPERAND(i32 %40, i32 1)
  %42 = call i32 @pp_cxx_assignment_operator(i32* %39, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @TREE_OPERAND(i32 %44, i32 2)
  call void @pp_cxx_assignment_expression(i32* %43, i32 %45)
  br label %50

46:                                               ; preds = %2
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pp_cxx_conditional_expression(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %33, %32, %7
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_c_logical_or_expression(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_space(i32*) #1

declare dso_local i32 @pp_equal(i32*) #1

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i32 @pp_cxx_assignment_operator(i32*, i32) #1

declare dso_local i32 @pp_cxx_conditional_expression(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
