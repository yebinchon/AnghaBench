; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_alloc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_alloc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow = type { i32 }
%struct.sw_flow_actions = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sw_flow*)* @ovs_flow_cmd_alloc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ovs_flow_cmd_alloc_info(%struct.sw_flow* %0) #0 {
  %2 = alloca %struct.sw_flow*, align 8
  %3 = alloca %struct.sw_flow_actions*, align 8
  store %struct.sw_flow* %0, %struct.sw_flow** %2, align 8
  %4 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %5 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.sw_flow_actions* @ovsl_dereference(i32 %6)
  store %struct.sw_flow_actions* %7, %struct.sw_flow_actions** %3, align 8
  %8 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %3, align 8
  %9 = call i32 @ovs_flow_cmd_msg_size(%struct.sw_flow_actions* %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sk_buff* @genlmsg_new(i32 %9, i32 %10)
  ret %struct.sk_buff* %11
}

declare dso_local %struct.sw_flow_actions* @ovsl_dereference(i32) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i32 @ovs_flow_cmd_msg_size(%struct.sw_flow_actions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
