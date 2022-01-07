; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_find_loop_niter_by_eval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_find_loop_niter_by_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_loop_niter_by_eval(%struct.loop* %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %4, align 8
  %11 = load %struct.loop*, %struct.loop** %3, align 8
  %12 = call %struct.TYPE_6__** @get_loop_exit_edges(%struct.loop* %11, i32* %5)
  store %struct.TYPE_6__** %12, %struct.TYPE_6__*** %7, align 8
  %13 = load i64, i64* @NULL_TREE, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %14, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %53, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  %25 = load %struct.loop*, %struct.loop** %3, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @just_once_each_iteration_p(%struct.loop* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %53

32:                                               ; preds = %19
  %33 = load %struct.loop*, %struct.loop** %3, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = call i64 @loop_niter_by_eval(%struct.loop* %33, %struct.TYPE_6__* %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @chrec_contains_undetermined(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %53

40:                                               ; preds = %32
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @tree_int_cst_lt(i64 %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %53

49:                                               ; preds = %43, %40
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %9, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %52, align 8
  br label %53

53:                                               ; preds = %49, %48, %39, %31
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %15

56:                                               ; preds = %15
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %58 = call i32 @free(%struct.TYPE_6__** %57)
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, i64* %9, align 8
  br label %65

63:                                               ; preds = %56
  %64 = load i64, i64* @chrec_dont_know, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  ret i64 %66
}

declare dso_local %struct.TYPE_6__** @get_loop_exit_edges(%struct.loop*, i32*) #1

declare dso_local i32 @just_once_each_iteration_p(%struct.loop*, i32) #1

declare dso_local i64 @loop_niter_by_eval(%struct.loop*, %struct.TYPE_6__*) #1

declare dso_local i64 @chrec_contains_undetermined(i64) #1

declare dso_local i32 @tree_int_cst_lt(i64, i64) #1

declare dso_local i32 @free(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
