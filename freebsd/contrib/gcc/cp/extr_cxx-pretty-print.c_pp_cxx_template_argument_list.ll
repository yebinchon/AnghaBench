; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_template_argument_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_template_argument_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMPLATE_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pp_cxx_template_argument_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_template_argument_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %51

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %48, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @TREE_VEC_LENGTH(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32* @TREE_VEC_ELT(i32* %17, i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @pp_cxx_separate_with(i32* %23, i8 signext 44)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @TYPE_P(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @TREE_CODE(i32* %30)
  %32 = load i64, i64* @TEMPLATE_DECL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @DECL_TEMPLATE_RESULT(i32* %35)
  %37 = call i64 @TYPE_P(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %25
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @pp_cxx_type_id(i32* %40, i32* %41)
  br label %47

43:                                               ; preds = %34, %29
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @pp_cxx_expression(i32* %44, i32* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %11

51:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @TREE_VEC_LENGTH(i32*) #1

declare dso_local i32* @TREE_VEC_ELT(i32*, i32) #1

declare dso_local i32 @pp_cxx_separate_with(i32*, i8 signext) #1

declare dso_local i64 @TYPE_P(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @DECL_TEMPLATE_RESULT(i32*) #1

declare dso_local i32 @pp_cxx_type_id(i32*, i32*) #1

declare dso_local i32 @pp_cxx_expression(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
