; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boolean_type_node = common dso_local global i32 0, align 4
@char_type_node = common dso_local global i32 0, align 4
@ENUMERAL_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_constant(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %54 [
    i32 130, label %10
    i32 129, label %46
    i32 128, label %50
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TREE_TYPE(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @boolean_type_node, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pp_c_bool_constant(i32* %17, i32 %18)
  br label %45

20:                                               ; preds = %10
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @char_type_node, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @pp_c_character_constant(i32* %25, i32 %26)
  br label %44

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @TREE_CODE(i32 %29)
  %31 = load i32, i32* @ENUMERAL_TYPE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pp_c_enumeration_constant(i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %43

39:                                               ; preds = %33, %28
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @pp_c_integer_constant(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %38
  br label %44

44:                                               ; preds = %43, %24
  br label %45

45:                                               ; preds = %44, %16
  br label %58

46:                                               ; preds = %2
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pp_c_floating_constant(i32* %47, i32 %48)
  br label %58

50:                                               ; preds = %2
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @pp_c_string_literal(i32* %51, i32 %52)
  br label %58

54:                                               ; preds = %2
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @pp_unsupported_tree(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %50, %46, %45
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_c_bool_constant(i32*, i32) #1

declare dso_local i32 @pp_c_character_constant(i32*, i32) #1

declare dso_local i32 @pp_c_enumeration_constant(i32*, i32) #1

declare dso_local i32 @pp_c_integer_constant(i32*, i32) #1

declare dso_local i32 @pp_c_floating_constant(i32*, i32) #1

declare dso_local i32 @pp_c_string_literal(i32*, i32) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
