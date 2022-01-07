; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_finish_if_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_finish_if_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_parentheses = common dso_local global i64 0, align 8
@OPT_Wparentheses = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%Hsuggest explicit braces to avoid ambiguous %<else%>\00", align 1
@void_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_finish_if_stmt(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* @warn_parentheses, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  store i32* %22, i32** %12, align 8
  br label %23

23:                                               ; preds = %21, %38
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @TREE_CODE(i32* %24)
  switch i32 %25, label %36 [
    i32 131, label %26
    i32 132, label %27
    i32 130, label %30
    i32 128, label %33
    i32 129, label %33
  ]

26:                                               ; preds = %23
  br label %39

27:                                               ; preds = %23
  %28 = load i32*, i32** %12, align 8
  %29 = call i32* @BIND_EXPR_BODY(i32* %28)
  store i32* %29, i32** %12, align 8
  br label %38

30:                                               ; preds = %23
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @expr_last(i32* %31)
  store i32* %32, i32** %12, align 8
  br label %38

33:                                               ; preds = %23, %23
  %34 = load i32*, i32** %12, align 8
  %35 = call i32* @TREE_OPERAND(i32* %34, i32 0)
  store i32* %35, i32** %12, align 8
  br label %38

36:                                               ; preds = %23
  %37 = call i32 (...) @gcc_unreachable()
  br label %38

38:                                               ; preds = %36, %33, %30, %27
  br label %23

39:                                               ; preds = %26
  %40 = load i32*, i32** %12, align 8
  %41 = call i64 @COND_EXPR_ELSE(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @OPT_Wparentheses, align 4
  %45 = call i32 @warning(i32 %44, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32* %6)
  br label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %18, %15, %5
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @empty_body_warning(i32* %48, i32* %49)
  %51 = load i32, i32* @void_type_node, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @build3(i32 131, i32 %51, i32* %52, i32* %53, i32* %54)
  store i32* %55, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @SET_EXPR_LOCATION(i32* %56, i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @add_stmt(i32* %59)
  ret void
}

declare dso_local i32 @TREE_CODE(i32*) #1

declare dso_local i32* @BIND_EXPR_BODY(i32*) #1

declare dso_local i32* @expr_last(i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @COND_EXPR_ELSE(i32*) #1

declare dso_local i32 @warning(i32, i8*, i32*) #1

declare dso_local i32 @empty_body_warning(i32*, i32*) #1

declare dso_local i32* @build3(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SET_EXPR_LOCATION(i32*, i32) #1

declare dso_local i32 @add_stmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
