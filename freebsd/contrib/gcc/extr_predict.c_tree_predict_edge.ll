; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_tree_predict_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_tree_predict_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.edge_prediction*, i32 }
%struct.edge_prediction = type { i32, i32, %struct.TYPE_4__*, %struct.edge_prediction* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@profile_status = common dso_local global i64 0, align 8
@PROFILE_GUESSED = common dso_local global i64 0, align 8
@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_5__* null, align 8
@flag_guess_branch_prob = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree_predict_edge(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.edge_prediction*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @profile_status, align 8
  %9 = load i64, i64* @PROFILE_GUESSED, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ENTRY_BLOCK_PTR, align 8
  %17 = icmp ne %struct.TYPE_5__* %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @EDGE_COUNT(i32 %23)
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %55

26:                                               ; preds = %18
  %27 = load i64, i64* @flag_guess_branch_prob, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load i64, i64* @optimize, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = call %struct.edge_prediction* @ggc_alloc(i32 24)
  store %struct.edge_prediction* %33, %struct.edge_prediction** %7, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.edge_prediction*, %struct.edge_prediction** %37, align 8
  %39 = load %struct.edge_prediction*, %struct.edge_prediction** %7, align 8
  %40 = getelementptr inbounds %struct.edge_prediction, %struct.edge_prediction* %39, i32 0, i32 3
  store %struct.edge_prediction* %38, %struct.edge_prediction** %40, align 8
  %41 = load %struct.edge_prediction*, %struct.edge_prediction** %7, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store %struct.edge_prediction* %41, %struct.edge_prediction** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.edge_prediction*, %struct.edge_prediction** %7, align 8
  %48 = getelementptr inbounds %struct.edge_prediction, %struct.edge_prediction* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.edge_prediction*, %struct.edge_prediction** %7, align 8
  %51 = getelementptr inbounds %struct.edge_prediction, %struct.edge_prediction* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = load %struct.edge_prediction*, %struct.edge_prediction** %7, align 8
  %54 = getelementptr inbounds %struct.edge_prediction, %struct.edge_prediction* %53, i32 0, i32 2
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %54, align 8
  br label %55

55:                                               ; preds = %32, %29, %26, %18, %3
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local %struct.edge_prediction* @ggc_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
