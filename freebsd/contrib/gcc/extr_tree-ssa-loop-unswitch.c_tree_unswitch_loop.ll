; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-unswitch.c_tree_unswitch_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-unswitch.c_tree_unswitch_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32 }
%struct.loop = type { i32* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.loop* (%struct.loops*, %struct.loop*, %struct.TYPE_5__*, i32)* @tree_unswitch_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.loop* @tree_unswitch_loop(%struct.loops* %0, %struct.loop* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca %struct.loops*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.loops* %0, %struct.loops** %5, align 8
  store %struct.loop* %1, %struct.loop** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.loop*, %struct.loop** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = call i32 @flow_bb_inside_loop_p(%struct.loop* %10, %struct.TYPE_5__* %11)
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @EDGE_COUNT(i32 %16)
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load %struct.loop*, %struct.loop** %6, align 8
  %22 = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @gcc_assert(i32 %25)
  %27 = load %struct.loops*, %struct.loops** %5, align 8
  %28 = load %struct.loop*, %struct.loop** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @unshare_expr(i32 %29)
  %31 = call %struct.loop* @loop_version(%struct.loops* %27, %struct.loop* %28, i32 %30, %struct.TYPE_5__** %9, i32 0)
  ret %struct.loop* %31
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @flow_bb_inside_loop_p(%struct.loop*, %struct.TYPE_5__*) #1

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local %struct.loop* @loop_version(%struct.loops*, %struct.loop*, i32, %struct.TYPE_5__**, i32) #1

declare dso_local i32 @unshare_expr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
