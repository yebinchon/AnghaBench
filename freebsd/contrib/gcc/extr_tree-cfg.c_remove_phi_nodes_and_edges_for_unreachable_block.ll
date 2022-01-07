; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_remove_phi_nodes_and_edges_for_unreachable_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_remove_phi_nodes_and_edges_for_unreachable_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @remove_phi_nodes_and_edges_for_unreachable_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_phi_nodes_and_edges_for_unreachable_block(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = call i64 @phi_nodes(%struct.TYPE_5__* %5)
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @PHI_CHAIN(i64 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @NULL_TREE, align 4
  %15 = call i32 @remove_phi_node(i64 %13, i32 %14)
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %3, align 8
  br label %7

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %24, %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @EDGE_COUNT(i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = call i32 @EDGE_SUCC(%struct.TYPE_5__* %25, i32 0)
  %27 = call i32 @remove_edge(i32 %26)
  br label %18

28:                                               ; preds = %18
  ret void
}

declare dso_local i64 @phi_nodes(%struct.TYPE_5__*) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

declare dso_local i32 @remove_phi_node(i64, i32) #1

declare dso_local i64 @EDGE_COUNT(i32) #1

declare dso_local i32 @remove_edge(i32) #1

declare dso_local i32 @EDGE_SUCC(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
