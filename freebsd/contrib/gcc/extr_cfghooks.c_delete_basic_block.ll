; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfghooks.c_delete_basic_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfghooks.c_delete_basic_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_9__*)*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@cfg_hooks = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"%s does not support delete_basic_block\00", align 1
@dom_computed = common dso_local global i64* null, align 8
@CDI_DOMINATORS = common dso_local global i64 0, align 8
@CDI_POST_DOMINATORS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_basic_block(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cfg_hooks, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %5 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %4, align 8
  %6 = icmp ne i32 (%struct.TYPE_9__*)* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cfg_hooks, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @internal_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cfg_hooks, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = call i32 %15(%struct.TYPE_9__* %16)
  br label %18

18:                                               ; preds = %24, %12
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @EDGE_COUNT(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = call i32 @EDGE_PRED(%struct.TYPE_9__* %25, i32 0)
  %27 = call i32 @remove_edge(i32 %26)
  br label %18

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %35, %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @EDGE_COUNT(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = call i32 @EDGE_SUCC(%struct.TYPE_9__* %36, i32 0)
  %38 = call i32 @remove_edge(i32 %37)
  br label %29

39:                                               ; preds = %29
  %40 = load i64*, i64** @dom_computed, align 8
  %41 = load i64, i64* @CDI_DOMINATORS, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64, i64* @CDI_DOMINATORS, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = call i32 @delete_from_dominance_info(i64 %46, %struct.TYPE_9__* %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i64*, i64** @dom_computed, align 8
  %51 = load i64, i64* @CDI_POST_DOMINATORS, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64, i64* @CDI_POST_DOMINATORS, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = call i32 @delete_from_dominance_info(i64 %56, %struct.TYPE_9__* %57)
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = call i32 @expunge_block(%struct.TYPE_9__* %60)
  ret void
}

declare dso_local i32 @internal_error(i8*, i32) #1

declare dso_local i64 @EDGE_COUNT(i32) #1

declare dso_local i32 @remove_edge(i32) #1

declare dso_local i32 @EDGE_PRED(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @EDGE_SUCC(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @delete_from_dominance_info(i64, %struct.TYPE_9__*) #1

declare dso_local i32 @expunge_block(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
