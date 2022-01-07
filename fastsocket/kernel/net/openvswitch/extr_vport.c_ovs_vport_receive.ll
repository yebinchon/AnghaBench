; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport.c_ovs_vport_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport.c_ovs_vport_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ovs_key_ipv4_tunnel = type { i32 }
%struct.vport_percpu_stats = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ovs_key_ipv4_tunnel* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_vport_receive(%struct.vport* %0, %struct.sk_buff* %1, %struct.ovs_key_ipv4_tunnel* %2) #0 {
  %4 = alloca %struct.vport*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ovs_key_ipv4_tunnel*, align 8
  %7 = alloca %struct.vport_percpu_stats*, align 8
  store %struct.vport* %0, %struct.vport** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ovs_key_ipv4_tunnel* %2, %struct.ovs_key_ipv4_tunnel** %6, align 8
  %8 = load %struct.vport*, %struct.vport** %4, align 8
  %9 = getelementptr inbounds %struct.vport, %struct.vport* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.vport_percpu_stats* @this_cpu_ptr(i32 %10)
  store %struct.vport_percpu_stats* %11, %struct.vport_percpu_stats** %7, align 8
  %12 = load %struct.vport_percpu_stats*, %struct.vport_percpu_stats** %7, align 8
  %13 = getelementptr inbounds %struct.vport_percpu_stats, %struct.vport_percpu_stats* %12, i32 0, i32 0
  %14 = call i32 @u64_stats_update_begin(i32* %13)
  %15 = load %struct.vport_percpu_stats*, %struct.vport_percpu_stats** %7, align 8
  %16 = getelementptr inbounds %struct.vport_percpu_stats, %struct.vport_percpu_stats* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.vport_percpu_stats*, %struct.vport_percpu_stats** %7, align 8
  %23 = getelementptr inbounds %struct.vport_percpu_stats, %struct.vport_percpu_stats* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.vport_percpu_stats*, %struct.vport_percpu_stats** %7, align 8
  %29 = getelementptr inbounds %struct.vport_percpu_stats, %struct.vport_percpu_stats* %28, i32 0, i32 0
  %30 = call i32 @u64_stats_update_end(i32* %29)
  %31 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.ovs_key_ipv4_tunnel* %31, %struct.ovs_key_ipv4_tunnel** %34, align 8
  %35 = load %struct.vport*, %struct.vport** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @ovs_dp_process_received_packet(%struct.vport* %35, %struct.sk_buff* %36)
  ret void
}

declare dso_local %struct.vport_percpu_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local %struct.TYPE_2__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local i32 @ovs_dp_process_received_packet(%struct.vport*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
