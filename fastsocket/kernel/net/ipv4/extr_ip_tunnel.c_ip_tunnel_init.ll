; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ip_tunnel = type { %struct.TYPE_2__, %struct.net_device*, i32 }
%struct.TYPE_2__ = type { i32, %struct.iphdr }
%struct.iphdr = type { i32, i32 }

@ip_tunnel_dev_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_tunnel_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %7)
  store %struct.ip_tunnel* %8, %struct.ip_tunnel** %4, align 8
  %9 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %10 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.iphdr* %11, %struct.iphdr** %5, align 8
  %12 = load i32, i32* @ip_tunnel_dev_free, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %16 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %15, i32 0, i32 2
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @gro_cells_init(i32* %16, %struct.net_device* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %25, i32 0, i32 1
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcpy(i32 %30, i32 %33)
  %35 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 0
  store i32 4, i32* %36, align 4
  %37 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 1
  store i32 5, i32* %38, align 4
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %23, %21
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gro_cells_init(i32*, %struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
