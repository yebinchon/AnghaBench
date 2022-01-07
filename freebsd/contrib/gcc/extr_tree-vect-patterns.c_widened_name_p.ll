; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-patterns.c_widened_name_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-patterns.c_widened_name_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vect_loop_def = common dso_local global i32 0, align 4
@vect_invariant_def = common dso_local global i32 0, align 4
@vect_constant_def = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @widened_name_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @widened_name_p(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @TREE_TYPE(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vinfo_for_stmt(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @STMT_VINFO_LOOP_VINFO(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @vect_is_simple_use(i32 %24, i32 %25, i32* %26, i32* %17, i32* %16)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %114

30:                                               ; preds = %4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @vect_loop_def, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @vect_invariant_def, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @vect_constant_def, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %114

43:                                               ; preds = %38, %34, %30
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %114

48:                                               ; preds = %43
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @TREE_CODE(i32 %50)
  %52 = load i64, i64* @MODIFY_EXPR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %114

55:                                               ; preds = %48
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TREE_OPERAND(i32 %57, i32 1)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i64 @TREE_CODE(i32 %59)
  %61 = load i64, i64* @NOP_EXPR, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %114

64:                                               ; preds = %55
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @TREE_OPERAND(i32 %65, i32 0)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @TREE_TYPE(i32 %67)
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @INTEGRAL_TYPE_P(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %64
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @INTEGRAL_TYPE_P(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i32, i32* %14, align 4
  %80 = call i64 @TYPE_UNSIGNED(i32 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @TYPE_UNSIGNED(i32 %82)
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @TYPE_PRECISION(i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @TYPE_PRECISION(i32 %89)
  %91 = mul nsw i32 %90, 2
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85, %78, %73, %64
  store i32 0, i32* %5, align 4
  br label %114

94:                                               ; preds = %85
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @vect_is_simple_use(i32 %95, i32 %96, i32* %10, i32* %10, i32* %16)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %114

100:                                              ; preds = %94
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @vect_invariant_def, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @vect_constant_def, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @vect_loop_def, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %114

113:                                              ; preds = %108, %104, %100
  store i32 1, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %112, %99, %93, %63, %54, %47, %42, %29
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @vinfo_for_stmt(i32) #1

declare dso_local i32 @STMT_VINFO_LOOP_VINFO(i32) #1

declare dso_local i32 @vect_is_simple_use(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i64 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
