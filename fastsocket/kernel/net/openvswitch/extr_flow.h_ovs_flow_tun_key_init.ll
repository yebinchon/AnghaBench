; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.h_ovs_flow_tun_key_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.h_ovs_flow_tun_key_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovs_key_ipv4_tunnel = type { i32, i32, i32, i32, i32, i32 }
%struct.iphdr = type { i32, i32, i32, i32 }

@OVS_TUNNEL_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ovs_key_ipv4_tunnel*, %struct.iphdr*, i32, i32)* @ovs_flow_tun_key_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovs_flow_tun_key_init(%struct.ovs_key_ipv4_tunnel* %0, %struct.iphdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ovs_key_ipv4_tunnel*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ovs_key_ipv4_tunnel* %0, %struct.ovs_key_ipv4_tunnel** %5, align 8
  store %struct.iphdr* %1, %struct.iphdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %11 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %13 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %16 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %21 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %26 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %31 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %34 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %36 = bitcast %struct.ovs_key_ipv4_tunnel* %35 to i8*
  %37 = load i32, i32* @OVS_TUNNEL_KEY_SIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* @OVS_TUNNEL_KEY_SIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 24, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(i8* %39, i32 0, i32 %43)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
