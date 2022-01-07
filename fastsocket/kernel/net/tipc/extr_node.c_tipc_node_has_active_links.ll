; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_has_active_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_has_active_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_node_has_active_links(%struct.tipc_node* %0) #0 {
  %2 = alloca %struct.tipc_node*, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %2, align 8
  %3 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %4 = icmp ne %struct.tipc_node* %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %7 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %14 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi i1 [ true, %5 ], [ %18, %12 ]
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i1 [ false, %1 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
