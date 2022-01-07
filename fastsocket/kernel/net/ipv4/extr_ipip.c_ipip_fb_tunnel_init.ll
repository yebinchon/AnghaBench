; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_fb_tunnel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_fb_tunnel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ip_tunnel = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32, %struct.iphdr }
%struct.iphdr = type { i32, i32, i32 }
%struct.ipip_net = type { %struct.ip_tunnel** }

@ipip_net_id = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipip_fb_tunnel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipip_fb_tunnel_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ip_tunnel*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.ipip_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %6)
  store %struct.ip_tunnel* %7, %struct.ip_tunnel** %3, align 8
  %8 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %9 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.iphdr* %10, %struct.iphdr** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @dev_net(%struct.net_device* %11)
  %13 = load i32, i32* @ipip_net_id, align 4
  %14 = call %struct.ipip_net* @net_generic(i32 %12, i32 %13)
  store %struct.ipip_net* %14, %struct.ipip_net** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %17 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %16, i32 0, i32 1
  store %struct.net_device* %15, %struct.net_device** %17, align 8
  %18 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcpy(i32 %21, i32 %24)
  %26 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 0
  store i32 4, i32* %27, align 4
  %28 = load i32, i32* @IPPROTO_IPIP, align 4
  %29 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 1
  store i32 5, i32* %32, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @dev_hold(%struct.net_device* %33)
  %35 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %36 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %37 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %36, i32 0, i32 0
  %38 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %37, align 8
  %39 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %38, i64 0
  store %struct.ip_tunnel* %35, %struct.ip_tunnel** %39, align 8
  ret void
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ipip_net* @net_generic(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
