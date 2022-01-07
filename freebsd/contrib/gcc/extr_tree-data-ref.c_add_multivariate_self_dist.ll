; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_add_multivariate_self_dist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_add_multivariate_self_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_dependence_relation = type { i32 }

@INTEGER_CST = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_dependence_relation*, i32)* @add_multivariate_self_dist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_multivariate_self_dist(%struct.data_dependence_relation* %0, i32 %1) #0 {
  %3 = alloca %struct.data_dependence_relation*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.data_dependence_relation* %0, %struct.data_dependence_relation** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @CHREC_LEFT(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @CHREC_LEFT(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @INTEGER_CST, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @chrec_dont_know, align 4
  store i32 %20, i32* %10, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CHREC_VARIABLE(i32 %22)
  %24 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %25 = call i32 @DDR_LOOP_NEST(%struct.data_dependence_relation* %24)
  %26 = call i32 @index_in_loop_nest(i32 %23, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @CHREC_VARIABLE(i32 %27)
  %29 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %30 = call i32 @DDR_LOOP_NEST(%struct.data_dependence_relation* %29)
  %31 = call i32 @index_in_loop_nest(i32 %28, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %33 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %32)
  %34 = call i32* @lambda_vector_new(i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @CHREC_RIGHT(i32 %35)
  %37 = call i32 @int_cst_value(i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @CHREC_RIGHT(i32 %42)
  %44 = call i32 @int_cst_value(i32 %43)
  %45 = sub nsw i32 0, %44
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @save_dist_v(%struct.data_dependence_relation* %50, i32* %51)
  %53 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @add_outer_distances(%struct.data_dependence_relation* %53, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %21, %19
  ret void
}

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @index_in_loop_nest(i32, i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @DDR_LOOP_NEST(%struct.data_dependence_relation*) #1

declare dso_local i32* @lambda_vector_new(i32) #1

declare dso_local i32 @DDR_NB_LOOPS(%struct.data_dependence_relation*) #1

declare dso_local i32 @int_cst_value(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

declare dso_local i32 @save_dist_v(%struct.data_dependence_relation*, i32*) #1

declare dso_local i32 @add_outer_distances(%struct.data_dependence_relation*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
