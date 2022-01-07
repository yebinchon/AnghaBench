; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_ip4_multicast_alloc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_ip4_multicast_alloc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }
%struct.net_bridge = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.igmphdr = type { i32, i64, i64, i32 }
%struct.ethhdr = type { i32*, i8*, i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i64, i32, i8*, i64, i8* }

@ETH_P_IP = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IPPROTO_IGMP = common dso_local global i32 0, align 4
@INADDR_ALLHOSTS_GROUP = common dso_local global i32 0, align 4
@IPOPT_RA = common dso_local global i32 0, align 4
@IGMP_HOST_MEMBERSHIP_QUERY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IGMP_TIMER_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_bridge*, i64)* @br_ip4_multicast_alloc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @br_ip4_multicast_alloc_query(%struct.net_bridge* %0, i64 %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.igmphdr*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca %struct.iphdr*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_2__* %11, i32 124)
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %160

16:                                               ; preds = %2
  %17 = load i32, i32* @ETH_P_IP, align 4
  %18 = call i8* @htons(i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @skb_reset_mac_header(%struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %23)
  store %struct.ethhdr* %24, %struct.ethhdr** %7, align 8
  %25 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %26 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %29 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32 %27, i32 %32, i32 6)
  %34 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %35 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %39 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %43 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 94, i32* %45, align 4
  %46 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %47 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 0, i32* %49, align 4
  %50 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %51 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 0, i32* %53, align 4
  %54 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %55 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* @ETH_P_IP, align 4
  %59 = call i8* @htons(i32 %58)
  %60 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %61 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @skb_put(%struct.sk_buff* %62, i32 24)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @skb_set_network_header(%struct.sk_buff* %64, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %69)
  store %struct.iphdr* %70, %struct.iphdr** %8, align 8
  %71 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %72 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %71, i32 0, i32 0
  store i32 4, i32* %72, align 8
  %73 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 1
  store i32 6, i32* %74, align 4
  %75 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 2
  store i32 192, i32* %76, align 8
  %77 = call i8* @htons(i32 100)
  %78 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %79 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %78, i32 0, i32 9
  store i8* %77, i8** %79, align 8
  %80 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %81 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %80, i32 0, i32 8
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @IP_DF, align 4
  %83 = call i8* @htons(i32 %82)
  %84 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %85 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %84, i32 0, i32 7
  store i8* %83, i8** %85, align 8
  %86 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* @IPPROTO_IGMP, align 4
  %89 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %90 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %92 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @INADDR_ALLHOSTS_GROUP, align 4
  %94 = call i32 @htonl(i32 %93)
  %95 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %96 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @IPOPT_RA, align 4
  %98 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %99 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %98, i64 1
  %100 = bitcast %struct.iphdr* %99 to i32*
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %97, i32* %101, align 4
  %102 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %103 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %102, i64 1
  %104 = bitcast %struct.iphdr* %103 to i32*
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 4, i32* %105, align 4
  %106 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %107 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %106, i64 1
  %108 = bitcast %struct.iphdr* %107 to i32*
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32 0, i32* %109, align 4
  %110 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i64 1
  %112 = bitcast %struct.iphdr* %111 to i32*
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  store i32 0, i32* %113, align 4
  %114 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %115 = call i32 @ip_send_check(%struct.iphdr* %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = call i32 @skb_put(%struct.sk_buff* %116, i32 24)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @skb_set_transport_header(%struct.sk_buff* %118, i32 %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = call %struct.igmphdr* @igmp_hdr(%struct.sk_buff* %123)
  store %struct.igmphdr* %124, %struct.igmphdr** %6, align 8
  %125 = load i32, i32* @IGMP_HOST_MEMBERSHIP_QUERY, align 4
  %126 = load %struct.igmphdr*, %struct.igmphdr** %6, align 8
  %127 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load i64, i64* %4, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %16
  %131 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %132 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  br label %138

134:                                              ; preds = %16
  %135 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %136 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi i32 [ %133, %130 ], [ %137, %134 ]
  %140 = load i32, i32* @HZ, align 4
  %141 = load i32, i32* @IGMP_TIMER_SCALE, align 4
  %142 = sdiv i32 %140, %141
  %143 = sdiv i32 %139, %142
  %144 = load %struct.igmphdr*, %struct.igmphdr** %6, align 8
  %145 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i64, i64* %4, align 8
  %147 = load %struct.igmphdr*, %struct.igmphdr** %6, align 8
  %148 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  %149 = load %struct.igmphdr*, %struct.igmphdr** %6, align 8
  %150 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.igmphdr*, %struct.igmphdr** %6, align 8
  %152 = bitcast %struct.igmphdr* %151 to i8*
  %153 = call i64 @ip_compute_csum(i8* %152, i32 32)
  %154 = load %struct.igmphdr*, %struct.igmphdr** %6, align 8
  %155 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = call i32 @skb_put(%struct.sk_buff* %156, i32 32)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %159 = call i32 @__skb_pull(%struct.sk_buff* %158, i32 24)
  br label %160

160:                                              ; preds = %138, %15
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %161
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_2__*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local %struct.igmphdr* @igmp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_compute_csum(i8*, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
