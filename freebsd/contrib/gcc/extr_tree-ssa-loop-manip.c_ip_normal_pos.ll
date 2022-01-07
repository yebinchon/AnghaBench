; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_ip_normal_pos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_ip_normal_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64 }
%struct.TYPE_3__ = type { i64 }

@COND_EXPR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ip_normal_pos(%struct.loop* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  %7 = load %struct.loop*, %struct.loop** %3, align 8
  %8 = getelementptr inbounds %struct.loop, %struct.loop* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @single_pred_p(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.loop*, %struct.loop** %3, align 8
  %15 = getelementptr inbounds %struct.loop, %struct.loop* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32* @single_pred(i64 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @last_stmt(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @TREE_CODE(i32 %20)
  %22 = load i64, i64* @COND_EXPR, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32* null, i32** %2, align 8
  br label %48

25:                                               ; preds = %13
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.TYPE_3__* @EDGE_SUCC(i32* %26, i32 0)
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.loop*, %struct.loop** %3, align 8
  %32 = getelementptr inbounds %struct.loop, %struct.loop* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32*, i32** %5, align 8
  %37 = call %struct.TYPE_3__* @EDGE_SUCC(i32* %36, i32 1)
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %6, align 8
  br label %38

38:                                               ; preds = %35, %25
  %39 = load %struct.loop*, %struct.loop** %3, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @flow_bb_inside_loop_p(%struct.loop* %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32* null, i32** %2, align 8
  br label %48

46:                                               ; preds = %38
  %47 = load i32*, i32** %5, align 8
  store i32* %47, i32** %2, align 8
  br label %48

48:                                               ; preds = %46, %45, %24, %12
  %49 = load i32*, i32** %2, align 8
  ret i32* %49
}

declare dso_local i32 @single_pred_p(i64) #1

declare dso_local i32* @single_pred(i64) #1

declare dso_local i32 @last_stmt(i32*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local %struct.TYPE_3__* @EDGE_SUCC(i32*, i32) #1

declare dso_local i64 @flow_bb_inside_loop_p(%struct.loop*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
