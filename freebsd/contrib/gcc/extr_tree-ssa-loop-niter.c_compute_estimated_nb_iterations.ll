; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_compute_estimated_nb_iterations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_compute_estimated_nb_iterations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, %struct.nb_iter_bound* }
%struct.nb_iter_bound = type { i32, %struct.nb_iter_bound* }

@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*)* @compute_estimated_nb_iterations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_estimated_nb_iterations(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca %struct.nb_iter_bound*, align 8
  store %struct.loop* %0, %struct.loop** %2, align 8
  %4 = load %struct.loop*, %struct.loop** %2, align 8
  %5 = getelementptr inbounds %struct.loop, %struct.loop* %4, i32 0, i32 1
  %6 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %5, align 8
  store %struct.nb_iter_bound* %6, %struct.nb_iter_bound** %3, align 8
  br label %7

7:                                                ; preds = %40, %1
  %8 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %3, align 8
  %9 = icmp ne %struct.nb_iter_bound* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %3, align 8
  %12 = getelementptr inbounds %struct.nb_iter_bound, %struct.nb_iter_bound* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @INTEGER_CST, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %40

18:                                               ; preds = %10
  %19 = load %struct.loop*, %struct.loop** %2, align 8
  %20 = getelementptr inbounds %struct.loop, %struct.loop* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @chrec_contains_undetermined(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %3, align 8
  %26 = getelementptr inbounds %struct.nb_iter_bound, %struct.nb_iter_bound* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.loop*, %struct.loop** %2, align 8
  %29 = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @tree_int_cst_lt(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24, %18
  %34 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %3, align 8
  %35 = getelementptr inbounds %struct.nb_iter_bound, %struct.nb_iter_bound* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.loop*, %struct.loop** %2, align 8
  %38 = getelementptr inbounds %struct.loop, %struct.loop* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %33, %24
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %3, align 8
  %42 = getelementptr inbounds %struct.nb_iter_bound, %struct.nb_iter_bound* %41, i32 0, i32 1
  %43 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %42, align 8
  store %struct.nb_iter_bound* %43, %struct.nb_iter_bound** %3, align 8
  br label %7

44:                                               ; preds = %7
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @chrec_contains_undetermined(i32) #1

declare dso_local i64 @tree_int_cst_lt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
