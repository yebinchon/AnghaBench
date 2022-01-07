; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-propagate.c_ssa_prop_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-propagate.c_ssa_prop_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree = common dso_local global i32 0, align 4
@gc = common dso_local global i32 0, align 4
@interesting_ssa_edges = common dso_local global i32* null, align 8
@varying_ssa_edges = common dso_local global i32* null, align 8
@basic_block = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@cfg_blocks = common dso_local global i32* null, align 8
@bb_in_list = common dso_local global i32 0, align 4
@executable_blocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ssa_prop_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssa_prop_fini() #0 {
  %1 = load i32, i32* @tree, align 4
  %2 = load i32, i32* @gc, align 4
  %3 = load i32*, i32** @interesting_ssa_edges, align 8
  %4 = call i32 @VEC_free(i32 %1, i32 %2, i32* %3)
  %5 = load i32, i32* @tree, align 4
  %6 = load i32, i32* @gc, align 4
  %7 = load i32*, i32** @varying_ssa_edges, align 8
  %8 = call i32 @VEC_free(i32 %5, i32 %6, i32* %7)
  %9 = load i32, i32* @basic_block, align 4
  %10 = load i32, i32* @heap, align 4
  %11 = load i32*, i32** @cfg_blocks, align 8
  %12 = call i32 @VEC_free(i32 %9, i32 %10, i32* %11)
  store i32* null, i32** @cfg_blocks, align 8
  %13 = load i32, i32* @bb_in_list, align 4
  %14 = call i32 @sbitmap_free(i32 %13)
  %15 = load i32, i32* @executable_blocks, align 4
  %16 = call i32 @sbitmap_free(i32 %15)
  ret void
}

declare dso_local i32 @VEC_free(i32, i32, i32*) #1

declare dso_local i32 @sbitmap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
