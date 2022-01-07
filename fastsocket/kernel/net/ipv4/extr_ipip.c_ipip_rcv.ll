; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_4__*, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ip_tunnel = type { %struct.TYPE_4__* }
%struct.iphdr = type { i32, i32 }

@ipip_lock = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipip_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %6)
  store %struct.iphdr* %7, %struct.iphdr** %5, align 8
  %8 = call i32 @read_lock(i32* @ipip_lock)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @dev_net(%struct.TYPE_4__* %11)
  %13 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ip_tunnel* @ipip_tunnel_lookup(i32 %12, i32 %15, i32 %18)
  store %struct.ip_tunnel* %19, %struct.ip_tunnel** %4, align 8
  %20 = icmp ne %struct.ip_tunnel* %19, null
  br i1 %20, label %21, label %81

21:                                               ; preds = %1
  %22 = load i32, i32* @XFRM_POLICY_IN, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call i32 @xfrm4_policy_check(i32* null, i32 %22, %struct.sk_buff* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = call i32 @read_unlock(i32* @ipip_lock)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @kfree_skb(%struct.sk_buff* %28)
  store i32 0, i32* %2, align 4
  br label %83

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i32 @secpath_reset(%struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call i32 @skb_reset_network_header(%struct.sk_buff* %38)
  %40 = load i32, i32* @ETH_P_IP, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @PACKET_HOST, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %48 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %58 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %56
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %67 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = call i32 @skb_dst_drop(%struct.sk_buff* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @nf_reset(%struct.sk_buff* %73)
  %75 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = call i32 @ipip_ecn_decapsulate(%struct.iphdr* %75, %struct.sk_buff* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = call i32 @netif_rx(%struct.sk_buff* %78)
  %80 = call i32 @read_unlock(i32* @ipip_lock)
  store i32 0, i32* %2, align 4
  br label %83

81:                                               ; preds = %1
  %82 = call i32 @read_unlock(i32* @ipip_lock)
  store i32 -1, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %30, %26
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ip_tunnel* @ipip_tunnel_lookup(i32, i32, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_4__*) #1

declare dso_local i32 @xfrm4_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local i32 @ipip_ecn_decapsulate(%struct.iphdr*, %struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
