; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_omp_reduction_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_omp_reduction_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@integer_zero_node = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@integer_minus_one_node = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omp_reduction_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @OMP_CLAUSE_REDUCTION_CODE(i32 %9)
  switch i32 %10, label %75 [
    i32 133, label %11
    i32 137, label %11
    i32 141, label %11
    i32 140, label %11
    i32 129, label %11
    i32 130, label %11
    i32 128, label %11
    i32 134, label %11
    i32 135, label %15
    i32 131, label %15
    i32 132, label %15
    i32 139, label %15
    i32 142, label %19
    i32 138, label %23
    i32 136, label %50
  ]

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @integer_zero_node, align 4
  %14 = call i32 @fold_convert(i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %77

15:                                               ; preds = %2, %2, %2, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @integer_one_node, align 4
  %18 = call i32 @fold_convert(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %77

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @integer_minus_one_node, align 4
  %22 = call i32 @fold_convert(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @SCALAR_FLOAT_TYPE_P(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @TYPE_MODE(i32 %28)
  %30 = call i32 @HONOR_INFINITIES(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i32 @real_inf(i32* %6)
  %34 = load i32, i32* @NEGATE_EXPR, align 4
  %35 = call i32 @real_arithmetic(i32* %7, i32 %34, i32* %6, i32* null)
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @TYPE_MODE(i32 %37)
  %39 = call i32 @real_maxval(i32* %7, i32 1, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @build_real(i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %77

44:                                               ; preds = %23
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @INTEGRAL_TYPE_P(i32 %45)
  %47 = call i32 @gcc_assert(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @TYPE_MIN_VALUE(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %77

50:                                               ; preds = %2
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @SCALAR_FLOAT_TYPE_P(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @TYPE_MODE(i32 %55)
  %57 = call i32 @HONOR_INFINITIES(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @real_inf(i32* %8)
  br label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @TYPE_MODE(i32 %62)
  %64 = call i32 @real_maxval(i32* %8, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %61, %59
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @build_real(i32 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %77

69:                                               ; preds = %50
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @INTEGRAL_TYPE_P(i32 %70)
  %72 = call i32 @gcc_assert(i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @TYPE_MAX_VALUE(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %2
  %76 = call i32 (...) @gcc_unreachable()
  br label %77

77:                                               ; preds = %11, %15, %19, %40, %44, %65, %69, %75
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @OMP_CLAUSE_REDUCTION_CODE(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @SCALAR_FLOAT_TYPE_P(i32) #1

declare dso_local i32 @HONOR_INFINITIES(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @real_inf(i32*) #1

declare dso_local i32 @real_arithmetic(i32*, i32, i32*, i32*) #1

declare dso_local i32 @real_maxval(i32*, i32, i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TYPE_MIN_VALUE(i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
