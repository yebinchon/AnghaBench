; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_ptr_operator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_ptr_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_DECL = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_ptr_operator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_ptr_operator(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TYPE_P(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @TREE_CODE(i32 %9)
  %11 = load i32, i32* @TYPE_DECL, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %8, %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TREE_CODE(i32 %17)
  switch i32 %18, label %85 [
    i32 128, label %19
    i32 130, label %19
    i32 129, label %47
    i32 131, label %61
  ]

19:                                               ; preds = %16, %16
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @TREE_TYPE(i32 %20)
  %22 = call i32 @TREE_CODE(i32 %21)
  %23 = icmp eq i32 %22, 130
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @TREE_TYPE(i32 %25)
  %27 = call i32 @TYPE_PTR_TO_MEMBER_P(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %19
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @TREE_TYPE(i32 %31)
  call void @pp_cxx_ptr_operator(i32* %30, i32 %32)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @TREE_CODE(i32 %34)
  %36 = icmp eq i32 %35, 130
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @pp_star(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @pp_cxx_cv_qualifier_seq(i32* %40, i32 %41)
  br label %46

43:                                               ; preds = %33
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @pp_ampersand(i32* %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %89

47:                                               ; preds = %16
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @TYPE_PTRMEMFUNC_P(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @pp_cxx_left_paren(i32* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @TYPE_PTRMEMFUNC_OBJECT_TYPE(i32 %55)
  %57 = call i32 @pp_cxx_nested_name_specifier(i32* %54, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @pp_star(i32* %58)
  br label %89

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %16, %60
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @TYPE_PTR_TO_MEMBER_P(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @TREE_TYPE(i32 %66)
  %68 = call i32 @TREE_CODE(i32 %67)
  %69 = load i32, i32* @ARRAY_TYPE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @pp_cxx_left_paren(i32* %72)
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %76)
  %78 = call i32 @pp_cxx_nested_name_specifier(i32* %75, i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @pp_star(i32* %79)
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @pp_cxx_cv_qualifier_seq(i32* %81, i32 %82)
  br label %89

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %16, %84
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @pp_unsupported_tree(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %74, %51, %46
  ret void
}

declare dso_local i32 @TYPE_P(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_PTR_TO_MEMBER_P(i32) #1

declare dso_local i32 @pp_star(i32*) #1

declare dso_local i32 @pp_cxx_cv_qualifier_seq(i32*, i32) #1

declare dso_local i32 @pp_ampersand(i32*) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @pp_cxx_left_paren(i32*) #1

declare dso_local i32 @pp_cxx_nested_name_specifier(i32*, i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_OBJECT_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i32) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
