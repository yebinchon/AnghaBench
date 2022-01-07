; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_mark_reachable_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_mark_reachable_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32, %struct.cgraph_node*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@cgraph_global_info_ready = common dso_local global i32 0, align 4
@cgraph_nodes_queue = common dso_local global %struct.cgraph_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgraph_mark_reachable_node(%struct.cgraph_node* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %2, align 8
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %9 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @notice_global_symbol(i32 %16)
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %19 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @cgraph_global_info_ready, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes_queue, align 8
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %27 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %26, i32 0, i32 1
  store %struct.cgraph_node* %25, %struct.cgraph_node** %27, align 8
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  store %struct.cgraph_node* %28, %struct.cgraph_node** @cgraph_nodes_queue, align 8
  br label %29

29:                                               ; preds = %13, %7, %1
  ret void
}

declare dso_local i32 @notice_global_symbol(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
