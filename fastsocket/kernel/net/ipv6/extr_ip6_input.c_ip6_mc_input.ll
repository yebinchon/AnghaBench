; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_input.c_ip6_mc_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_input.c_ip6_mc_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.ipv6hdr = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@IPSTATS_MIB_INMCAST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IP6SKB_FORWARDED = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_mc_input(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ipv6hdr*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %5)
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_10__* @dev_net(i32 %8)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %10)
  %12 = call i32 @ip6_dst_idev(%struct.TYPE_9__* %11)
  %13 = load i32, i32* @IPSTATS_MIB_INMCAST, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IP6_UPD_PO_STATS_BH(%struct.TYPE_10__* %9, i32 %12, i32 %13, i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %18)
  store %struct.ipv6hdr* %19, %struct.ipv6hdr** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %24 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %23, i32 0, i32 1
  %25 = call i32 @ipv6_chk_mcast_addr(i32 %22, i32* %24, i32* null)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %31 = call i32 @ip6_input(%struct.sk_buff* %30)
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %32, %29
  ret i32 0
}

declare dso_local i32 @IP6_UPD_PO_STATS_BH(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @dev_net(i32) #1

declare dso_local %struct.TYPE_9__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @ip6_dst_idev(%struct.TYPE_9__*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_chk_mcast_addr(i32, i32*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ip6_input(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
