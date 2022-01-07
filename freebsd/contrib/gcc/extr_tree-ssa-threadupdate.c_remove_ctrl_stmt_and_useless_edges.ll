; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-threadupdate.c_remove_ctrl_stmt_and_useless_edges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-threadupdate.c_remove_ctrl_stmt_and_useless_edges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@COND_EXPR = common dso_local global i64 0, align 8
@GOTO_EXPR = common dso_local global i64 0, align 8
@SWITCH_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*)* @remove_ctrl_stmt_and_useless_edges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_ctrl_stmt_and_useless_edges(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = call i32 @bsi_last(%struct.TYPE_9__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @bsi_end_p(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @bsi_stmt(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @bsi_stmt(i32 %18)
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @COND_EXPR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @bsi_stmt(i32 %24)
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @GOTO_EXPR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @bsi_stmt(i32 %30)
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = load i64, i64* @SWITCH_EXPR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23, %17
  %36 = call i32 @bsi_remove(i32* %5, i32 1)
  br label %37

37:                                               ; preds = %35, %29, %13, %2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ei_start(i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %57, %37
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.TYPE_8__* @ei_safe_edge(i32 %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %6, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = icmp ne %struct.TYPE_9__* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = call i32 @remove_edge(%struct.TYPE_8__* %53)
  br label %57

55:                                               ; preds = %46
  %56 = call i32 @ei_next(i32* %7)
  br label %57

57:                                               ; preds = %55, %52
  br label %42

58:                                               ; preds = %42
  ret void
}

declare dso_local i32 @bsi_last(%struct.TYPE_9__*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @bsi_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @bsi_remove(i32*, i32) #1

declare dso_local i32 @ei_start(i32) #1

declare dso_local %struct.TYPE_8__* @ei_safe_edge(i32) #1

declare dso_local i32 @remove_edge(%struct.TYPE_8__*) #1

declare dso_local i32 @ei_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
