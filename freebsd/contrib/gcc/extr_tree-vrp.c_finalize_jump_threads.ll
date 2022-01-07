; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_finalize_jump_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_finalize_jump_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDI_DOMINATORS = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@stack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @finalize_jump_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finalize_jump_threads() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @thread_through_all_blocks()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* @CDI_DOMINATORS, align 4
  %7 = call i32 @free_dominance_info(i32 %6)
  %8 = call i32 (...) @cleanup_tree_cfg()
  %9 = load i32, i32* @CDI_DOMINATORS, align 4
  %10 = call i32 @calculate_dominance_info(i32 %9)
  br label %11

11:                                               ; preds = %5, %0
  %12 = load i32, i32* @tree, align 4
  %13 = load i32, i32* @heap, align 4
  %14 = load i32, i32* @stack, align 4
  %15 = call i32 @VEC_free(i32 %12, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @thread_through_all_blocks(...) #1

declare dso_local i32 @free_dominance_info(i32) #1

declare dso_local i32 @cleanup_tree_cfg(...) #1

declare dso_local i32 @calculate_dominance_info(i32) #1

declare dso_local i32 @VEC_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
