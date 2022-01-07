; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_unary_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_unary_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"__alignof__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_unary_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_unary_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %52 [
    i32 132, label %9
    i32 128, label %9
    i32 133, label %13
    i32 129, label %13
    i32 131, label %17
    i32 134, label %17
    i32 130, label %45
  ]

9:                                                ; preds = %2, %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @pp_cxx_new_expression(i32* %10, i32 %11)
  br label %57

13:                                               ; preds = %2, %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pp_cxx_delete_expression(i32* %14, i32 %15)
  br label %57

17:                                               ; preds = %2, %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 131
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  %23 = call i32 @pp_cxx_identifier(i32* %18, i8* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @pp_cxx_whitespace(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TREE_OPERAND(i32 %26, i32 0)
  %28 = call i32 @TYPE_P(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %17
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @pp_cxx_left_paren(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @TREE_OPERAND(i32 %34, i32 0)
  %36 = call i32 @pp_cxx_type_id(i32* %33, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @pp_cxx_right_paren(i32* %37)
  br label %44

39:                                               ; preds = %17
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @TREE_OPERAND(i32 %41, i32 0)
  %43 = call i32 @pp_unary_expression(i32* %40, i32 %42)
  br label %44

44:                                               ; preds = %39, %30
  br label %57

45:                                               ; preds = %2
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @pp_plus(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @TREE_OPERAND(i32 %49, i32 0)
  %51 = call i32 @pp_cxx_cast_expression(i32* %48, i32 %50)
  br label %57

52:                                               ; preds = %2
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @pp_c_base(i32* %53)
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @pp_c_unary_expression(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %45, %44, %13, %9
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_cxx_new_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_delete_expression(i32*, i32) #1

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i32 @pp_cxx_whitespace(i32*) #1

declare dso_local i32 @TYPE_P(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_cxx_left_paren(i32*) #1

declare dso_local i32 @pp_cxx_type_id(i32*, i32) #1

declare dso_local i32 @pp_cxx_right_paren(i32*) #1

declare dso_local i32 @pp_unary_expression(i32*, i32) #1

declare dso_local i32 @pp_plus(i32*) #1

declare dso_local i32 @pp_cxx_cast_expression(i32*, i32) #1

declare dso_local i32 @pp_c_unary_expression(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
