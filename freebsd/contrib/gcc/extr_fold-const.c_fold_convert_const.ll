; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_convert_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_convert_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_CST = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64)* @fold_convert_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_convert_const(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @TREE_TYPE(i64 %8)
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %4, align 8
  br label %70

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @POINTER_TYPE_P(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @INTEGRAL_TYPE_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %18, %14
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @INTEGER_CST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @fold_convert_const_int_from_int(i64 %28, i64 %29)
  store i64 %30, i64* %4, align 8
  br label %70

31:                                               ; preds = %22
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @REAL_CST, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @fold_convert_const_int_from_real(i32 %37, i64 %38, i64 %39)
  store i64 %40, i64* %4, align 8
  br label %70

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  br label %68

43:                                               ; preds = %18
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @REAL_TYPE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @TREE_CODE(i64 %49)
  %51 = load i64, i64* @INTEGER_CST, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @build_real_from_int_cst(i64 %54, i64 %55)
  store i64 %56, i64* %4, align 8
  br label %70

57:                                               ; preds = %48
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @TREE_CODE(i64 %58)
  %60 = load i64, i64* @REAL_CST, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @fold_convert_const_real_from_real(i64 %63, i64 %64)
  store i64 %65, i64* %4, align 8
  br label %70

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %43
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i64, i64* @NULL_TREE, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %68, %62, %53, %36, %27, %12
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @fold_convert_const_int_from_int(i64, i64) #1

declare dso_local i64 @fold_convert_const_int_from_real(i32, i64, i64) #1

declare dso_local i64 @build_real_from_int_cst(i64, i64) #1

declare dso_local i64 @fold_convert_const_real_from_real(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
