; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_primary_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_primary_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_primary_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_primary_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %31 [
    i32 139, label %7
    i32 136, label %7
    i32 133, label %7
    i32 143, label %11
    i32 128, label %14
    i32 137, label %14
    i32 141, label %14
    i32 140, label %14
    i32 138, label %14
    i32 142, label %14
    i32 132, label %14
    i32 135, label %18
    i32 129, label %18
    i32 130, label %18
    i32 131, label %18
    i32 134, label %22
  ]

7:                                                ; preds = %2, %2, %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pp_cxx_constant(i32* %8, i32 %9)
  br label %36

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @BASELINK_FUNCTIONS(i32 %12)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %11
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @pp_cxx_id_expression(i32* %15, i32 %16)
  br label %36

18:                                               ; preds = %2, %2, %2, %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pp_cxx_unqualified_id(i32* %19, i32 %20)
  br label %36

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @pp_cxx_left_paren(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @STMT_EXPR_STMT(i32 %26)
  %28 = call i32 @pp_cxx_statement(i32* %25, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @pp_cxx_right_paren(i32* %29)
  br label %36

31:                                               ; preds = %2
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @pp_c_base(i32* %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @pp_c_primary_expression(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %22, %18, %14, %7
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_cxx_constant(i32*, i32) #1

declare dso_local i32 @BASELINK_FUNCTIONS(i32) #1

declare dso_local i32 @pp_cxx_id_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_unqualified_id(i32*, i32) #1

declare dso_local i32 @pp_cxx_left_paren(i32*) #1

declare dso_local i32 @pp_cxx_statement(i32*, i32) #1

declare dso_local i32 @STMT_EXPR_STMT(i32) #1

declare dso_local i32 @pp_cxx_right_paren(i32*) #1

declare dso_local i32 @pp_c_primary_expression(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
