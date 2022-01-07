; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_estimate_numbers_of_iterations_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_estimate_numbers_of_iterations_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.tree_niter_desc = type { i32, i32, i32 }

@chrec_dont_know = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*)* @estimate_numbers_of_iterations_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @estimate_numbers_of_iterations_loop(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tree_niter_desc, align 4
  store %struct.loop* %0, %struct.loop** %2, align 8
  %9 = load %struct.loop*, %struct.loop** %2, align 8
  %10 = getelementptr inbounds %struct.loop, %struct.loop* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @chrec_dont_know, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load %struct.loop*, %struct.loop** %2, align 8
  %16 = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NULL_TREE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.loop*, %struct.loop** %2, align 8
  %22 = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @INTEGER_CST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %1
  br label %100

28:                                               ; preds = %20, %14
  %29 = load i64, i64* @chrec_dont_know, align 8
  %30 = load %struct.loop*, %struct.loop** %2, align 8
  %31 = getelementptr inbounds %struct.loop, %struct.loop* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28
  %33 = load %struct.loop*, %struct.loop** %2, align 8
  %34 = call %struct.TYPE_5__** @get_loop_exit_edges(%struct.loop* %33, i32* %7)
  store %struct.TYPE_5__** %34, %struct.TYPE_5__*** %3, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %86, %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %35
  %40 = load %struct.loop*, %struct.loop** %2, align 8
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @number_of_iterations_exit(%struct.loop* %40, %struct.TYPE_5__* %45, %struct.tree_niter_desc* %8, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %86

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %8, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @TREE_TYPE(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @zero_p(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nonzero_p(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @COND_EXPR, align 4
  %65 = load i32, i32* %5, align 4
  %66 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %8, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @build_int_cst(i32 %68, i32 0)
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @build3(i32 %64, i32 %65, i32 %67, i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %63, %58, %49
  %73 = load %struct.loop*, %struct.loop** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %77, i64 %79
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @last_stmt(i32 %83)
  %85 = call i32 @record_estimate(%struct.loop* %73, i32 %74, i32 %76, i32 %84)
  br label %86

86:                                               ; preds = %72, %48
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %35

89:                                               ; preds = %35
  %90 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %91 = call i32 @free(%struct.TYPE_5__** %90)
  %92 = load %struct.loop*, %struct.loop** %2, align 8
  %93 = getelementptr inbounds %struct.loop, %struct.loop* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @chrec_contains_undetermined(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load %struct.loop*, %struct.loop** %2, align 8
  %99 = call i32 @infer_loop_bounds_from_undefined(%struct.loop* %98)
  br label %100

100:                                              ; preds = %27, %97, %89
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.TYPE_5__** @get_loop_exit_edges(%struct.loop*, i32*) #1

declare dso_local i32 @number_of_iterations_exit(%struct.loop*, %struct.TYPE_5__*, %struct.tree_niter_desc*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @zero_p(i32) #1

declare dso_local i32 @nonzero_p(i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @record_estimate(%struct.loop*, i32, i32, i32) #1

declare dso_local i32 @last_stmt(i32) #1

declare dso_local i32 @free(%struct.TYPE_5__**) #1

declare dso_local i64 @chrec_contains_undetermined(i64) #1

declare dso_local i32 @infer_loop_bounds_from_undefined(%struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
