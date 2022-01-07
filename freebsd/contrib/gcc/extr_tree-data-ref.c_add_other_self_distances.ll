; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_add_other_self_distances.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_add_other_self_distances.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_dependence_relation = type { i32 }

@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_dependence_relation*)* @add_other_self_distances to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_other_self_distances(%struct.data_dependence_relation* %0) #0 {
  %2 = alloca %struct.data_dependence_relation*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.data_dependence_relation* %0, %struct.data_dependence_relation** %2, align 8
  %8 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %9 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %8)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %49, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %13 = call i32 @DDR_NUM_SUBSCRIPTS(%struct.data_dependence_relation* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %10
  %16 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %17 = call i32 @DDR_A(%struct.data_dependence_relation* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @DR_ACCESS_FN(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @TREE_CODE(i32 %20)
  %22 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @evolution_function_is_univariate_p(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %30 = call i32 @DDR_NUM_SUBSCRIPTS(%struct.data_dependence_relation* %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @chrec_dont_know, align 4
  store i32 %33, i32* %7, align 4
  br label %60

34:                                               ; preds = %28
  %35 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %36 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %37 = call i32 @DDR_A(%struct.data_dependence_relation* %36)
  %38 = call i32 @DR_ACCESS_FN(i32 %37, i32 0)
  %39 = call i32 @add_multivariate_self_dist(%struct.data_dependence_relation* %35, i32 %38)
  br label %60

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @CHREC_VARIABLE(i32 %42)
  %44 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %45 = call i32 @DDR_LOOP_NEST(%struct.data_dependence_relation* %44)
  %46 = call i32 @index_in_loop_nest(i32 %43, i32 %45)
  %47 = call i32 @MIN(i32 %41, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %40, %15
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %10

52:                                               ; preds = %10
  %53 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %54 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %53)
  %55 = call i32 @lambda_vector_new(i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @add_outer_distances(%struct.data_dependence_relation* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %52, %34, %32
  ret void
}

declare dso_local i32 @DDR_NB_LOOPS(%struct.data_dependence_relation*) #1

declare dso_local i32 @DDR_NUM_SUBSCRIPTS(%struct.data_dependence_relation*) #1

declare dso_local i32 @DR_ACCESS_FN(i32, i32) #1

declare dso_local i32 @DDR_A(%struct.data_dependence_relation*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @evolution_function_is_univariate_p(i32) #1

declare dso_local i32 @add_multivariate_self_dist(%struct.data_dependence_relation*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @index_in_loop_nest(i32, i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @DDR_LOOP_NEST(%struct.data_dependence_relation*) #1

declare dso_local i32 @lambda_vector_new(i32) #1

declare dso_local i32 @add_outer_distances(%struct.data_dependence_relation*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
