; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node_subscr.c_tipc_nodesub_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node_subscr.c_tipc_nodesub_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node_subscr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_nodesub_unsubscribe(%struct.tipc_node_subscr* %0) #0 {
  %2 = alloca %struct.tipc_node_subscr*, align 8
  store %struct.tipc_node_subscr* %0, %struct.tipc_node_subscr** %2, align 8
  %3 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %2, align 8
  %4 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %2, align 8
  %10 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @tipc_node_lock(i32 %11)
  %13 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %2, align 8
  %14 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %13, i32 0, i32 1
  %15 = call i32 @list_del_init(i32* %14)
  %16 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %2, align 8
  %17 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @tipc_node_unlock(i32 %18)
  br label %20

20:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @tipc_node_lock(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @tipc_node_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
