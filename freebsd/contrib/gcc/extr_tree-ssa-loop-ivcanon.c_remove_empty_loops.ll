; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_remove_empty_loops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_remove_empty_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.loop* }
%struct.loop = type { %struct.loop* }

@TODO_cleanup_cfg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_empty_loops(%struct.loops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  store %struct.loops* %0, %struct.loops** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.loops*, %struct.loops** %3, align 8
  %7 = getelementptr inbounds %struct.loops, %struct.loops* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.loop*, %struct.loop** %9, align 8
  store %struct.loop* %10, %struct.loop** %5, align 8
  br label %11

11:                                               ; preds = %17, %1
  %12 = load %struct.loop*, %struct.loop** %5, align 8
  %13 = icmp ne %struct.loop* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.loop*, %struct.loop** %5, align 8
  %16 = call i32 @try_remove_empty_loop(%struct.loop* %15, i32* %4)
  br label %17

17:                                               ; preds = %14
  %18 = load %struct.loop*, %struct.loop** %5, align 8
  %19 = getelementptr inbounds %struct.loop, %struct.loop* %18, i32 0, i32 0
  %20 = load %struct.loop*, %struct.loop** %19, align 8
  store %struct.loop* %20, %struct.loop** %5, align 8
  br label %11

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call i32 (...) @scev_reset()
  %26 = load i32, i32* @TODO_cleanup_cfg, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @try_remove_empty_loop(%struct.loop*, i32*) #1

declare dso_local i32 @scev_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
