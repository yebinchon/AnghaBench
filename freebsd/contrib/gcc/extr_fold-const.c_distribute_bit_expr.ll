; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_distribute_bit_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_distribute_bit_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIT_AND_EXPR = common dso_local global i64 0, align 8
@BIT_IOR_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @distribute_bit_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @distribute_bit_expr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @TREE_CODE(i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @TREE_CODE(i32 %15)
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @TREE_CODE(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @TREE_CODE(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @BIT_AND_EXPR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @TREE_CODE(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @BIT_IOR_EXPR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %18, %4
  store i32 0, i32* %5, align 4
  br label %107

36:                                               ; preds = %29, %23
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @TREE_OPERAND(i32 %37, i32 0)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @TREE_OPERAND(i32 %39, i32 0)
  %41 = call i64 @operand_equal_p(i32 %38, i32 %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @TREE_OPERAND(i32 %44, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @TREE_OPERAND(i32 %46, i32 1)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @TREE_OPERAND(i32 %48, i32 1)
  store i32 %49, i32* %12, align 4
  br label %96

50:                                               ; preds = %36
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @TREE_OPERAND(i32 %51, i32 0)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @TREE_OPERAND(i32 %53, i32 1)
  %55 = call i64 @operand_equal_p(i32 %52, i32 %54, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @TREE_OPERAND(i32 %58, i32 0)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @TREE_OPERAND(i32 %60, i32 1)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @TREE_OPERAND(i32 %62, i32 0)
  store i32 %63, i32* %12, align 4
  br label %95

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @TREE_OPERAND(i32 %65, i32 1)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @TREE_OPERAND(i32 %67, i32 0)
  %69 = call i64 @operand_equal_p(i32 %66, i32 %68, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @TREE_OPERAND(i32 %72, i32 1)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @TREE_OPERAND(i32 %74, i32 0)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @TREE_OPERAND(i32 %76, i32 1)
  store i32 %77, i32* %12, align 4
  br label %94

78:                                               ; preds = %64
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @TREE_OPERAND(i32 %79, i32 1)
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @TREE_OPERAND(i32 %81, i32 1)
  %83 = call i64 @operand_equal_p(i32 %80, i32 %82, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @TREE_OPERAND(i32 %86, i32 1)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @TREE_OPERAND(i32 %88, i32 0)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @TREE_OPERAND(i32 %90, i32 0)
  store i32 %91, i32* %12, align 4
  br label %93

92:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %107

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %71
  br label %95

95:                                               ; preds = %94, %57
  br label %96

96:                                               ; preds = %95, %43
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @TREE_CODE(i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @fold_build2(i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = call i32 @fold_build2(i32 %98, i32 %99, i32 %100, i32 %105)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %96, %92, %35
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
