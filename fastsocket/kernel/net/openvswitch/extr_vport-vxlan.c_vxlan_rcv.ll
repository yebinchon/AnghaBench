; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-vxlan.c_vxlan_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-vxlan.c_vxlan_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_sock = type { %struct.vport* }
%struct.vport = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ovs_key_ipv4_tunnel = type { i32 }
%struct.iphdr = type { i32 }

@TUNNEL_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_sock*, %struct.sk_buff*, i32)* @vxlan_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_rcv(%struct.vxlan_sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.vxlan_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ovs_key_ipv4_tunnel, align 4
  %8 = alloca %struct.vport*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca i32, align 4
  store %struct.vxlan_sock* %0, %struct.vxlan_sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.vxlan_sock*, %struct.vxlan_sock** %4, align 8
  %12 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %11, i32 0, i32 0
  %13 = load %struct.vport*, %struct.vport** %12, align 8
  store %struct.vport* %13, %struct.vport** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %14)
  store %struct.iphdr* %15, %struct.iphdr** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ntohl(i32 %16)
  %18 = ashr i32 %17, 8
  %19 = call i32 @cpu_to_be64(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @TUNNEL_KEY, align 4
  %23 = call i32 @ovs_flow_tun_key_init(%struct.ovs_key_ipv4_tunnel* %7, %struct.iphdr* %20, i32 %21, i32 %22)
  %24 = load %struct.vport*, %struct.vport** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @ovs_vport_receive(%struct.vport* %24, %struct.sk_buff* %25, %struct.ovs_key_ipv4_tunnel* %7)
  ret void
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ovs_flow_tun_key_init(%struct.ovs_key_ipv4_tunnel*, %struct.iphdr*, i32, i32) #1

declare dso_local i32 @ovs_vport_receive(%struct.vport*, %struct.sk_buff*, %struct.ovs_key_ipv4_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
