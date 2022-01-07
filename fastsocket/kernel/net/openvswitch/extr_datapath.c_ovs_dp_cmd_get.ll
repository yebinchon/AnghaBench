; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_dp_cmd_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_dp_cmd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32, i32 }
%struct.datapath = type { i32 }

@OVS_DP_CMD_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_dp_cmd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_dp_cmd_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.datapath*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = call i32 (...) @ovs_lock()
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sock_net(i32 %12)
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sk_buff* @lookup_datapath(i32 %13, i32 %16, i32 %19)
  %21 = bitcast %struct.sk_buff* %20 to %struct.datapath*
  store %struct.datapath* %21, %struct.datapath** %7, align 8
  %22 = load %struct.datapath*, %struct.datapath** %7, align 8
  %23 = bitcast %struct.datapath* %22 to %struct.sk_buff*
  %24 = call i64 @IS_ERR(%struct.sk_buff* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.datapath*, %struct.datapath** %7, align 8
  %28 = bitcast %struct.datapath* %27 to %struct.sk_buff*
  %29 = call i32 @PTR_ERR(%struct.sk_buff* %28)
  store i32 %29, i32* %8, align 4
  br label %52

30:                                               ; preds = %2
  %31 = load %struct.datapath*, %struct.datapath** %7, align 8
  %32 = bitcast %struct.datapath* %31 to %struct.sk_buff*
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OVS_DP_CMD_NEW, align 4
  %40 = call %struct.sk_buff* @ovs_dp_cmd_build_info(%struct.sk_buff* %32, i32 %35, i32 %38, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %6, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i64 @IS_ERR(%struct.sk_buff* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @PTR_ERR(%struct.sk_buff* %45)
  store i32 %46, i32* %8, align 4
  br label %52

47:                                               ; preds = %30
  %48 = call i32 (...) @ovs_unlock()
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = call i32 @genlmsg_reply(%struct.sk_buff* %49, %struct.genl_info* %50)
  store i32 %51, i32* %3, align 4
  br label %55

52:                                               ; preds = %44, %26
  %53 = call i32 (...) @ovs_unlock()
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.sk_buff* @lookup_datapath(i32, i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ovs_dp_cmd_build_info(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
