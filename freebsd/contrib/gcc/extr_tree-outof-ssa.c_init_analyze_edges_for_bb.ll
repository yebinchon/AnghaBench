; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_init_analyze_edges_for_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_init_analyze_edges_for_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@edge = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@edge_leader = common dso_local global i8* null, align 8
@tree = common dso_local global i32 0, align 4
@stmt_list = common dso_local global i8* null, align 8
@leader_has_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_analyze_edges_for_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_analyze_edges_for_bb() #0 {
  %1 = load i32, i32* @edge, align 4
  %2 = load i32, i32* @heap, align 4
  %3 = call i8* @VEC_alloc(i32 %1, i32 %2, i32 25)
  store i8* %3, i8** @edge_leader, align 8
  %4 = load i32, i32* @tree, align 4
  %5 = load i32, i32* @heap, align 4
  %6 = call i8* @VEC_alloc(i32 %4, i32 %5, i32 25)
  store i8* %6, i8** @stmt_list, align 8
  %7 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %7, i32* @leader_has_match, align 4
  ret void
}

declare dso_local i8* @VEC_alloc(i32, i32, i32) #1

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
