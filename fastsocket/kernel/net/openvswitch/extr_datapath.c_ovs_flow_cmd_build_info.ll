; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_build_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_build_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow = type { i32 }
%struct.datapath = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sw_flow*, %struct.datapath*, i32, i32, i32)* @ovs_flow_cmd_build_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ovs_flow_cmd_build_info(%struct.sw_flow* %0, %struct.datapath* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sw_flow*, align 8
  %8 = alloca %struct.datapath*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.sw_flow* %0, %struct.sw_flow** %7, align 8
  store %struct.datapath* %1, %struct.datapath** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sw_flow*, %struct.sw_flow** %7, align 8
  %15 = call %struct.sk_buff* @ovs_flow_cmd_alloc_info(%struct.sw_flow* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %12, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.sk_buff* @ERR_PTR(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  br label %35

22:                                               ; preds = %5
  %23 = load %struct.sw_flow*, %struct.sw_flow** %7, align 8
  %24 = load %struct.datapath*, %struct.datapath** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @ovs_flow_cmd_fill_info(%struct.sw_flow* %23, %struct.datapath* %24, %struct.sk_buff* %25, i32 %26, i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %6, align 8
  br label %35

35:                                               ; preds = %22, %18
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %36
}

declare dso_local %struct.sk_buff* @ovs_flow_cmd_alloc_info(%struct.sw_flow*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @ovs_flow_cmd_fill_info(%struct.sw_flow*, %struct.datapath*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
