; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c___gre_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c___gre_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.iphdr = type { i32 }
%struct.ip_tunnel = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tnl_ptk_info = type { i32, i32, i32, i32 }

@TUNNEL_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*, %struct.iphdr*, i32)* @__gre_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gre_xmit(%struct.sk_buff* %0, %struct.net_device* %1, %struct.iphdr* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_tunnel*, align 8
  %10 = alloca %struct.tnl_ptk_info, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.iphdr* %2, %struct.iphdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %11)
  store %struct.ip_tunnel* %12, %struct.ip_tunnel** %9, align 8
  %13 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %14 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %10, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %10, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %21 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %10, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TUNNEL_SEQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %4
  %38 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %39 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @htonl(i32 %40)
  %42 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %10, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %45 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gre_build_header(%struct.sk_buff* %43, %struct.tnl_ptk_info* %10, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %51 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ip_tunnel_xmit(%struct.sk_buff* %48, %struct.net_device* %49, %struct.iphdr* %50, i32 %53)
  ret void
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @gre_build_header(%struct.sk_buff*, %struct.tnl_ptk_info*, i32) #1

declare dso_local i32 @ip_tunnel_xmit(%struct.sk_buff*, %struct.net_device*, %struct.iphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
