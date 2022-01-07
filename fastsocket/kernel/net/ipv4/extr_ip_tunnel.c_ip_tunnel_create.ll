; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.ip_tunnel_parm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_tunnel* (%struct.net*, %struct.ip_tunnel_net*, %struct.ip_tunnel_parm*)* @ip_tunnel_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_tunnel* @ip_tunnel_create(%struct.net* %0, %struct.ip_tunnel_net* %1, %struct.ip_tunnel_parm* %2) #0 {
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ip_tunnel_net*, align 8
  %7 = alloca %struct.ip_tunnel_parm*, align 8
  %8 = alloca %struct.ip_tunnel*, align 8
  %9 = alloca %struct.ip_tunnel*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ip_tunnel_net* %1, %struct.ip_tunnel_net** %6, align 8
  store %struct.ip_tunnel_parm* %2, %struct.ip_tunnel_parm** %7, align 8
  %11 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %6, align 8
  %12 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = icmp ne %struct.net_device* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %6, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %20)
  store %struct.ip_tunnel* %21, %struct.ip_tunnel** %9, align 8
  %22 = load %struct.net*, %struct.net** %5, align 8
  %23 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %6, align 8
  %24 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %29 = call %struct.net_device* @__ip_tunnel_create(%struct.net* %22, i32 %27, %struct.ip_tunnel_parm* %28)
  store %struct.net_device* %29, %struct.net_device** %10, align 8
  %30 = load %struct.net_device*, %struct.net_device** %10, align 8
  %31 = call i64 @IS_ERR(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store %struct.ip_tunnel* null, %struct.ip_tunnel** %4, align 8
  br label %45

34:                                               ; preds = %3
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = call i32 @ip_tunnel_bind_dev(%struct.net_device* %35)
  %37 = load %struct.net_device*, %struct.net_device** %10, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.net_device*, %struct.net_device** %10, align 8
  %40 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %39)
  store %struct.ip_tunnel* %40, %struct.ip_tunnel** %8, align 8
  %41 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %6, align 8
  %42 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %43 = call i32 @ip_tunnel_add(%struct.ip_tunnel_net* %41, %struct.ip_tunnel* %42)
  %44 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  store %struct.ip_tunnel* %44, %struct.ip_tunnel** %4, align 8
  br label %45

45:                                               ; preds = %34, %33
  %46 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  ret %struct.ip_tunnel* %46
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @__ip_tunnel_create(%struct.net*, i32, %struct.ip_tunnel_parm*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @ip_tunnel_bind_dev(%struct.net_device*) #1

declare dso_local i32 @ip_tunnel_add(%struct.ip_tunnel_net*, %struct.ip_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
