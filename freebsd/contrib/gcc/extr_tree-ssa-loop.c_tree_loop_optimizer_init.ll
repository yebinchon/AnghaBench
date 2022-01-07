; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop.c_tree_loop_optimizer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop.c_tree_loop_optimizer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32 }

@LOOPS_NORMAL = common dso_local global i32 0, align 4
@LOOPS_HAVE_MARKED_SINGLE_EXITS = common dso_local global i32 0, align 4
@TODO_update_ssa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.loops* ()* @tree_loop_optimizer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.loops* @tree_loop_optimizer_init() #0 {
  %1 = alloca %struct.loops*, align 8
  %2 = alloca %struct.loops*, align 8
  %3 = load i32, i32* @LOOPS_NORMAL, align 4
  %4 = load i32, i32* @LOOPS_HAVE_MARKED_SINGLE_EXITS, align 4
  %5 = or i32 %3, %4
  %6 = call %struct.loops* @loop_optimizer_init(i32 %5)
  store %struct.loops* %6, %struct.loops** %2, align 8
  %7 = load %struct.loops*, %struct.loops** %2, align 8
  %8 = icmp ne %struct.loops* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store %struct.loops* null, %struct.loops** %1, align 8
  br label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @TODO_update_ssa, align 4
  %12 = call i32 @rewrite_into_loop_closed_ssa(i32* null, i32 %11)
  %13 = load %struct.loops*, %struct.loops** %2, align 8
  store %struct.loops* %13, %struct.loops** %1, align 8
  br label %14

14:                                               ; preds = %10, %9
  %15 = load %struct.loops*, %struct.loops** %1, align 8
  ret %struct.loops* %15
}

declare dso_local %struct.loops* @loop_optimizer_init(i32) #1

declare dso_local i32 @rewrite_into_loop_closed_ssa(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
