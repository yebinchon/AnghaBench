; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_remove_predictions_associated_with_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_remove_predictions_associated_with_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.edge_prediction* }
%struct.edge_prediction = type { %struct.edge_prediction*, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_predictions_associated_with_edge(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.edge_prediction**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.edge_prediction*, %struct.edge_prediction** %7, align 8
  %9 = icmp ne %struct.edge_prediction* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.edge_prediction** %14, %struct.edge_prediction*** %3, align 8
  br label %15

15:                                               ; preds = %36, %10
  %16 = load %struct.edge_prediction**, %struct.edge_prediction*** %3, align 8
  %17 = load %struct.edge_prediction*, %struct.edge_prediction** %16, align 8
  %18 = icmp ne %struct.edge_prediction* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load %struct.edge_prediction**, %struct.edge_prediction*** %3, align 8
  %21 = load %struct.edge_prediction*, %struct.edge_prediction** %20, align 8
  %22 = getelementptr inbounds %struct.edge_prediction, %struct.edge_prediction* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = icmp eq %struct.TYPE_5__* %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.edge_prediction**, %struct.edge_prediction*** %3, align 8
  %28 = load %struct.edge_prediction*, %struct.edge_prediction** %27, align 8
  %29 = getelementptr inbounds %struct.edge_prediction, %struct.edge_prediction* %28, i32 0, i32 0
  %30 = load %struct.edge_prediction*, %struct.edge_prediction** %29, align 8
  %31 = load %struct.edge_prediction**, %struct.edge_prediction*** %3, align 8
  store %struct.edge_prediction* %30, %struct.edge_prediction** %31, align 8
  br label %36

32:                                               ; preds = %19
  %33 = load %struct.edge_prediction**, %struct.edge_prediction*** %3, align 8
  %34 = load %struct.edge_prediction*, %struct.edge_prediction** %33, align 8
  %35 = getelementptr inbounds %struct.edge_prediction, %struct.edge_prediction* %34, i32 0, i32 0
  store %struct.edge_prediction** %35, %struct.edge_prediction*** %3, align 8
  br label %36

36:                                               ; preds = %32, %26
  br label %15

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
