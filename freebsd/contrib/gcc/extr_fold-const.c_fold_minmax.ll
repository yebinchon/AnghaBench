; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_minmax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_EXPR = common dso_local global i32 0, align 4
@MAX_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @fold_minmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_minmax(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MIN_EXPR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @MAX_EXPR, align 4
  store i32 %15, i32* %10, align 4
  br label %25

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MAX_EXPR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @MIN_EXPR, align 4
  store i32 %21, i32* %10, align 4
  br label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @gcc_unreachable()
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @TREE_CODE(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @TREE_OPERAND(i32 %31, i32 1)
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @operand_equal_p(i32 %32, i32 %33, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @TREE_OPERAND(i32 %39, i32 0)
  %41 = call i32 @omit_one_operand(i32 %37, i32 %38, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %113

42:                                               ; preds = %30, %25
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @TREE_CODE(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @TREE_OPERAND(i32 %48, i32 0)
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @operand_equal_p(i32 %49, i32 %50, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @TREE_OPERAND(i32 %54, i32 1)
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @reorder_operands_p(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @TREE_OPERAND(i32 %62, i32 1)
  %64 = call i32 @omit_one_operand(i32 %60, i32 %61, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %113

65:                                               ; preds = %53, %47, %42
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @TREE_CODE(i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @TREE_OPERAND(i32 %72, i32 0)
  %74 = call i64 @operand_equal_p(i32 %71, i32 %73, i32 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @TREE_OPERAND(i32 %78, i32 1)
  %80 = call i64 @reorder_operands_p(i32 %77, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @TREE_OPERAND(i32 %85, i32 1)
  %87 = call i32 @omit_one_operand(i32 %83, i32 %84, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %113

88:                                               ; preds = %76, %70, %65
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @TREE_CODE(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @TREE_OPERAND(i32 %95, i32 1)
  %97 = call i64 @operand_equal_p(i32 %94, i32 %96, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @TREE_OPERAND(i32 %101, i32 0)
  %103 = call i64 @reorder_operands_p(i32 %100, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @TREE_OPERAND(i32 %108, i32 0)
  %110 = call i32 @omit_one_operand(i32 %106, i32 %107, i32 %109)
  store i32 %110, i32* %5, align 4
  br label %113

111:                                              ; preds = %99, %93, %88
  %112 = load i32, i32* @NULL_TREE, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %105, %82, %59, %36
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @omit_one_operand(i32, i32, i32) #1

declare dso_local i64 @reorder_operands_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
