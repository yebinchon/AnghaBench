; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-netdev.c_netdev_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-netdev.c_netdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.netdev_vport = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@IFF_OVS_DATAPATH = common dso_local global i32 0, align 4
@nr_bridges = common dso_local global i32 0, align 4
@openvswitch_handle_frame_hook = common dso_local global i32* null, align 8
@free_port_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vport*)* @netdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_destroy(%struct.vport* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.netdev_vport*, align 8
  store %struct.vport* %0, %struct.vport** %2, align 8
  %4 = load %struct.vport*, %struct.vport** %2, align 8
  %5 = call %struct.netdev_vport* @netdev_vport_priv(%struct.vport* %4)
  store %struct.netdev_vport* %5, %struct.netdev_vport** %3, align 8
  %6 = call i32 (...) @rtnl_lock()
  %7 = load i32, i32* @IFF_OVS_DATAPATH, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.netdev_vport*, %struct.netdev_vport** %3, align 8
  %10 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %8
  store i32 %14, i32* %12, align 8
  %15 = load %struct.netdev_vport*, %struct.netdev_vport** %3, align 8
  %16 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = call i64 @atomic_dec_and_test(i32* @nr_bridges)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32* null, i32** @openvswitch_handle_frame_hook, align 8
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.netdev_vport*, %struct.netdev_vport** %3, align 8
  %24 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @dev_set_promiscuity(%struct.TYPE_2__* %25, i32 -1)
  %27 = call i32 (...) @rtnl_unlock()
  %28 = load %struct.netdev_vport*, %struct.netdev_vport** %3, align 8
  %29 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %28, i32 0, i32 0
  %30 = load i32, i32* @free_port_rcu, align 4
  %31 = call i32 @call_rcu(i32* %29, i32 %30)
  ret void
}

declare dso_local %struct.netdev_vport* @netdev_vport_priv(%struct.vport*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
