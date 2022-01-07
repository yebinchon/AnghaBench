; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_maybe_adjust_types_for_deduction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_maybe_adjust_types_for_deduction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REFERENCE_TYPE = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@UNIFY_ALLOW_OUTER_MORE_CV_QUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @maybe_adjust_types_for_deduction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_adjust_types_for_deduction(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %17 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %16
  ]

11:                                               ; preds = %3
  br label %19

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %7, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %9, align 8
  store i32* %15, i32** %7, align 8
  br label %19

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

17:                                               ; preds = %3
  %18 = call i32 (...) @gcc_unreachable()
  br label %19

19:                                               ; preds = %17, %12, %11
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @REFERENCE_TYPE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @ARRAY_TYPE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @TREE_TYPE(i32 %33)
  %35 = call i32 @build_pointer_type(i32 %34)
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %54

37:                                               ; preds = %25
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @TREE_CODE(i32 %39)
  %41 = load i64, i64* @FUNCTION_TYPE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @build_pointer_type(i32 %45)
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %53

48:                                               ; preds = %37
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @TYPE_MAIN_VARIANT(i32 %50)
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TYPE_MAIN_VARIANT(i32 %57)
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @TREE_CODE(i32 %61)
  %63 = load i64, i64* @REFERENCE_TYPE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @TREE_TYPE(i32 %67)
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @UNIFY_ALLOW_OUTER_MORE_CV_QUAL, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %65, %55
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 129
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @TREE_CODE(i32 %78)
  %80 = load i64, i64* @REFERENCE_TYPE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @TREE_TYPE(i32 %84)
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %76, %73
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
