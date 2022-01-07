; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_compute_overall_effect_of_inner_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_compute_overall_effect_of_inner_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.loop** }
%struct.loop = type { i64 }

@chrec_dont_know = common dso_local global i64 0, align 8
@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@current_loops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*, i64)* @compute_overall_effect_of_inner_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compute_overall_effect_of_inner_loop(%struct.loop* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @chrec_dont_know, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @chrec_dont_know, align 8
  store i64 %15, i64* %3, align 8
  br label %78

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @CHREC_VARIABLE(i64 %22)
  %24 = load %struct.loop*, %struct.loop** %4, align 8
  %25 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = zext i32 %27 to i64
  %29 = icmp uge i64 %23, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %21
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_loops, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.loop**, %struct.loop*** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @CHREC_VARIABLE(i64 %34)
  %36 = getelementptr inbounds %struct.loop*, %struct.loop** %33, i64 %35
  %37 = load %struct.loop*, %struct.loop** %36, align 8
  store %struct.loop* %37, %struct.loop** %7, align 8
  %38 = load %struct.loop*, %struct.loop** %7, align 8
  %39 = call i64 @number_of_iterations_in_loop(%struct.loop* %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @chrec_dont_know, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i64, i64* @chrec_dont_know, align 8
  store i64 %44, i64* %3, align 8
  br label %78

45:                                               ; preds = %30
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @chrec_type(i64 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @build_int_cst(i64 %50, i32 1)
  %52 = call i64 @chrec_fold_minus(i64 %48, i64 %49, i32 %51)
  store i64 %52, i64* %8, align 8
  %53 = load %struct.loop*, %struct.loop** %7, align 8
  %54 = getelementptr inbounds %struct.loop, %struct.loop* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @chrec_apply(i64 %55, i64 %56, i64 %57)
  store i64 %58, i64* %9, align 8
  %59 = load %struct.loop*, %struct.loop** %4, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @compute_overall_effect_of_inner_loop(%struct.loop* %59, i64 %60)
  store i64 %61, i64* %3, align 8
  br label %78

62:                                               ; preds = %21
  %63 = load i64, i64* %5, align 8
  store i64 %63, i64* %3, align 8
  br label %78

64:                                               ; preds = %16
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.loop*, %struct.loop** %4, align 8
  %67 = getelementptr inbounds %struct.loop, %struct.loop* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @no_evolution_in_loop_p(i64 %65, i64 %68, i32* %6)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i64, i64* %5, align 8
  store i64 %75, i64* %3, align 8
  br label %78

76:                                               ; preds = %71, %64
  %77 = load i64, i64* @chrec_dont_know, align 8
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %76, %74, %62, %45, %43, %14
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @CHREC_VARIABLE(i64) #1

declare dso_local i64 @number_of_iterations_in_loop(%struct.loop*) #1

declare dso_local i64 @chrec_type(i64) #1

declare dso_local i64 @chrec_fold_minus(i64, i64, i32) #1

declare dso_local i32 @build_int_cst(i64, i32) #1

declare dso_local i64 @chrec_apply(i64, i64, i64) #1

declare dso_local i64 @no_evolution_in_loop_p(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
