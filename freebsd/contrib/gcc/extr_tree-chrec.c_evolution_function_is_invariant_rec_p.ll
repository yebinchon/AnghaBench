; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_evolution_function_is_invariant_rec_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_evolution_function_is_invariant_rec_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@SSA_NAME = common dso_local global i64 0, align 8
@current_loops = common dso_local global %struct.TYPE_2__* null, align 8
@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @evolution_function_is_invariant_rec_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evolution_function_is_invariant_rec_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @evolution_function_is_constant_p(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %72

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @SSA_NAME, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_loops, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @expr_invariant_in_loop_p(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %72

27:                                               ; preds = %15, %10
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CHREC_VARIABLE(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @CHREC_RIGHT(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @evolution_function_is_invariant_rec_p(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @CHREC_LEFT(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @evolution_function_is_invariant_rec_p(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %37, %32
  store i32 0, i32* %3, align 4
  br label %72

50:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %72

51:                                               ; preds = %27
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @TREE_CODE(i32 %52)
  %54 = call i32 @TREE_CODE_LENGTH(i64 %53)
  switch i32 %54, label %71 [
    i32 2, label %55
    i32 1, label %63
  ]

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @TREE_OPERAND(i32 %56, i32 1)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @evolution_function_is_invariant_rec_p(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %72

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %51, %62
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @TREE_OPERAND(i32 %64, i32 0)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @evolution_function_is_invariant_rec_p(i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %72

70:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %72

71:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %70, %69, %61, %50, %49, %26, %9
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @evolution_function_is_constant_p(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @expr_invariant_in_loop_p(i32, i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @TREE_CODE_LENGTH(i64) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
