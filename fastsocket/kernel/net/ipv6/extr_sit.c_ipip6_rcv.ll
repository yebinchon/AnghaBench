; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_6__*, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.iphdr = type { i32, i32 }
%struct.ip_tunnel = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }

@ipip6_lock = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@IFF_ISATAP = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_PORT_UNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipip6_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip6_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.ip_tunnel*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i32 @pskb_may_pull(%struct.sk_buff* %6, i32 4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %116

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %11)
  store %struct.iphdr* %12, %struct.iphdr** %4, align 8
  %13 = call i32 @read_lock(i32* @ipip6_lock)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @dev_net(%struct.TYPE_6__* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ip_tunnel* @ipip6_tunnel_lookup(i32 %17, %struct.TYPE_6__* %20, i32 %23, i32 %26)
  store %struct.ip_tunnel* %27, %struct.ip_tunnel** %5, align 8
  %28 = load %struct.ip_tunnel*, %struct.ip_tunnel** %5, align 8
  %29 = icmp ne %struct.ip_tunnel* %28, null
  br i1 %29, label %30, label %110

30:                                               ; preds = %10
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
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call %struct.TYPE_7__* @IPCB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @ETH_P_IPV6, align 4
  %44 = call i32 @htons(i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @PACKET_HOST, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ip_tunnel*, %struct.ip_tunnel** %5, align 8
  %51 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IFF_ISATAP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %30
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %61 = load %struct.ip_tunnel*, %struct.ip_tunnel** %5, align 8
  %62 = call i32 @isatap_chksrc(%struct.sk_buff* %59, %struct.iphdr* %60, %struct.ip_tunnel* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = load %struct.ip_tunnel*, %struct.ip_tunnel** %5, align 8
  %66 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = call i32 @read_unlock(i32* @ipip6_lock)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @kfree_skb(%struct.sk_buff* %73)
  store i32 0, i32* %2, align 4
  br label %119

75:                                               ; preds = %58, %30
  %76 = load %struct.ip_tunnel*, %struct.ip_tunnel** %5, align 8
  %77 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ip_tunnel*, %struct.ip_tunnel** %5, align 8
  %87 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %85
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load %struct.ip_tunnel*, %struct.ip_tunnel** %5, align 8
  %96 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = call i32 @skb_dst_drop(%struct.sk_buff* %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %103 = call i32 @nf_reset(%struct.sk_buff* %102)
  %104 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = call i32 @ipip6_ecn_decapsulate(%struct.iphdr* %104, %struct.sk_buff* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %108 = call i32 @netif_rx(%struct.sk_buff* %107)
  %109 = call i32 @read_unlock(i32* @ipip6_lock)
  store i32 0, i32* %2, align 4
  br label %119

110:                                              ; preds = %10
  %111 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %112 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %113 = load i32, i32* @ICMP_PORT_UNREACH, align 4
  %114 = call i32 @icmp_send(%struct.sk_buff* %111, i32 %112, i32 %113, i32 0)
  %115 = call i32 @read_unlock(i32* @ipip6_lock)
  br label %116

116:                                              ; preds = %110, %9
  %117 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %118 = call i32 @kfree_skb(%struct.sk_buff* %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %116, %75, %64
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ip_tunnel* @ipip6_tunnel_lookup(i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_6__*) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @isatap_chksrc(%struct.sk_buff*, %struct.iphdr*, %struct.ip_tunnel*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local i32 @ipip6_ecn_decapsulate(%struct.iphdr*, %struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
