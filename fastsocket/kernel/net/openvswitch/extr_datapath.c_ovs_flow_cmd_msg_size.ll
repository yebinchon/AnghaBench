; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_msg_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_msg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_actions = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sw_flow_actions*)* @ovs_flow_cmd_msg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ovs_flow_cmd_msg_size(%struct.sw_flow_actions* %0) #0 {
  %2 = alloca %struct.sw_flow_actions*, align 8
  store %struct.sw_flow_actions* %0, %struct.sw_flow_actions** %2, align 8
  %3 = call i64 @NLMSG_ALIGN(i32 4)
  %4 = call i32 (...) @key_attr_size()
  %5 = call i64 @nla_total_size(i32 %4)
  %6 = add i64 %3, %5
  %7 = call i64 @nla_total_size(i32 4)
  %8 = add i64 %6, %7
  %9 = call i64 @nla_total_size(i32 1)
  %10 = add i64 %8, %9
  %11 = call i64 @nla_total_size(i32 8)
  %12 = add i64 %10, %11
  %13 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %2, align 8
  %14 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @nla_total_size(i32 %15)
  %17 = add i64 %12, %16
  ret i64 %17
}

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @key_attr_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
