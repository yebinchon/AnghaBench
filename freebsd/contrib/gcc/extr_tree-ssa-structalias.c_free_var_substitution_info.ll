; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_free_var_substitution_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_free_var_substitution_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.scc_info = type { i32 }

@graph = common dso_local global %struct.TYPE_2__* null, align 8
@iteration_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_info*)* @free_var_substitution_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_var_substitution_info(%struct.scc_info* %0) #0 {
  %2 = alloca %struct.scc_info*, align 8
  store %struct.scc_info* %0, %struct.scc_info** %2, align 8
  %3 = load %struct.scc_info*, %struct.scc_info** %2, align 8
  %4 = call i32 @free_scc_info(%struct.scc_info* %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @graph, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @free(i32 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @graph, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @free(i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @graph, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sbitmap_free(i32 %15)
  %17 = call i32 @bitmap_obstack_release(i32* @iteration_obstack)
  ret void
}

declare dso_local i32 @free_scc_info(%struct.scc_info*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @sbitmap_free(i32) #1

declare dso_local i32 @bitmap_obstack_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
