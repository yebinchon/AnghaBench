; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_extract_array_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_extract_array_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @extract_array_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_array_ref(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @PLUS_EXPR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @TREE_OPERAND(i32 %18, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @STRIP_NOPS(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @extract_array_ref(i32 %22, i32* %9, i32* %10)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @NULL_TREE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @TREE_OPERAND(i32 %32, i32 1)
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %44

35:                                               ; preds = %25
  %36 = load i64, i64* @PLUS_EXPR, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @TREE_TYPE(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @TREE_OPERAND(i32 %40, i32 1)
  %42 = call i32 @fold_build2(i64 %36, i32 %38, i32 %39, i32 %41)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %31
  store i32 1, i32* %4, align 4
  br label %107

45:                                               ; preds = %17
  br label %106

46:                                               ; preds = %3
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @TREE_CODE(i32 %47)
  %49 = load i64, i64* @ADDR_EXPR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @TREE_OPERAND(i32 %52, i32 0)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @TREE_CODE(i32 %54)
  %56 = load i64, i64* @ARRAY_REF, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @TREE_OPERAND(i32 %59, i32 1)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @TREE_OPERAND(i32 %61, i32 0)
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i64, i64* @MULT_EXPR, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @TREE_TYPE(i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @array_ref_element_size(i32 %68)
  %70 = call i32 @fold_build2(i64 %64, i32 %66, i32 %67, i32 %69)
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %88

72:                                               ; preds = %51
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @TREE_TYPE(i32 %73)
  %75 = call i64 @TREE_CODE(i32 %74)
  %76 = load i64, i64* @ARRAY_TYPE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @TREE_OPERAND(i32 %79, i32 0)
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  br label %85

82:                                               ; preds = %72
  %83 = load i32, i32* %5, align 4
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* @NULL_TREE, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %58
  store i32 1, i32* %4, align 4
  br label %107

89:                                               ; preds = %46
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @SSA_VAR_P(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @TREE_TYPE(i32 %94)
  %96 = call i64 @TREE_CODE(i32 %95)
  %97 = load i64, i64* @POINTER_TYPE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32, i32* %5, align 4
  %101 = load i32*, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @NULL_TREE, align 4
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  store i32 1, i32* %4, align 4
  br label %107

104:                                              ; preds = %93, %89
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %45
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %99, %88, %44
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i32 @fold_build2(i64, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @array_ref_element_size(i32) #1

declare dso_local i64 @SSA_VAR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
