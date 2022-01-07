; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_vect_is_simple_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_vect_is_simple_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vect_is_simple_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vect_is_simple_cond(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @COMPARISON_CLASS_P(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TREE_OPERAND(i32 %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 1)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @SSA_NAME, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @SSA_NAME_DEF_STMT(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @vect_is_simple_use(i32 %28, i32 %29, i32* %10, i32* %8, i32* %9)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %73

33:                                               ; preds = %25
  br label %46

34:                                               ; preds = %16
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @TREE_CODE(i32 %35)
  %37 = load i64, i64* @INTEGER_CST, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @TREE_CODE(i32 %40)
  %42 = load i64, i64* @REAL_CST, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %73

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @TREE_CODE(i32 %47)
  %49 = load i64, i64* @SSA_NAME, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @SSA_NAME_DEF_STMT(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @vect_is_simple_use(i32 %54, i32 %55, i32* %11, i32* %8, i32* %9)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %73

59:                                               ; preds = %51
  br label %72

60:                                               ; preds = %46
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @TREE_CODE(i32 %61)
  %63 = load i64, i64* @INTEGER_CST, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @TREE_CODE(i32 %66)
  %68 = load i64, i64* @REAL_CST, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %73

71:                                               ; preds = %65, %60
  br label %72

72:                                               ; preds = %71, %59
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %70, %58, %44, %32, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @COMPARISON_CLASS_P(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i32 @vect_is_simple_use(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
