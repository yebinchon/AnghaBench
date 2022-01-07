; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_tree_ssa_iv_optimize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_tree_ssa_iv_optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { %struct.loop* }
%struct.loop = type { %struct.loop*, %struct.loop*, %struct.loop* }
%struct.ivopts_data = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree_ssa_iv_optimize(%struct.loops* %0) #0 {
  %2 = alloca %struct.loops*, align 8
  %3 = alloca %struct.loop*, align 8
  %4 = alloca %struct.ivopts_data, align 4
  store %struct.loops* %0, %struct.loops** %2, align 8
  %5 = call i32 @tree_ssa_iv_optimize_init(%struct.ivopts_data* %4)
  %6 = load %struct.loops*, %struct.loops** %2, align 8
  %7 = getelementptr inbounds %struct.loops, %struct.loops* %6, i32 0, i32 0
  %8 = load %struct.loop*, %struct.loop** %7, align 8
  store %struct.loop* %8, %struct.loop** %3, align 8
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.loop*, %struct.loop** %3, align 8
  %11 = getelementptr inbounds %struct.loop, %struct.loop* %10, i32 0, i32 1
  %12 = load %struct.loop*, %struct.loop** %11, align 8
  %13 = icmp ne %struct.loop* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.loop*, %struct.loop** %3, align 8
  %16 = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 1
  %17 = load %struct.loop*, %struct.loop** %16, align 8
  store %struct.loop* %17, %struct.loop** %3, align 8
  br label %9

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %62, %18
  %20 = load %struct.loop*, %struct.loop** %3, align 8
  %21 = load %struct.loops*, %struct.loops** %2, align 8
  %22 = getelementptr inbounds %struct.loops, %struct.loops* %21, i32 0, i32 0
  %23 = load %struct.loop*, %struct.loop** %22, align 8
  %24 = icmp ne %struct.loop* %20, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = load i64, i64* @dump_file, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* @dump_flags, align 4
  %30 = load i32, i32* @TDF_DETAILS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.loop*, %struct.loop** %3, align 8
  %35 = load i64, i64* @dump_file, align 8
  %36 = call i32 @flow_loop_dump(%struct.loop* %34, i64 %35, i32* null, i32 1)
  br label %37

37:                                               ; preds = %33, %28, %25
  %38 = load %struct.loop*, %struct.loop** %3, align 8
  %39 = call i32 @tree_ssa_iv_optimize_loop(%struct.ivopts_data* %4, %struct.loop* %38)
  %40 = load %struct.loop*, %struct.loop** %3, align 8
  %41 = getelementptr inbounds %struct.loop, %struct.loop* %40, i32 0, i32 2
  %42 = load %struct.loop*, %struct.loop** %41, align 8
  %43 = icmp ne %struct.loop* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.loop*, %struct.loop** %3, align 8
  %46 = getelementptr inbounds %struct.loop, %struct.loop* %45, i32 0, i32 2
  %47 = load %struct.loop*, %struct.loop** %46, align 8
  store %struct.loop* %47, %struct.loop** %3, align 8
  br label %48

48:                                               ; preds = %53, %44
  %49 = load %struct.loop*, %struct.loop** %3, align 8
  %50 = getelementptr inbounds %struct.loop, %struct.loop* %49, i32 0, i32 1
  %51 = load %struct.loop*, %struct.loop** %50, align 8
  %52 = icmp ne %struct.loop* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.loop*, %struct.loop** %3, align 8
  %55 = getelementptr inbounds %struct.loop, %struct.loop* %54, i32 0, i32 1
  %56 = load %struct.loop*, %struct.loop** %55, align 8
  store %struct.loop* %56, %struct.loop** %3, align 8
  br label %48

57:                                               ; preds = %48
  br label %62

58:                                               ; preds = %37
  %59 = load %struct.loop*, %struct.loop** %3, align 8
  %60 = getelementptr inbounds %struct.loop, %struct.loop* %59, i32 0, i32 0
  %61 = load %struct.loop*, %struct.loop** %60, align 8
  store %struct.loop* %61, %struct.loop** %3, align 8
  br label %62

62:                                               ; preds = %58, %57
  br label %19

63:                                               ; preds = %19
  %64 = call i32 @tree_ssa_iv_optimize_finalize(%struct.ivopts_data* %4)
  ret void
}

declare dso_local i32 @tree_ssa_iv_optimize_init(%struct.ivopts_data*) #1

declare dso_local i32 @flow_loop_dump(%struct.loop*, i64, i32*, i32) #1

declare dso_local i32 @tree_ssa_iv_optimize_loop(%struct.ivopts_data*, %struct.loop*) #1

declare dso_local i32 @tree_ssa_iv_optimize_finalize(%struct.ivopts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
