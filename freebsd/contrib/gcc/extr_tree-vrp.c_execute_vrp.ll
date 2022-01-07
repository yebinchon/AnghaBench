; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_execute_vrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_execute_vrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOOPS_NORMAL = common dso_local global i32 0, align 4
@current_loops = common dso_local global i32* null, align 8
@vrp_visit_stmt = common dso_local global i32 0, align 4
@vrp_visit_phi_node = common dso_local global i32 0, align 4
@TODO_update_ssa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @execute_vrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_vrp() #0 {
  %1 = call i32 (...) @insert_range_assertions()
  %2 = load i32, i32* @LOOPS_NORMAL, align 4
  %3 = call i32* @loop_optimizer_init(i32 %2)
  store i32* %3, i32** @current_loops, align 8
  %4 = load i32*, i32** @current_loops, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32*, i32** @current_loops, align 8
  %8 = call i32 @scev_initialize(i32* %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = call i32 (...) @vrp_initialize()
  %11 = load i32, i32* @vrp_visit_stmt, align 4
  %12 = load i32, i32* @vrp_visit_phi_node, align 4
  %13 = call i32 @ssa_propagate(i32 %11, i32 %12)
  %14 = call i32 (...) @vrp_finalize()
  %15 = load i32*, i32** @current_loops, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = call i32 (...) @scev_finalize()
  %19 = load i32*, i32** @current_loops, align 8
  %20 = call i32 @loop_optimizer_finalize(i32* %19)
  store i32* null, i32** @current_loops, align 8
  br label %21

21:                                               ; preds = %17, %9
  %22 = call i32 (...) @remove_range_assertions()
  %23 = load i32, i32* @TODO_update_ssa, align 4
  %24 = call i32 @update_ssa(i32 %23)
  %25 = call i32 (...) @finalize_jump_threads()
  ret i32 0
}

declare dso_local i32 @insert_range_assertions(...) #1

declare dso_local i32* @loop_optimizer_init(i32) #1

declare dso_local i32 @scev_initialize(i32*) #1

declare dso_local i32 @vrp_initialize(...) #1

declare dso_local i32 @ssa_propagate(i32, i32) #1

declare dso_local i32 @vrp_finalize(...) #1

declare dso_local i32 @scev_finalize(...) #1

declare dso_local i32 @loop_optimizer_finalize(i32*) #1

declare dso_local i32 @remove_range_assertions(...) #1

declare dso_local i32 @update_ssa(i32) #1

declare dso_local i32 @finalize_jump_threads(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
