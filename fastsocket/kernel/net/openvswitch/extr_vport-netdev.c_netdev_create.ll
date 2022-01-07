; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-netdev.c_netdev_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-netdev.c_netdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.vport_parms = type { i32 }
%struct.netdev_vport = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i32, %struct.vport* }

@ovs_netdev_vport_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@nr_bridges = common dso_local global i32 0, align 4
@ovs_netdev_frame_hook = common dso_local global i32 0, align 4
@openvswitch_handle_frame_hook = common dso_local global i32 0, align 4
@IFF_OVS_DATAPATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vport* (%struct.vport_parms*)* @netdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vport* @netdev_create(%struct.vport_parms* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.vport_parms*, align 8
  %4 = alloca %struct.vport*, align 8
  %5 = alloca %struct.netdev_vport*, align 8
  %6 = alloca i32, align 4
  store %struct.vport_parms* %0, %struct.vport_parms** %3, align 8
  %7 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %8 = call %struct.vport* @ovs_vport_alloc(i32 8, i32* @ovs_netdev_vport_ops, %struct.vport_parms* %7)
  store %struct.vport* %8, %struct.vport** %4, align 8
  %9 = load %struct.vport*, %struct.vport** %4, align 8
  %10 = call i64 @IS_ERR(%struct.vport* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.vport*, %struct.vport** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.vport* %13)
  store i32 %14, i32* %6, align 4
  br label %103

15:                                               ; preds = %1
  %16 = load %struct.vport*, %struct.vport** %4, align 8
  %17 = call %struct.netdev_vport* @netdev_vport_priv(%struct.vport* %16)
  store %struct.netdev_vport* %17, %struct.netdev_vport** %5, align 8
  %18 = load %struct.vport*, %struct.vport** %4, align 8
  %19 = getelementptr inbounds %struct.vport, %struct.vport* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ovs_dp_get_net(i32 %20)
  %22 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %23 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_5__* @dev_get_by_name(i32 %21, i32 %24)
  %26 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %27 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %26, i32 0, i32 0
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %29 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %15
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %100

35:                                               ; preds = %15
  %36 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %37 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IFF_LOOPBACK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %35
  %45 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %46 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ARPHRD_ETHER, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %54 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i64 @ovs_is_internal_dev(%struct.TYPE_5__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %44, %35
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %95

61:                                               ; preds = %52
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  %64 = call i32 (...) @rtnl_lock()
  %65 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %66 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load %struct.vport*, %struct.vport** %68, align 8
  %70 = icmp ne %struct.vport* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %93

72:                                               ; preds = %61
  %73 = load %struct.vport*, %struct.vport** %4, align 8
  %74 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %75 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store %struct.vport* %73, %struct.vport** %77, align 8
  %78 = call i32 @atomic_inc(i32* @nr_bridges)
  %79 = load i32, i32* @ovs_netdev_frame_hook, align 4
  store i32 %79, i32* @openvswitch_handle_frame_hook, align 4
  %80 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %81 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = call i32 @dev_set_promiscuity(%struct.TYPE_5__* %82, i32 1)
  %84 = load i32, i32* @IFF_OVS_DATAPATH, align 4
  %85 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %86 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 8
  %91 = call i32 (...) @rtnl_unlock()
  %92 = load %struct.vport*, %struct.vport** %4, align 8
  store %struct.vport* %92, %struct.vport** %2, align 8
  br label %106

93:                                               ; preds = %71
  %94 = call i32 (...) @rtnl_unlock()
  br label %95

95:                                               ; preds = %93, %58
  %96 = load %struct.netdev_vport*, %struct.netdev_vport** %5, align 8
  %97 = getelementptr inbounds %struct.netdev_vport, %struct.netdev_vport* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = call i32 @dev_put(%struct.TYPE_5__* %98)
  br label %100

100:                                              ; preds = %95, %32
  %101 = load %struct.vport*, %struct.vport** %4, align 8
  %102 = call i32 @ovs_vport_free(%struct.vport* %101)
  br label %103

103:                                              ; preds = %100, %12
  %104 = load i32, i32* %6, align 4
  %105 = call %struct.vport* @ERR_PTR(i32 %104)
  store %struct.vport* %105, %struct.vport** %2, align 8
  br label %106

106:                                              ; preds = %103, %72
  %107 = load %struct.vport*, %struct.vport** %2, align 8
  ret %struct.vport* %107
}

declare dso_local %struct.vport* @ovs_vport_alloc(i32, i32*, %struct.vport_parms*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local %struct.netdev_vport* @netdev_vport_priv(%struct.vport*) #1

declare dso_local %struct.TYPE_5__* @dev_get_by_name(i32, i32) #1

declare dso_local i32 @ovs_dp_get_net(i32) #1

declare dso_local i64 @ovs_is_internal_dev(%struct.TYPE_5__*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @dev_put(%struct.TYPE_5__*) #1

declare dso_local i32 @ovs_vport_free(%struct.vport*) #1

declare dso_local %struct.vport* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
