; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@NEGATE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @analyze_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyze_offset(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* @NULL_TREE, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @NULL_TREE, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @PLUS_EXPR, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %3
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @MINUS_EXPR, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @INTEGER_CST, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  store i32 1, i32* %4, align 4
  br label %127

41:                                               ; preds = %25, %3
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @TREE_OPERAND(i32 %42, i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @TREE_OPERAND(i32 %44, i32 1)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @analyze_offset(i32 %46, i32* %12, i32* %10)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @analyze_offset(i32 %50, i32* %13, i32* %11)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %41
  store i32 0, i32* %4, align 4
  br label %127

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %127

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @MINUS_EXPR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @NEGATE_EXPR, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @TREE_TYPE(i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @fold_build1(i32 %78, i32 %81, i32 %83)
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %74, %68
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @TREE_TYPE(i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @fold_build2(i32 %93, i32 %95, i32 %96, i32 %97)
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  br label %126

100:                                              ; preds = %89, %86
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  br label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %13, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = load i32*, i32** %6, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @MINUS_EXPR, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i32, i32* @NEGATE_EXPR, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @TREE_TYPE(i32 %119)
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @fold_build1(i32 %117, i32 %120, i32 %122)
  %124 = load i32*, i32** %6, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %116, %113, %107
  br label %126

126:                                              ; preds = %125, %92
  store i32 1, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %60, %53, %40
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @fold_build1(i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
