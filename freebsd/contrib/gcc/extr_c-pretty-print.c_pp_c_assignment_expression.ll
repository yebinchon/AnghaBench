; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_assignment_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_assignment_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODIFY_EXPR = common dso_local global i64 0, align 8
@INIT_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_c_assignment_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_c_assignment_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @MODIFY_EXPR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @INIT_EXPR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %9, %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_OPERAND(i32 %16, i32 0)
  %18 = call i32 @pp_c_unary_expression(i32* %15, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @pp_c_whitespace(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @pp_equal(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @pp_space(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TREE_OPERAND(i32 %26, i32 1)
  %28 = call i32 @pp_c_expression(i32* %25, i32 %27)
  br label %33

29:                                               ; preds = %9
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pp_c_conditional_expression(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %14
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @pp_c_unary_expression(i32*, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_c_whitespace(i32*) #1

declare dso_local i32 @pp_equal(i32*) #1

declare dso_local i32 @pp_space(i32*) #1

declare dso_local i32 @pp_c_expression(i32*, i32) #1

declare dso_local i32 @pp_c_conditional_expression(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
