; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_dp_upcall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_dp_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dp_upcall_info = type { i64 }
%struct.dp_stats_percpu = type { i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_dp_upcall(%struct.datapath* %0, %struct.sk_buff* %1, %struct.dp_upcall_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.datapath*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.dp_upcall_info*, align 8
  %8 = alloca %struct.dp_stats_percpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.dp_upcall_info* %2, %struct.dp_upcall_info** %7, align 8
  %11 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %7, align 8
  %12 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOTCONN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.datapath*, %struct.datapath** %5, align 8
  %20 = call i32 @get_dpifindex(%struct.datapath* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %49

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @skb_is_gso(%struct.sk_buff* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load %struct.datapath*, %struct.datapath** %5, align 8
  %32 = call i32 @ovs_dp_get_net(%struct.datapath* %31)
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %7, align 8
  %36 = call i32 @queue_userspace_packet(i32 %32, i32 %33, %struct.sk_buff* %34, %struct.dp_upcall_info* %35)
  store i32 %36, i32* %10, align 4
  br label %44

37:                                               ; preds = %26
  %38 = load %struct.datapath*, %struct.datapath** %5, align 8
  %39 = call i32 @ovs_dp_get_net(%struct.datapath* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %7, align 8
  %43 = call i32 @queue_gso_packets(i32 %39, i32 %40, %struct.sk_buff* %41, %struct.dp_upcall_info* %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %37, %30
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %49

48:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %65

49:                                               ; preds = %47, %23, %15
  %50 = load %struct.datapath*, %struct.datapath** %5, align 8
  %51 = getelementptr inbounds %struct.datapath, %struct.datapath* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.dp_stats_percpu* @this_cpu_ptr(i32 %52)
  store %struct.dp_stats_percpu* %53, %struct.dp_stats_percpu** %8, align 8
  %54 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %8, align 8
  %55 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %54, i32 0, i32 0
  %56 = call i32 @u64_stats_update_begin(i32* %55)
  %57 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %8, align 8
  %58 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %8, align 8
  %62 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %61, i32 0, i32 0
  %63 = call i32 @u64_stats_update_end(i32* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %49, %48
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @get_dpifindex(%struct.datapath*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @queue_userspace_packet(i32, i32, %struct.sk_buff*, %struct.dp_upcall_info*) #1

declare dso_local i32 @ovs_dp_get_net(%struct.datapath*) #1

declare dso_local i32 @queue_gso_packets(i32, i32, %struct.sk_buff*, %struct.dp_upcall_info*) #1

declare dso_local %struct.dp_stats_percpu* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
