; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_dev_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_dev_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ip6_tnl = type { i32 }
%struct.net = type { i32 }
%struct.ip6_tnl_net = type { i32**, %struct.net_device* }

@ip6_tnl_net_id = common dso_local global i32 0, align 4
@ip6_tnl_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ip6_tnl_dev_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_tnl_dev_uninit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ip6_tnl*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ip6_tnl_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %6)
  store %struct.ip6_tnl* %7, %struct.ip6_tnl** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.net* @dev_net(%struct.net_device* %8)
  store %struct.net* %9, %struct.net** %4, align 8
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = load i32, i32* @ip6_tnl_net_id, align 4
  %12 = call %struct.ip6_tnl_net* @net_generic(%struct.net* %10, i32 %11)
  store %struct.ip6_tnl_net* %12, %struct.ip6_tnl_net** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %15 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = icmp eq %struct.net_device* %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = call i32 @write_lock_bh(i32* @ip6_tnl_lock)
  %20 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %21 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  store i32* null, i32** %23, align 8
  %24 = call i32 @write_unlock_bh(i32* @ip6_tnl_lock)
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %27 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %28 = call i32 @ip6_tnl_unlink(%struct.ip6_tnl_net* %26, %struct.ip6_tnl* %27)
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %31 = call i32 @ip6_tnl_dst_reset(%struct.ip6_tnl* %30)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @dev_put(%struct.net_device* %32)
  ret void
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.ip6_tnl_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @ip6_tnl_unlink(%struct.ip6_tnl_net*, %struct.ip6_tnl*) #1

declare dso_local i32 @ip6_tnl_dst_reset(%struct.ip6_tnl*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
