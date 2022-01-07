; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_c_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_c_pointer(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TYPE_P(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TREE_CODE(i32 %10)
  %12 = load i32, i32* @TYPE_DECL, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TREE_TYPE(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %9, %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @TREE_CODE(i32 %18)
  switch i32 %19, label %54 [
    i32 129, label %20
    i32 128, label %20
    i32 131, label %43
    i32 130, label %49
  ]

20:                                               ; preds = %17, %17
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = call i32 @TREE_CODE(i32 %22)
  %24 = icmp eq i32 %23, 129
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @TREE_TYPE(i32 %27)
  call void @pp_c_pointer(i32* %26, i32 %28)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @TREE_CODE(i32 %30)
  %32 = icmp eq i32 %31, 129
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @pp_c_star(i32* %34)
  br label %39

36:                                               ; preds = %29
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @pp_c_ampersand(i32* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @pp_c_type_qualifier_list(i32* %40, i32 %41)
  br label %58

43:                                               ; preds = %17
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @pp_c_caret(i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pp_c_type_qualifier_list(i32* %46, i32 %47)
  br label %58

49:                                               ; preds = %17
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @DECL_EXPR_DECL(i32 %51)
  %53 = call i32 @pp_declaration(i32* %50, i32 %52)
  store i32 1, i32* %5, align 4
  br label %58

54:                                               ; preds = %17
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @pp_unsupported_tree(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49, %43, %39
  ret void
}

declare dso_local i32 @TYPE_P(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_c_star(i32*) #1

declare dso_local i32 @pp_c_ampersand(i32*) #1

declare dso_local i32 @pp_c_type_qualifier_list(i32*, i32) #1

declare dso_local i32 @pp_c_caret(i32*) #1

declare dso_local i32 @pp_declaration(i32*, i32) #1

declare dso_local i32 @DECL_EXPR_DECL(i32) #1

declare dso_local i32 @pp_unsupported_tree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
