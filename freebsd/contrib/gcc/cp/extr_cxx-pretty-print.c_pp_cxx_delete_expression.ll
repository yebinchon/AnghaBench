; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_delete_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_delete_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_delete_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_delete_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %32 [
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @DELETE_EXPR_USE_GLOBAL(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pp_cxx_colon_colon(i32* %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @pp_cxx_identifier(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @pp_left_bracket(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @pp_right_bracket(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @pp_c_base(i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TREE_OPERAND(i32 %29, i32 0)
  %31 = call i32 @pp_c_cast_expression(i32 %28, i32 %30)
  br label %36

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @pp_unsupported_tree(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %26
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @DELETE_EXPR_USE_GLOBAL(i32) #1

declare dso_local i32 @pp_cxx_colon_colon(i32*) #1

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i32 @pp_left_bracket(i32*) #1

declare dso_local i32 @pp_right_bracket(i32*) #1

declare dso_local i32 @pp_c_cast_expression(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
