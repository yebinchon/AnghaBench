; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-internal_dev.c_internal_dev_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-internal_dev.c_internal_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i64, i32 }
%struct.vport_parms = type { i32 }
%struct.netdev_vport = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.internal_dev = type { %struct.vport* }

@ovs_internal_vport_ops = common dso_local global i32 0, align 4
@do_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OVSP_LOCAL = common dso_local global i64 0, align 8
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vport* (%struct.vport_parms*)* @internal_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vport* @internal_dev_create(%struct.vport_parms* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.vport_parms*, align 8
  %4 = alloca %struct.vport*, align 8
  %5 = alloca %struct.netdev_vport*, align 8
  %6 = alloca %struct.internal_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.vport_parms* %0, %struct.vport_parms** %3, align 8
  %8 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %9 = call %struct.vport* @ovs_vport_alloc(i32 8, i32* @ovs_internal_vport_ops, %struct.vport_parms* %8)
  store %struct.vport* %9, %struct.vport** %4, align 8
  %10 = load %struct.vport*, %struct.vport** %4, align 8
  %11 = call i64 @IS_ERR(%struct.vport* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.vport*, %struct.vport** %4, align 8
  %15 = call i32 @PTR_ERR(%struct.vport* %14)
  store i32 %15, i32* %7, align 4
  br label %91

16:                                               ; preds = %1
  %17 = load %struct.vport*, %struct.vport** %4, align 8
  %18 = call %struct.netdev_vport* @netdev_vport_priv(%struct.vport* %17)
  store %struct.netdev_vport* %18, %struct.netdev_vport** %5, align 8
  %19 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %20 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @do_setup, align 4
  %23 = call %struct.TYPE_8__* @alloc_netdev(i32 8, i32 %21, i32 %22)
  %24 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %25 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %24, i32 0, i32 0
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %27 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %88

33:                                               ; preds = %16
  %34 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %35 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.vport*, %struct.vport** %4, align 8
  %38 = getelementptr inbounds %struct.vport, %struct.vport* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ovs_dp_get_net(i32 %39)
  %41 = call i32 @dev_net_set(%struct.TYPE_8__* %36, i32 %40)
  %42 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %43 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = call %struct.internal_dev* @internal_dev_priv(%struct.TYPE_8__* %44)
  store %struct.internal_dev* %45, %struct.internal_dev** %6, align 8
  %46 = load %struct.vport*, %struct.vport** %4, align 8
  %47 = load %struct.internal_dev*, %struct.internal_dev** %6, align 8
  %48 = getelementptr inbounds %struct.internal_dev, %struct.internal_dev* %47, i32 0, i32 0
  store %struct.vport* %46, %struct.vport** %48, align 8
  %49 = load %struct.vport*, %struct.vport** %4, align 8
  %50 = getelementptr inbounds %struct.vport, %struct.vport* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OVSP_LOCAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %33
  %55 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %56 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %57 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %33
  %63 = call i32 (...) @rtnl_lock()
  %64 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %65 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @register_netdevice(%struct.TYPE_8__* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %82

71:                                               ; preds = %62
  %72 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %73 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i32 @dev_set_promiscuity(%struct.TYPE_8__* %74, i32 1)
  %76 = call i32 (...) @rtnl_unlock()
  %77 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %78 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = call i32 @netif_start_queue(%struct.TYPE_8__* %79)
  %81 = load %struct.vport*, %struct.vport** %4, align 8
  store %struct.vport* %81, %struct.vport** %2, align 8
  br label %94

82:                                               ; preds = %70
  %83 = call i32 (...) @rtnl_unlock()
  %84 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %85 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = call i32 @free_netdev(%struct.TYPE_8__* %86)
  br label %88

88:                                               ; preds = %82, %30
  %89 = load %struct.vport*, %struct.vport** %4, align 8
  %90 = call i32 @ovs_vport_free(%struct.vport* %89)
  br label %91

91:                                               ; preds = %88, %13
  %92 = load i32, i32* %7, align 4
  %93 = call %struct.vport* @ERR_PTR(i32 %92)
  store %struct.vport* %93, %struct.vport** %2, align 8
  br label %94

94:                                               ; preds = %91, %71
  %95 = load %struct.vport*, %struct.vport** %2, align 8
  ret %struct.vport* %95
}

declare dso_local %struct.vport* @ovs_vport_alloc(i32, i32*, %struct.vport_parms*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local %struct.netdev_vport* @netdev_vport_priv(%struct.vport*) #1

declare dso_local %struct.TYPE_8__* @alloc_netdev(i32, i32, i32) #1

declare dso_local i32 @dev_net_set(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ovs_dp_get_net(i32) #1

declare dso_local %struct.internal_dev* @internal_dev_priv(%struct.TYPE_8__*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @register_netdevice(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @netif_start_queue(%struct.TYPE_8__*) #1

declare dso_local i32 @free_netdev(%struct.TYPE_8__*) #1

declare dso_local i32 @ovs_vport_free(%struct.vport*) #1

declare dso_local %struct.vport* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
