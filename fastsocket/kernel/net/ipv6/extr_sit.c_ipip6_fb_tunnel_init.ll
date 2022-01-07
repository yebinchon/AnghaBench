; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_fb_tunnel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_fb_tunnel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ip_tunnel = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32, %struct.iphdr }
%struct.iphdr = type { i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.sit_net = type { %struct.ip_tunnel** }

@sit_net_id = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipip6_fb_tunnel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipip6_fb_tunnel_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ip_tunnel*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sit_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %7)
  store %struct.ip_tunnel* %8, %struct.ip_tunnel** %3, align 8
  %9 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %10 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.iphdr* %11, %struct.iphdr** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.net* @dev_net(%struct.net_device* %12)
  store %struct.net* %13, %struct.net** %5, align 8
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = load i32, i32* @sit_net_id, align 4
  %16 = call %struct.sit_net* @net_generic(%struct.net* %14, i32 %15)
  store %struct.sit_net* %16, %struct.sit_net** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %18, i32 0, i32 1
  store %struct.net_device* %17, %struct.net_device** %19, align 8
  %20 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %21 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i32 %23, i32 %26)
  %28 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 0
  store i32 4, i32* %29, align 4
  %30 = load i32, i32* @IPPROTO_IPV6, align 4
  %31 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 1
  store i32 5, i32* %34, align 4
  %35 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 2
  store i32 64, i32* %36, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @dev_hold(%struct.net_device* %37)
  %39 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %40 = load %struct.sit_net*, %struct.sit_net** %6, align 8
  %41 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %40, i32 0, i32 0
  %42 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %41, align 8
  %43 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %42, i64 0
  store %struct.ip_tunnel* %39, %struct.ip_tunnel** %43, align 8
  ret void
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sit_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
