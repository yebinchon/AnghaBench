; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_available_nodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_available_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, %struct.tipc_node* }

@tipc_net_lock = common dso_local global i32 0, align 4
@tipc_nodes = common dso_local global %struct.tipc_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tipc_available_nodes(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  %5 = call i32 @read_lock_bh(i32* @tipc_net_lock)
  %6 = load %struct.tipc_node*, %struct.tipc_node** @tipc_nodes, align 8
  store %struct.tipc_node* %6, %struct.tipc_node** %3, align 8
  br label %7

7:                                                ; preds = %26, %1
  %8 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %9 = icmp ne %struct.tipc_node* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load i64, i64* %2, align 8
  %12 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %13 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @in_scope(i64 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %26

18:                                               ; preds = %10
  %19 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %20 = call i64 @tipc_node_is_up(%struct.tipc_node* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %17
  %27 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %28 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %27, i32 0, i32 1
  %29 = load %struct.tipc_node*, %struct.tipc_node** %28, align 8
  store %struct.tipc_node* %29, %struct.tipc_node** %3, align 8
  br label %7

30:                                               ; preds = %7
  %31 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @in_scope(i64, i32) #1

declare dso_local i64 @tipc_node_is_up(%struct.tipc_node*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
