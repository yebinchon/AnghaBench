; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_eth_media.c_send_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_eth_media.c_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.tipc_bearer = type { i64 }
%struct.tipc_media_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.eth_bearer = type { %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_P_TIPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tipc_bearer*, %struct.tipc_media_addr*)* @send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_msg(%struct.sk_buff* %0, %struct.tipc_bearer* %1, %struct.tipc_media_addr* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tipc_bearer*, align 8
  %6 = alloca %struct.tipc_media_addr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tipc_bearer* %1, %struct.tipc_bearer** %5, align 8
  store %struct.tipc_media_addr* %2, %struct.tipc_media_addr** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i32 @skb_reset_network_header(%struct.sk_buff* %15)
  %17 = load %struct.tipc_bearer*, %struct.tipc_bearer** %5, align 8
  %18 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.eth_bearer*
  %21 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  store %struct.net_device* %23, %struct.net_device** %25, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = load i32, i32* @ETH_P_TIPC, align 4
  %29 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %6, align 8
  %30 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_hard_header(%struct.sk_buff* %26, %struct.net_device* %27, i32 %28, i32* %31, i32 %34, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32 @dev_queue_xmit(%struct.sk_buff* %39)
  br label %41

41:                                               ; preds = %14, %3
  ret i32 0
}

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
