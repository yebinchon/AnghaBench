; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_find_loop_niter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_find_loop_niter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.tree_niter_desc = type { i64, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@unsigned_type_node = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_loop_niter(%struct.loop* %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tree_niter_desc, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %4, align 8
  %12 = load %struct.loop*, %struct.loop** %3, align 8
  %13 = call %struct.TYPE_6__** @get_loop_exit_edges(%struct.loop* %12, i32* %5)
  store %struct.TYPE_6__** %13, %struct.TYPE_6__*** %7, align 8
  %14 = load i64, i64* @NULL_TREE, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %89, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %92

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %8, align 8
  %26 = load %struct.loop*, %struct.loop** %3, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @just_once_each_iteration_p(%struct.loop* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %89

33:                                               ; preds = %20
  %34 = load %struct.loop*, %struct.loop** %3, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = call i32 @number_of_iterations_exit(%struct.loop* %34, %struct.TYPE_6__* %35, %struct.tree_niter_desc* %11, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %89

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %11, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @nonzero_p(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @unsigned_type_node, align 4
  %46 = call i64 @build_int_cst(i32 %45, i32 0)
  store i64 %46, i64* %9, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %48, align 8
  br label %92

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %11, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @zero_p(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %89

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %11, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %10, align 8
  store i64 %61, i64* %9, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %63, align 8
  br label %89

64:                                               ; preds = %55
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @INTEGER_CST, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %89

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @TREE_CODE(i64 %71)
  %73 = load i64, i64* @INTEGER_CST, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %9, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %78, align 8
  br label %89

79:                                               ; preds = %70
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @tree_int_cst_lt(i64 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %9, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %87, align 8
  br label %89

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %84, %75, %69, %60, %54, %38, %32
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %16

92:                                               ; preds = %44, %16
  %93 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %94 = call i32 @free(%struct.TYPE_6__** %93)
  %95 = load i64, i64* %9, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i64, i64* %9, align 8
  br label %101

99:                                               ; preds = %92
  %100 = load i64, i64* @chrec_dont_know, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i64 [ %98, %97 ], [ %100, %99 ]
  ret i64 %102
}

declare dso_local %struct.TYPE_6__** @get_loop_exit_edges(%struct.loop*, i32*) #1

declare dso_local i32 @just_once_each_iteration_p(%struct.loop*, i32) #1

declare dso_local i32 @number_of_iterations_exit(%struct.loop*, %struct.TYPE_6__*, %struct.tree_niter_desc*, i32) #1

declare dso_local i64 @nonzero_p(i32) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i32 @zero_p(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

declare dso_local i32 @free(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
