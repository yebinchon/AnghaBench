; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-internal_dev.c_internal_dev_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-internal_dev.c_internal_dev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.netdev_vport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vport*)* @internal_dev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_dev_destroy(%struct.vport* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.netdev_vport*, align 8
  store %struct.vport* %0, %struct.vport** %2, align 8
  %4 = load %struct.vport*, %struct.vport** %2, align 8
  %5 = call %struct.netdev_vport* @netdev_vport_priv(%struct.vport* %4)
  store %struct.netdev_vport* %5, %struct.netdev_vport** %3, align 8
  %6 = load %struct.netdev_vport*, %struct.netdev_vport** %3, align 8
  %7 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @netif_stop_queue(i32 %8)
  %10 = call i32 (...) @rtnl_lock()
  %11 = load %struct.netdev_vport*, %struct.netdev_vport** %3, align 8
  %12 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_set_promiscuity(i32 %13, i32 -1)
  %15 = load %struct.netdev_vport*, %struct.netdev_vport** %3, align 8
  %16 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @unregister_netdevice(i32 %17)
  %19 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local %struct.netdev_vport* @netdev_vport_priv(%struct.vport*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_set_promiscuity(i32, i32) #1

declare dso_local i32 @unregister_netdevice(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
