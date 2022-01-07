; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_init_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_init_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_init_declarator(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @pp_declarator(i32* %6, i64 %7)
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @TREE_CODE(i64 %9)
  %11 = load i64, i64* @FUNCTION_DECL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @DECL_INITIAL(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @DECL_INITIAL(i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @TREE_LIST, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @pp_c_left_paren(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @TREE_VALUE(i64 %28)
  %30 = call i32 @pp_expression(i32* %27, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @pp_right_paren(i32* %31)
  br label %43

33:                                               ; preds = %17
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @pp_space(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @pp_equal(i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @pp_space(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @pp_c_initializer(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %33, %24
  br label %44

44:                                               ; preds = %43, %13, %2
  ret void
}

declare dso_local i32 @pp_declarator(i32*, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i32 @pp_c_left_paren(i32*) #1

declare dso_local i32 @pp_expression(i32*, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i32 @pp_right_paren(i32*) #1

declare dso_local i32 @pp_space(i32*) #1

declare dso_local i32 @pp_equal(i32*) #1

declare dso_local i32 @pp_c_initializer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
