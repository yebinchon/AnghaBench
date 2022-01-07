; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_dp_notify.c_dp_detach_port_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_dp_notify.c_dp_detach_port_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vport = type { %struct.datapath* }
%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32 }

@OVS_VPORT_CMD_DEL = common dso_local global i32 0, align 4
@ovs_dp_vport_multicast_group = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vport*)* @dp_detach_port_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp_detach_port_notify(%struct.vport* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.datapath*, align 8
  store %struct.vport* %0, %struct.vport** %2, align 8
  %5 = load %struct.vport*, %struct.vport** %2, align 8
  %6 = getelementptr inbounds %struct.vport, %struct.vport* %5, i32 0, i32 0
  %7 = load %struct.datapath*, %struct.datapath** %6, align 8
  store %struct.datapath* %7, %struct.datapath** %4, align 8
  %8 = load %struct.vport*, %struct.vport** %2, align 8
  %9 = load i32, i32* @OVS_VPORT_CMD_DEL, align 4
  %10 = call %struct.sk_buff* @ovs_vport_cmd_build_info(%struct.vport* %8, i32 0, i32 0, i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %3, align 8
  %11 = load %struct.vport*, %struct.vport** %2, align 8
  %12 = call i32 @ovs_dp_detach_port(%struct.vport* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i64 @IS_ERR(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.datapath*, %struct.datapath** %4, align 8
  %18 = call %struct.TYPE_5__* @ovs_dp_get_net(%struct.datapath* %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ovs_dp_vport_multicast_group, i32 0, i32 0), align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i32 @PTR_ERR(%struct.sk_buff* %22)
  %24 = call i32 @netlink_set_err(i32 %20, i32 0, i32 %21, i32 %23)
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.datapath*, %struct.datapath** %4, align 8
  %27 = call %struct.TYPE_5__* @ovs_dp_get_net(%struct.datapath* %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ovs_dp_vport_multicast_group, i32 0, i32 0), align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @genlmsg_multicast_netns(%struct.TYPE_5__* %27, %struct.sk_buff* %28, i32 0, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %16
  ret void
}

declare dso_local %struct.sk_buff* @ovs_vport_cmd_build_info(%struct.vport*, i32, i32, i32) #1

declare dso_local i32 @ovs_dp_detach_port(%struct.vport*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @netlink_set_err(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @ovs_dp_get_net(%struct.datapath*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(%struct.TYPE_5__*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
