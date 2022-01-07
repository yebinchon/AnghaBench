; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-optimize.c_execute_free_datastructures.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-optimize.c_execute_free_datastructures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDI_DOMINATORS = common dso_local global i32 0, align 4
@CDI_POST_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @execute_free_datastructures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_free_datastructures() #0 {
  %1 = load i32, i32* @CDI_DOMINATORS, align 4
  %2 = call i32 @free_dominance_info(i32 %1)
  %3 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %4 = call i32 @free_dominance_info(i32 %3)
  %5 = call i32 (...) @delete_tree_ssa()
  ret i32 0
}

declare dso_local i32 @free_dominance_info(i32) #1

declare dso_local i32 @delete_tree_ssa(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
