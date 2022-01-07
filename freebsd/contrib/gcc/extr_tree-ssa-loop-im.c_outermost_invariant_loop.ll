; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_outermost_invariant_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_outermost_invariant_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.loop* (i32, %struct.loop*)* @outermost_invariant_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.loop* @outermost_invariant_loop(i32 %0, %struct.loop* %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.loop*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.loop* %1, %struct.loop** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @SSA_NAME, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.loop*, %struct.loop** %5, align 8
  %15 = call %struct.loop* @superloop_at_depth(%struct.loop* %14, i32 1)
  store %struct.loop* %15, %struct.loop** %3, align 8
  br label %63

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @SSA_NAME_DEF_STMT(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.TYPE_6__* @bb_for_stmt(i32 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.loop*, %struct.loop** %5, align 8
  %25 = call %struct.loop* @superloop_at_depth(%struct.loop* %24, i32 1)
  store %struct.loop* %25, %struct.loop** %3, align 8
  br label %63

26:                                               ; preds = %16
  %27 = load %struct.loop*, %struct.loop** %5, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.loop* @find_common_loop(%struct.loop* %27, i32 %30)
  store %struct.loop* %31, %struct.loop** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.TYPE_7__* @LIM_DATA(i32 %32)
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.TYPE_7__* @LIM_DATA(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.loop*, %struct.loop** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.TYPE_7__* @LIM_DATA(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.loop* @find_common_loop(%struct.loop* %42, i32 %48)
  store %struct.loop* %49, %struct.loop** %8, align 8
  br label %50

50:                                               ; preds = %41, %35, %26
  %51 = load %struct.loop*, %struct.loop** %8, align 8
  %52 = load %struct.loop*, %struct.loop** %5, align 8
  %53 = icmp eq %struct.loop* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store %struct.loop* null, %struct.loop** %3, align 8
  br label %63

55:                                               ; preds = %50
  %56 = load %struct.loop*, %struct.loop** %5, align 8
  %57 = load %struct.loop*, %struct.loop** %8, align 8
  %58 = getelementptr inbounds %struct.loop, %struct.loop* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = call %struct.loop* @superloop_at_depth(%struct.loop* %56, i32 %60)
  store %struct.loop* %61, %struct.loop** %8, align 8
  %62 = load %struct.loop*, %struct.loop** %8, align 8
  store %struct.loop* %62, %struct.loop** %3, align 8
  br label %63

63:                                               ; preds = %55, %54, %23, %13
  %64 = load %struct.loop*, %struct.loop** %3, align 8
  ret %struct.loop* %64
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local %struct.loop* @superloop_at_depth(%struct.loop*, i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local %struct.TYPE_6__* @bb_for_stmt(i32) #1

declare dso_local %struct.loop* @find_common_loop(%struct.loop*, i32) #1

declare dso_local %struct.TYPE_7__* @LIM_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
