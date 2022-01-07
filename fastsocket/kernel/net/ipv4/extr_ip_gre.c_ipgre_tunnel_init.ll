; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_tunnel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_tunnel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.ip_tunnel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iphdr }
%struct.iphdr = type { i64, i64 }

@ARPHRD_IPGRE = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@ipgre_header_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipgre_tunnel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_tunnel_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ip_tunnel*, align 8
  %4 = alloca %struct.iphdr*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %5)
  store %struct.ip_tunnel* %6, %struct.ip_tunnel** %3, align 8
  %7 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %8 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.iphdr* %9, %struct.iphdr** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @__gre_tunnel_init(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 0
  %17 = call i32 @memcpy(i32 %14, i64* %16, i32 4)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 1
  %23 = call i32 @memcpy(i32 %20, i64* %22, i32 4)
  %24 = load i32, i32* @ARPHRD_IPGRE, align 4
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @IFF_NOARP, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %46

43:                                               ; preds = %1
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  store i32* @ipgre_header_ops, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @ip_tunnel_init(%struct.net_device* %47)
  ret i32 %48
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__gre_tunnel_init(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @ip_tunnel_init(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
