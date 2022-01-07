; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_validate_and_copy_set_tun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_validate_and_copy_set_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.sw_flow_actions = type { i32 }
%struct.ovs_key_ipv4_tunnel = type { i32 }

@OVS_ACTION_ATTR_SET = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_IPV4_TUNNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.sw_flow_actions**)* @validate_and_copy_set_tun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_and_copy_set_tun(%struct.nlattr* %0, %struct.sw_flow_actions** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.sw_flow_actions**, align 8
  %6 = alloca %struct.ovs_key_ipv4_tunnel, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.sw_flow_actions** %1, %struct.sw_flow_actions*** %5, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %10 = call i32 @nla_data(%struct.nlattr* %9)
  %11 = call i32 @ovs_ipv4_tun_from_nlattr(i32 %10, %struct.ovs_key_ipv4_tunnel* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %5, align 8
  %18 = load i32, i32* @OVS_ACTION_ATTR_SET, align 4
  %19 = call i32 @add_nested_action_start(%struct.sw_flow_actions** %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %16
  %25 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %5, align 8
  %26 = load i32, i32* @OVS_KEY_ATTR_IPV4_TUNNEL, align 4
  %27 = call i32 @add_action(%struct.sw_flow_actions** %25, i32 %26, %struct.ovs_key_ipv4_tunnel* %6, i32 4)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %5, align 8
  %29 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @add_nested_action_end(%struct.sw_flow_actions* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %22, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ovs_ipv4_tun_from_nlattr(i32, %struct.ovs_key_ipv4_tunnel*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @add_nested_action_start(%struct.sw_flow_actions**, i32) #1

declare dso_local i32 @add_action(%struct.sw_flow_actions**, i32, %struct.ovs_key_ipv4_tunnel*, i32) #1

declare dso_local i32 @add_nested_action_end(%struct.sw_flow_actions*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
