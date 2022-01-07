; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-optimize.c_tree_lowering_passes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-optimize.c_tree_lowering_passes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_decl = common dso_local global i32 0, align 4
@all_lowering_passes = common dso_local global i32 0, align 4
@CDI_POST_DOMINATORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree_lowering_passes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @current_function_decl, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* @current_function_decl, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @DECL_STRUCT_FUNCTION(i32 %6)
  %8 = call i32 @push_cfun(i32 %7)
  %9 = call i32 (...) @tree_register_cfg_hooks()
  %10 = call i32 @bitmap_obstack_initialize(i32* null)
  %11 = load i32, i32* @all_lowering_passes, align 4
  %12 = call i32 @execute_pass_list(i32 %11)
  %13 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %14 = call i32 @free_dominance_info(i32 %13)
  %15 = call i32 (...) @compact_blocks()
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* @current_function_decl, align 4
  %17 = call i32 @bitmap_obstack_release(i32* null)
  %18 = call i32 (...) @pop_cfun()
  ret void
}

declare dso_local i32 @push_cfun(i32) #1

declare dso_local i32 @DECL_STRUCT_FUNCTION(i32) #1

declare dso_local i32 @tree_register_cfg_hooks(...) #1

declare dso_local i32 @bitmap_obstack_initialize(i32*) #1

declare dso_local i32 @execute_pass_list(i32) #1

declare dso_local i32 @free_dominance_info(i32) #1

declare dso_local i32 @compact_blocks(...) #1

declare dso_local i32 @bitmap_obstack_release(i32*) #1

declare dso_local i32 @pop_cfun(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
