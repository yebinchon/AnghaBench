; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_forward.c_br_forward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_forward.c_br_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_forward(%struct.net_bridge_port* %0, %struct.sk_buff* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i64 @should_deliver(%struct.net_bridge_port* %7, %struct.sk_buff* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @deliver_clone(%struct.net_bridge_port* %15, %struct.sk_buff* %16, i32 (%struct.net_bridge_port*, %struct.sk_buff*)* @__br_forward)
  br label %22

18:                                               ; preds = %11
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @__br_forward(%struct.net_bridge_port* %19, %struct.sk_buff* %20)
  br label %22

22:                                               ; preds = %18, %14
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  br label %29

29:                                               ; preds = %22, %26, %23
  ret void
}

declare dso_local i64 @should_deliver(%struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @deliver_clone(%struct.net_bridge_port*, %struct.sk_buff*, i32 (%struct.net_bridge_port*, %struct.sk_buff*)*) #1

declare dso_local i32 @__br_forward(%struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
