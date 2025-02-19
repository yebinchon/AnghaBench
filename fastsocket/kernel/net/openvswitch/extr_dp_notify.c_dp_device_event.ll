; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_dp_notify.c_dp_device_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_dp_notify.c_dp_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.ovs_net = type { i32 }
%struct.net_device = type { i32 }
%struct.vport = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@ovs_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @dp_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ovs_net*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.vport*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %9, align 8
  store %struct.vport* null, %struct.vport** %10, align 8
  %13 = load %struct.net_device*, %struct.net_device** %9, align 8
  %14 = call i32 @ovs_is_internal_dev(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %9, align 8
  %18 = call %struct.vport* @ovs_netdev_get_vport(%struct.net_device* %17)
  store %struct.vport* %18, %struct.vport** %10, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.vport*, %struct.vport** %10, align 8
  %21 = icmp ne %struct.vport* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %23, i32* %4, align 4
  br label %38

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %9, align 8
  %30 = call i32 @dev_net(%struct.net_device* %29)
  %31 = load i32, i32* @ovs_net_id, align 4
  %32 = call %struct.ovs_net* @net_generic(i32 %30, i32 %31)
  store %struct.ovs_net* %32, %struct.ovs_net** %8, align 8
  %33 = load %struct.ovs_net*, %struct.ovs_net** %8, align 8
  %34 = getelementptr inbounds %struct.ovs_net, %struct.ovs_net* %33, i32 0, i32 0
  %35 = call i32 @schedule_work(i32* %34)
  br label %36

36:                                               ; preds = %28, %24
  %37 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @ovs_is_internal_dev(%struct.net_device*) #1

declare dso_local %struct.vport* @ovs_netdev_get_vport(%struct.net_device*) #1

declare dso_local %struct.ovs_net* @net_generic(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
