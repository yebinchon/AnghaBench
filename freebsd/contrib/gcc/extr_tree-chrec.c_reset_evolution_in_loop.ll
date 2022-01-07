; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_reset_evolution_in_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_reset_evolution_in_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_evolution_in_loop(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @chrec_type(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @chrec_type(i32 %12)
  %14 = icmp eq i64 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @gcc_assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @TREE_CODE(i32 %17)
  %19 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @CHREC_VARIABLE(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @CHREC_LEFT(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @reset_evolution_in_loop(i32 %27, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @CHREC_RIGHT(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @reset_evolution_in_loop(i32 %32, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @TREE_TYPE(i32 %38)
  %40 = load i32, i32* @NULL_TREE, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @CHREC_VARIABLE(i32 %41)
  %43 = call i32 @build_int_cst(i32 %40, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @build3(i64 %37, i32 %39, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %68

47:                                               ; preds = %21, %3
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @TREE_CODE(i32 %49)
  %51 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @CHREC_VARIABLE(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %55, %56
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @CHREC_LEFT(i32 %61)
  store i32 %62, i32* %6, align 4
  br label %48

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @build_polynomial_chrec(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %26
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @chrec_type(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

declare dso_local i32 @build3(i64, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @build_polynomial_chrec(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
