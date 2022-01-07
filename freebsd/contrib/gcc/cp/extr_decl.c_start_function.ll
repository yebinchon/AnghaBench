; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_start_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_start_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCDEF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@integer_type_node = common dso_local global i32 0, align 4
@SF_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_function(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @FUNCDEF, align 4
  %12 = call i64 @grokdeclarator(i32* %9, i32* %10, i32 %11, i32 1, i64* %7)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @NULL_TREE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @FUNCTION_DECL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %40

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @DECL_MAIN_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @TREE_TYPE(i64 %27)
  %29 = call i64 @TREE_TYPE(i64 %28)
  %30 = load i32, i32* @integer_type_node, align 4
  %31 = call i32 @same_type_p(i64 %29, i32 %30)
  %32 = call i32 @gcc_assert(i32 %31)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @check_missing_prototype(i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @SF_DEFAULT, align 4
  %39 = call i32 @start_preparsed_function(i64 %36, i64 %37, i32 %38)
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %21
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @grokdeclarator(i32*, i32*, i32, i32, i64*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_MAIN_P(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @same_type_p(i64, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @check_missing_prototype(i64) #1

declare dso_local i32 @start_preparsed_function(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
