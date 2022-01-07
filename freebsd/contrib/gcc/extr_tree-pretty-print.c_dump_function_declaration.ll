; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_dump_function_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_dump_function_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32)* @dump_function_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_function_declaration(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @pp_space(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @pp_character(i32* %13, i8 signext 40)
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @TYPE_ARG_TYPES(i64 %15)
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %53, %4
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @TREE_CHAIN(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @error_mark_node, align 8
  %27 = icmp ne i64 %25, %26
  br label %28

28:                                               ; preds = %24, %20, %17
  %29 = phi i1 [ false, %20 ], [ false, %17 ], [ %27, %24 ]
  br i1 %29, label %30, label %54

30:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @TREE_VALUE(i64 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dump_generic_node(i32* %31, i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @TREE_CHAIN(i64 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @TREE_CHAIN(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %30
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @TREE_CHAIN(i64 %43)
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @TREE_LIST, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @pp_character(i32* %49, i8 signext 44)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @pp_space(i32* %51)
  br label %53

53:                                               ; preds = %48, %42, %30
  br label %17

54:                                               ; preds = %28
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @pp_string(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @pp_character(i32* %61, i8 signext 41)
  ret void
}

declare dso_local i32 @pp_space(i32*) #1

declare dso_local i32 @pp_character(i32*, i8 signext) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @dump_generic_node(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @pp_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
