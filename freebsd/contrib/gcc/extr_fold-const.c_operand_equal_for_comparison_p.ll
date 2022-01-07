; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_operand_equal_for_comparison_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_operand_equal_for_comparison_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @operand_equal_for_comparison_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @operand_equal_for_comparison_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @operand_equal_p(i32 %15, i32 %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = call i32 @INTEGRAL_TYPE_P(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @TREE_TYPE(i32 %26)
  %28 = call i32 @INTEGRAL_TYPE_P(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20
  store i32 0, i32* %4, align 4
  br label %85

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @STRIP_NOPS(i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @STRIP_NOPS(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @operand_equal_p(i32 %38, i32 %39, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %85

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @get_narrower(i32 %44, i32* %8)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @get_narrower(i32 %46, i32* %9)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @TREE_TYPE(i32 %48)
  %50 = call i32 @TYPE_PRECISION(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @TREE_TYPE(i32 %55)
  %57 = call i32 @TYPE_PRECISION(i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @TREE_TYPE(i32 %61)
  %63 = call i32 @TYPE_PRECISION(i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @TREE_TYPE(i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @TREE_TYPE(i32 %71)
  %73 = call i32 %69(i32 %70, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @fold_convert(i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @fold_convert(i32 %77, i32 %78)
  %80 = call i64 @operand_equal_p(i32 %76, i32 %79, i32 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %85

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %60, %54, %43
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %82, %42, %30, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i32 @get_narrower(i32, i32*) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
