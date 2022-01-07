; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_rewrite_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_rewrite_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_walk_data = type { i32, i32, i32, i32, i32, i32 }

@TV_TREE_SSA_REWRITE_BLOCKS = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@REWRITE_UPDATE = common dso_local global i32 0, align 4
@rewrite_update_init_block = common dso_local global i32 0, align 4
@rewrite_initialize_block = common dso_local global i32 0, align 4
@REWRITE_ALL = common dso_local global i32 0, align 4
@rewrite_stmt = common dso_local global i32 0, align 4
@rewrite_update_stmt = common dso_local global i32 0, align 4
@rewrite_add_phi_arguments = common dso_local global i32 0, align 4
@rewrite_update_phi_arguments = common dso_local global i32 0, align 4
@rewrite_finalize_block = common dso_local global i32 0, align 4
@rewrite_update_fini_block = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@block_defs_stack = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_STATS = common dso_local global i32 0, align 4
@def_blocks = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @rewrite_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rewrite_blocks(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dom_walk_data, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @TV_TREE_SSA_REWRITE_BLOCKS, align 4
  %9 = call i32 @timevar_push(i32 %8)
  %10 = call i32 @memset(%struct.dom_walk_data* %7, i32 0, i32 24)
  %11 = load i32, i32* @CDI_DOMINATORS, align 4
  %12 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %7, i32 0, i32 5
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %7, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @REWRITE_UPDATE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @rewrite_update_init_block, align 4
  %20 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %7, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @rewrite_initialize_block, align 4
  %23 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %7, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @REWRITE_ALL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @rewrite_stmt, align 4
  %30 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %7, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  br label %41

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @REWRITE_UPDATE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @rewrite_update_stmt, align 4
  %37 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %7, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  br label %40

38:                                               ; preds = %31
  %39 = call i32 (...) @gcc_unreachable()
  br label %40

40:                                               ; preds = %38, %35
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @REWRITE_ALL, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @rewrite_add_phi_arguments, align 4
  %47 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %7, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  br label %58

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @REWRITE_UPDATE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @rewrite_update_phi_arguments, align 4
  %54 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  br label %57

55:                                               ; preds = %48
  %56 = call i32 (...) @gcc_unreachable()
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @REWRITE_ALL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @rewrite_finalize_block, align 4
  %64 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %7, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  br label %75

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @REWRITE_UPDATE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @rewrite_update_fini_block, align 4
  %71 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %7, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  br label %74

72:                                               ; preds = %65
  %73 = call i32 (...) @gcc_unreachable()
  br label %74

74:                                               ; preds = %72, %69
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i32, i32* @tree, align 4
  %77 = load i32, i32* @heap, align 4
  %78 = call i32 @VEC_alloc(i32 %76, i32 %77, i32 10)
  store i32 %78, i32* @block_defs_stack, align 4
  %79 = call i32 @init_walk_dominator_tree(%struct.dom_walk_data* %7)
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @walk_dominator_tree(%struct.dom_walk_data* %7, i32 %80)
  %82 = call i32 @fini_walk_dominator_tree(%struct.dom_walk_data* %7)
  %83 = load i64, i64* @dump_file, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %75
  %86 = load i32, i32* @dump_flags, align 4
  %87 = load i32, i32* @TDF_STATS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i64, i64* @dump_file, align 8
  %92 = call i32 @dump_dfa_stats(i64 %91)
  %93 = load i32*, i32** @def_blocks, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i64, i64* @dump_file, align 8
  %97 = call i32 @dump_tree_ssa_stats(i64 %96)
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98, %85, %75
  %100 = load i32*, i32** @def_blocks, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32*, i32** @def_blocks, align 8
  %104 = call i32 @htab_delete(i32* %103)
  store i32* null, i32** @def_blocks, align 8
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* @tree, align 4
  %107 = load i32, i32* @heap, align 4
  %108 = load i32, i32* @block_defs_stack, align 4
  %109 = call i32 @VEC_free(i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @TV_TREE_SSA_REWRITE_BLOCKS, align 4
  %111 = call i32 @timevar_pop(i32 %110)
  ret void
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @memset(%struct.dom_walk_data*, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @VEC_alloc(i32, i32, i32) #1

declare dso_local i32 @init_walk_dominator_tree(%struct.dom_walk_data*) #1

declare dso_local i32 @walk_dominator_tree(%struct.dom_walk_data*, i32) #1

declare dso_local i32 @fini_walk_dominator_tree(%struct.dom_walk_data*) #1

declare dso_local i32 @dump_dfa_stats(i64) #1

declare dso_local i32 @dump_tree_ssa_stats(i64) #1

declare dso_local i32 @htab_delete(i32*) #1

declare dso_local i32 @VEC_free(i32, i32, i32) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
