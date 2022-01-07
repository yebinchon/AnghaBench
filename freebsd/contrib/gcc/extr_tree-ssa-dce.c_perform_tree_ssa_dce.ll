; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_perform_tree_ssa_dce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_perform_tree_ssa_dce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edge_list = type { i32 }

@TV_CONTROL_DEPENDENCES = common dso_local global i32 0, align 4
@CDI_POST_DOMINATORS = common dso_local global i32 0, align 4
@last_basic_block = common dso_local global i32 0, align 4
@visited_control_parents = common dso_local global i32 0, align 4
@cfg_altered = common dso_local global i64 0, align 8
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @perform_tree_ssa_dce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_tree_ssa_dce(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edge_list*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.edge_list* null, %struct.edge_list** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @tree_dce_init(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @TV_CONTROL_DEPENDENCES, align 4
  %10 = call i32 @timevar_push(i32 %9)
  %11 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %12 = call i32 @calculate_dominance_info(i32 %11)
  %13 = call %struct.edge_list* (...) @create_edge_list()
  store %struct.edge_list* %13, %struct.edge_list** %3, align 8
  %14 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %15 = call i32 @find_all_control_dependences(%struct.edge_list* %14)
  %16 = load i32, i32* @TV_CONTROL_DEPENDENCES, align 4
  %17 = call i32 @timevar_pop(i32 %16)
  %18 = load i32, i32* @last_basic_block, align 4
  %19 = call i32 @sbitmap_alloc(i32 %18)
  store i32 %19, i32* @visited_control_parents, align 4
  %20 = load i32, i32* @visited_control_parents, align 4
  %21 = call i32 @sbitmap_zero(i32 %20)
  %22 = call i32 (...) @mark_dfs_back_edges()
  br label %23

23:                                               ; preds = %8, %1
  %24 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %25 = call i32 @find_obviously_necessary_stmts(%struct.edge_list* %24)
  %26 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %27 = call i32 @propagate_necessity(%struct.edge_list* %26)
  %28 = call i32 (...) @mark_really_necessary_kill_operand_phis()
  %29 = call i32 (...) @eliminate_unnecessary_stmts()
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %34 = call i32 @free_dominance_info(i32 %33)
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i64, i64* @cfg_altered, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @CDI_DOMINATORS, align 4
  %40 = call i32 @free_dominance_info(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* @dump_file, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (...) @print_stats()
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @tree_dce_done(i32 %47)
  %49 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %50 = call i32 @free_edge_list(%struct.edge_list* %49)
  ret void
}

declare dso_local i32 @tree_dce_init(i32) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @calculate_dominance_info(i32) #1

declare dso_local %struct.edge_list* @create_edge_list(...) #1

declare dso_local i32 @find_all_control_dependences(%struct.edge_list*) #1

declare dso_local i32 @timevar_pop(i32) #1

declare dso_local i32 @sbitmap_alloc(i32) #1

declare dso_local i32 @sbitmap_zero(i32) #1

declare dso_local i32 @mark_dfs_back_edges(...) #1

declare dso_local i32 @find_obviously_necessary_stmts(%struct.edge_list*) #1

declare dso_local i32 @propagate_necessity(%struct.edge_list*) #1

declare dso_local i32 @mark_really_necessary_kill_operand_phis(...) #1

declare dso_local i32 @eliminate_unnecessary_stmts(...) #1

declare dso_local i32 @free_dominance_info(i32) #1

declare dso_local i32 @print_stats(...) #1

declare dso_local i32 @tree_dce_done(i32) #1

declare dso_local i32 @free_edge_list(%struct.edge_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
