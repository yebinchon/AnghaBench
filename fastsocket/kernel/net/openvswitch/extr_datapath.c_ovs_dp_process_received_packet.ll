; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_dp_process_received_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_dp_process_received_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32, i32, %struct.datapath* }
%struct.datapath = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sw_flow = type { i32 }
%struct.dp_stats_percpu = type { i32, i32, i32 }
%struct.sw_flow_key = type { i32 }
%struct.dp_upcall_info = type { i32, i32*, %struct.sw_flow_key*, i32 }
%struct.TYPE_2__ = type { %struct.sw_flow* }

@OVS_PACKET_CMD_MISS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_dp_process_received_packet(%struct.vport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.vport*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.datapath*, align 8
  %6 = alloca %struct.sw_flow*, align 8
  %7 = alloca %struct.dp_stats_percpu*, align 8
  %8 = alloca %struct.sw_flow_key, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dp_upcall_info, align 8
  store %struct.vport* %0, %struct.vport** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.vport*, %struct.vport** %3, align 8
  %14 = getelementptr inbounds %struct.vport, %struct.vport* %13, i32 0, i32 2
  %15 = load %struct.datapath*, %struct.datapath** %14, align 8
  store %struct.datapath* %15, %struct.datapath** %5, align 8
  %16 = load %struct.datapath*, %struct.datapath** %5, align 8
  %17 = getelementptr inbounds %struct.datapath, %struct.datapath* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dp_stats_percpu* @this_cpu_ptr(i32 %18)
  store %struct.dp_stats_percpu* %19, %struct.dp_stats_percpu** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.vport*, %struct.vport** %3, align 8
  %22 = getelementptr inbounds %struct.vport, %struct.vport* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ovs_flow_extract(%struct.sk_buff* %20, i32 %23, %struct.sw_flow_key* %8, i32* %11)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @kfree_skb(%struct.sk_buff* %29)
  br label %86

31:                                               ; preds = %2
  %32 = load %struct.datapath*, %struct.datapath** %5, align 8
  %33 = getelementptr inbounds %struct.datapath, %struct.datapath* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rcu_dereference(i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.sw_flow* @ovs_flow_tbl_lookup(i32 %35, %struct.sw_flow_key* %8, i32 %36)
  store %struct.sw_flow* %37, %struct.sw_flow** %6, align 8
  %38 = load %struct.sw_flow*, %struct.sw_flow** %6, align 8
  %39 = icmp ne %struct.sw_flow* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %31
  %45 = load i32, i32* @OVS_PACKET_CMD_MISS, align 4
  %46 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %12, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %12, i32 0, i32 2
  store %struct.sw_flow_key* %8, %struct.sw_flow_key** %47, align 8
  %48 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %12, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.vport*, %struct.vport** %3, align 8
  %50 = getelementptr inbounds %struct.vport, %struct.vport* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %12, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load %struct.datapath*, %struct.datapath** %5, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @ovs_dp_upcall(%struct.datapath* %53, %struct.sk_buff* %54, %struct.dp_upcall_info* %12)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @consume_skb(%struct.sk_buff* %56)
  %58 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %7, align 8
  %59 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %58, i32 0, i32 2
  store i32* %59, i32** %9, align 8
  br label %76

60:                                               ; preds = %31
  %61 = load %struct.sw_flow*, %struct.sw_flow** %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.sw_flow* %61, %struct.sw_flow** %64, align 8
  %65 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %7, align 8
  %66 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %65, i32 0, i32 1
  store i32* %66, i32** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.sw_flow*, %struct.sw_flow** %69, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @ovs_flow_used(%struct.sw_flow* %70, %struct.sk_buff* %71)
  %73 = load %struct.datapath*, %struct.datapath** %5, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @ovs_execute_actions(%struct.datapath* %73, %struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %60, %44
  %77 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %7, align 8
  %78 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %77, i32 0, i32 0
  %79 = call i32 @u64_stats_update_begin(i32* %78)
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %7, align 8
  %84 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %83, i32 0, i32 0
  %85 = call i32 @u64_stats_update_end(i32* %84)
  br label %86

86:                                               ; preds = %76, %28
  ret void
}

declare dso_local %struct.dp_stats_percpu* @this_cpu_ptr(i32) #1

declare dso_local i32 @ovs_flow_extract(%struct.sk_buff*, i32, %struct.sw_flow_key*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sw_flow* @ovs_flow_tbl_lookup(i32, %struct.sw_flow_key*, i32) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @ovs_dp_upcall(%struct.datapath*, %struct.sk_buff*, %struct.dp_upcall_info*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local i32 @ovs_flow_used(%struct.sw_flow*, %struct.sk_buff*) #1

declare dso_local i32 @ovs_execute_actions(%struct.datapath*, %struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
