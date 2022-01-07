; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfganal.c_connect_infinite_loops_to_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfganal.c_connect_infinite_loops_to_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.depth_first_search_dsS = type { i32 }

@EXIT_BLOCK_PTR = common dso_local global i32 0, align 4
@EDGE_FAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @connect_infinite_loops_to_exit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.depth_first_search_dsS, align 4
  %3 = load i32, i32* @EXIT_BLOCK_PTR, align 4
  store i32 %3, i32* %1, align 4
  %4 = call i32 @flow_dfs_compute_reverse_init(%struct.depth_first_search_dsS* %2)
  %5 = load i32, i32* @EXIT_BLOCK_PTR, align 4
  %6 = call i32 @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS* %2, i32 %5)
  br label %7

7:                                                ; preds = %0, %13
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @flow_dfs_compute_reverse_execute(%struct.depth_first_search_dsS* %2, i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %20

13:                                               ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @EXIT_BLOCK_PTR, align 4
  %16 = load i32, i32* @EDGE_FAKE, align 4
  %17 = call i32 @make_edge(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS* %2, i32 %18)
  br label %7

20:                                               ; preds = %12
  %21 = call i32 @flow_dfs_compute_reverse_finish(%struct.depth_first_search_dsS* %2)
  ret void
}

declare dso_local i32 @flow_dfs_compute_reverse_init(%struct.depth_first_search_dsS*) #1

declare dso_local i32 @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS*, i32) #1

declare dso_local i32 @flow_dfs_compute_reverse_execute(%struct.depth_first_search_dsS*, i32) #1

declare dso_local i32 @make_edge(i32, i32, i32) #1

declare dso_local i32 @flow_dfs_compute_reverse_finish(%struct.depth_first_search_dsS*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
