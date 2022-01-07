; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_del_nbp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_del_nbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i32, i32, %struct.net_device*, %struct.net_bridge* }
%struct.net_device = type { i32, i32, i32 }
%struct.net_bridge = type { i32, i32 }

@RTM_DELLINK = common dso_local global i32 0, align 4
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@KOBJ_REMOVE = common dso_local global i32 0, align 4
@destroy_nbp_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*)* @del_nbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_nbp(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %5 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %6 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %5, i32 0, i32 4
  %7 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  store %struct.net_bridge* %7, %struct.net_bridge** %3, align 8
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %12 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sysfs_remove_link(i32 %13, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @dev_set_promiscuity(%struct.net_device* %18, i32 -1)
  %20 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %22 = call i32 @br_del_vlans_from_port(%struct.net_bridge* %20, %struct.net_bridge_port* %21)
  %23 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %24 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %27 = call i32 @br_stp_disable_port(%struct.net_bridge_port* %26)
  %28 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %29 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load i32, i32* @RTM_DELLINK, align 4
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %33 = call i32 @br_ifinfo_notify(i32 %31, %struct.net_bridge_port* %32)
  %34 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %35 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %36 = call i32 @br_fdb_delete_by_port(%struct.net_bridge* %34, %struct.net_bridge_port* %35, i32 1)
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %38 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %37, i32 0, i32 2
  %39 = call i32 @list_del_rcu(i32* %38)
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rcu_assign_pointer(i32 %42, i32* null)
  %44 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %51 = call i32 @br_multicast_del_port(%struct.net_bridge_port* %50)
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %53 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %52, i32 0, i32 1
  %54 = load i32, i32* @KOBJ_REMOVE, align 4
  %55 = call i32 @kobject_uevent(i32* %53, i32 %54)
  %56 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %57 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %56, i32 0, i32 1
  %58 = call i32 @kobject_del(i32* %57)
  %59 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %60 = call i32 @br_netpoll_disable(%struct.net_bridge_port* %59)
  %61 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %62 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %61, i32 0, i32 0
  %63 = load i32, i32* @destroy_nbp_rcu, align 4
  %64 = call i32 @call_rcu(i32* %62, i32 %63)
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32, i32) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @br_del_vlans_from_port(%struct.net_bridge*, %struct.net_bridge_port*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_stp_disable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @br_ifinfo_notify(i32, %struct.net_bridge_port*) #1

declare dso_local i32 @br_fdb_delete_by_port(%struct.net_bridge*, %struct.net_bridge_port*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @br_multicast_del_port(%struct.net_bridge_port*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @br_netpoll_disable(%struct.net_bridge_port*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
