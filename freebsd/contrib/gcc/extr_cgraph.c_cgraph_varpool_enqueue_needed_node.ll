; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_varpool_enqueue_needed_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_varpool_enqueue_needed_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_varpool_node = type { i32, %struct.cgraph_varpool_node* }

@cgraph_varpool_last_needed_node = common dso_local global %struct.cgraph_varpool_node* null, align 8
@cgraph_varpool_nodes_queue = common dso_local global %struct.cgraph_varpool_node* null, align 8
@cgraph_varpool_first_unanalyzed_node = common dso_local global %struct.cgraph_varpool_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgraph_varpool_enqueue_needed_node(%struct.cgraph_varpool_node* %0) #0 {
  %2 = alloca %struct.cgraph_varpool_node*, align 8
  store %struct.cgraph_varpool_node* %0, %struct.cgraph_varpool_node** %2, align 8
  %3 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_last_needed_node, align 8
  %4 = icmp ne %struct.cgraph_varpool_node* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %7 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_last_needed_node, align 8
  %8 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %7, i32 0, i32 1
  store %struct.cgraph_varpool_node* %6, %struct.cgraph_varpool_node** %8, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  store %struct.cgraph_varpool_node* %10, %struct.cgraph_varpool_node** @cgraph_varpool_last_needed_node, align 8
  %11 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %12 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %11, i32 0, i32 1
  store %struct.cgraph_varpool_node* null, %struct.cgraph_varpool_node** %12, align 8
  %13 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_nodes_queue, align 8
  %14 = icmp ne %struct.cgraph_varpool_node* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  store %struct.cgraph_varpool_node* %16, %struct.cgraph_varpool_node** @cgraph_varpool_nodes_queue, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_first_unanalyzed_node, align 8
  %19 = icmp ne %struct.cgraph_varpool_node* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  store %struct.cgraph_varpool_node* %21, %struct.cgraph_varpool_node** @cgraph_varpool_first_unanalyzed_node, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %24 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @notice_global_symbol(i32 %25)
  ret void
}

declare dso_local i32 @notice_global_symbol(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
