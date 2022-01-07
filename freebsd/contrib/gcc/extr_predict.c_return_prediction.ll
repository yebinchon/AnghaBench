; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_return_prediction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_return_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRED_NO_PREDICTION = common dso_local global i32 0, align 4
@NOT_TAKEN = common dso_local global i32 0, align 4
@PRED_NULL_RETURN = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@PRED_NEGATIVE_RETURN = common dso_local global i32 0, align 4
@TAKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @return_prediction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @return_prediction(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @PRED_NO_PREDICTION, align 4
  store i32 %9, i32* %3, align 4
  br label %62

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TREE_TYPE(i32 %11)
  %13 = call i64 @POINTER_TYPE_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @integer_zerop(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @NOT_TAKEN, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @PRED_NULL_RETURN, align 4
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %15
  br label %60

24:                                               ; preds = %10
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @TREE_TYPE(i32 %25)
  %27 = call i64 @INTEGRAL_TYPE_P(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @INTEGER_CST, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @tree_int_cst_sgn(i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @NOT_TAKEN, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @PRED_NEGATIVE_RETURN, align 4
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @TREE_CONSTANT(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @integer_zerop(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @integer_onep(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @TAKEN, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @PRED_NEGATIVE_RETURN, align 4
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %50, %46, %42
  br label %59

59:                                               ; preds = %58, %24
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i32, i32* @PRED_NO_PREDICTION, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %54, %38, %19, %8
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @tree_int_cst_sgn(i32) #1

declare dso_local i64 @TREE_CONSTANT(i32) #1

declare dso_local i32 @integer_onep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
