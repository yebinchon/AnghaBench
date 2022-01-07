; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c___br_multicast_send_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c___br_multicast_send_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.br_ip = type { i32 }
%struct.sk_buff = type { i32 }

@PF_BRIDGE = common dso_local global i32 0, align 4
@NF_BR_LOCAL_OUT = common dso_local global i32 0, align 4
@dev_queue_xmit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.net_bridge_port*, %struct.br_ip*)* @__br_multicast_send_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__br_multicast_send_query(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.br_ip* %2) #0 {
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca %struct.br_ip*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %5, align 8
  store %struct.br_ip* %2, %struct.br_ip** %6, align 8
  %8 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %9 = load %struct.br_ip*, %struct.br_ip** %6, align 8
  %10 = call %struct.sk_buff* @br_multicast_alloc_query(%struct.net_bridge* %8, %struct.br_ip* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %16 = icmp ne %struct.net_bridge_port* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i32 @__skb_push(%struct.sk_buff* %18, i32 4)
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %21 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @PF_BRIDGE, align 4
  %26 = load i32, i32* @NF_BR_LOCAL_OUT, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @dev_queue_xmit, align 4
  %32 = call i32 @NF_HOOK(i32 %25, i32 %26, %struct.sk_buff* %27, i32* null, i32 %30, i32 %31)
  br label %36

33:                                               ; preds = %14
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @netif_rx(%struct.sk_buff* %34)
  br label %36

36:                                               ; preds = %13, %33, %17
  ret void
}

declare dso_local %struct.sk_buff* @br_multicast_alloc_query(%struct.net_bridge*, %struct.br_ip*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32*, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
