; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_dp_cmd_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_dp_cmd_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ovs_header = type { i32 }
%struct.ovs_dp_stats = type { i32 }

@dp_datapath_genl_family = common dso_local global i32 0, align 4
@OVS_DP_ATTR_NAME = common dso_local global i32 0, align 4
@OVS_DP_ATTR_STATS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*, %struct.sk_buff*, i32, i32, i32, i32)* @ovs_dp_cmd_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_dp_cmd_fill_info(%struct.datapath* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.datapath*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ovs_header*, align 8
  %15 = alloca %struct.ovs_dp_stats, align 4
  %16 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.ovs_header* @genlmsg_put(%struct.sk_buff* %17, i32 %18, i32 %19, i32* @dp_datapath_genl_family, i32 %20, i32 %21)
  store %struct.ovs_header* %22, %struct.ovs_header** %14, align 8
  %23 = load %struct.ovs_header*, %struct.ovs_header** %14, align 8
  %24 = icmp ne %struct.ovs_header* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  br label %57

26:                                               ; preds = %6
  %27 = load %struct.datapath*, %struct.datapath** %8, align 8
  %28 = call i32 @get_dpifindex(%struct.datapath* %27)
  %29 = load %struct.ovs_header*, %struct.ovs_header** %14, align 8
  %30 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = load i32, i32* @OVS_DP_ATTR_NAME, align 4
  %34 = load %struct.datapath*, %struct.datapath** %8, align 8
  %35 = call i32 @ovs_dp_name(%struct.datapath* %34)
  %36 = call i32 @nla_put_string(%struct.sk_buff* %32, i32 %33, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %53

41:                                               ; preds = %26
  %42 = load %struct.datapath*, %struct.datapath** %8, align 8
  %43 = call i32 @get_dp_stats(%struct.datapath* %42, %struct.ovs_dp_stats* %15)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load i32, i32* @OVS_DP_ATTR_STATS, align 4
  %46 = call i64 @nla_put(%struct.sk_buff* %44, i32 %45, i32 4, %struct.ovs_dp_stats* %15)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = load %struct.ovs_header*, %struct.ovs_header** %14, align 8
  %52 = call i32 @genlmsg_end(%struct.sk_buff* %50, %struct.ovs_header* %51)
  store i32 %52, i32* %7, align 4
  br label %60

53:                                               ; preds = %48, %40
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = load %struct.ovs_header*, %struct.ovs_header** %14, align 8
  %56 = call i32 @genlmsg_cancel(%struct.sk_buff* %54, %struct.ovs_header* %55)
  br label %57

57:                                               ; preds = %53, %25
  %58 = load i32, i32* @EMSGSIZE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local %struct.ovs_header* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @get_dpifindex(%struct.datapath*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ovs_dp_name(%struct.datapath*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @get_dp_stats(%struct.datapath*, %struct.ovs_dp_stats*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.ovs_dp_stats*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.ovs_header*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, %struct.ovs_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
