; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-propagate.c_ssa_propagate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-propagate.c_ssa_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ssa_prop_visit_stmt = common dso_local global i32 0, align 4
@ssa_prop_visit_phi = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@interesting_ssa_edges = common dso_local global i32 0, align 4
@varying_ssa_edges = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssa_propagate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* @ssa_prop_visit_stmt, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* @ssa_prop_visit_phi, align 4
  %8 = call i32 (...) @ssa_prop_init()
  br label %9

9:                                                ; preds = %31, %2
  %10 = call i32 (...) @cfg_blocks_empty_p()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i32, i32* @tree, align 4
  %14 = load i32, i32* @interesting_ssa_edges, align 4
  %15 = call i64 @VEC_length(i32 %13, i32 %14)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @tree, align 4
  %19 = load i32, i32* @varying_ssa_edges, align 4
  %20 = call i64 @VEC_length(i32 %18, i32 %19)
  %21 = icmp sgt i64 %20, 0
  br label %22

22:                                               ; preds = %17, %12, %9
  %23 = phi i1 [ true, %12 ], [ true, %9 ], [ %21, %17 ]
  br i1 %23, label %24, label %34

24:                                               ; preds = %22
  %25 = call i32 (...) @cfg_blocks_empty_p()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = call i32 (...) @cfg_blocks_get()
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @simulate_block(i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = call i32 @process_ssa_edge_worklist(i32* @varying_ssa_edges)
  %33 = call i32 @process_ssa_edge_worklist(i32* @interesting_ssa_edges)
  br label %9

34:                                               ; preds = %22
  %35 = call i32 (...) @ssa_prop_fini()
  ret void
}

declare dso_local i32 @ssa_prop_init(...) #1

declare dso_local i32 @cfg_blocks_empty_p(...) #1

declare dso_local i64 @VEC_length(i32, i32) #1

declare dso_local i32 @cfg_blocks_get(...) #1

declare dso_local i32 @simulate_block(i32) #1

declare dso_local i32 @process_ssa_edge_worklist(i32*) #1

declare dso_local i32 @ssa_prop_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
