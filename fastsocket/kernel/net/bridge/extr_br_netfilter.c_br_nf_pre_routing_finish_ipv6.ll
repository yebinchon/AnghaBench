; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_pre_routing_finish_ipv6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_pre_routing_finish_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.nf_bridge_info* }
%struct.nf_bridge_info = type { i32, i32 }
%struct.rtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BRNF_PKT_TYPE = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@BRNF_NF_BRIDGE_PREROUTING = common dso_local global i32 0, align 4
@PF_BRIDGE = common dso_local global i32 0, align 4
@NF_BR_PRE_ROUTING = common dso_local global i32 0, align 4
@br_handle_frame_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @br_nf_pre_routing_finish_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_pre_routing_finish_ipv6(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nf_bridge_info*, align 8
  %5 = alloca %struct.rtable*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 2
  %8 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %7, align 8
  store %struct.nf_bridge_info* %8, %struct.nf_bridge_info** %4, align 8
  %9 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %4, align 8
  %10 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BRNF_PKT_TYPE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @PACKET_OTHERHOST, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @BRNF_PKT_TYPE, align 4
  %20 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %4, align 8
  %21 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %15, %1
  %25 = load i32, i32* @BRNF_NF_BRIDGE_PREROUTING, align 4
  %26 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %4, align 8
  %27 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %4, align 8
  %31 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.rtable* @bridge_parent_rtable(i32 %32)
  store %struct.rtable* %33, %struct.rtable** %5, align 8
  %34 = load %struct.rtable*, %struct.rtable** %5, align 8
  %35 = icmp ne %struct.rtable* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  store i32 0, i32* %2, align 4
  br label %64

39:                                               ; preds = %24
  %40 = load %struct.rtable*, %struct.rtable** %5, align 8
  %41 = getelementptr inbounds %struct.rtable, %struct.rtable* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dst_hold(i32* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = load %struct.rtable*, %struct.rtable** %5, align 8
  %46 = getelementptr inbounds %struct.rtable, %struct.rtable* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @skb_dst_set(%struct.sk_buff* %44, i32* %47)
  %49 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %4, align 8
  %50 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @nf_bridge_push_encap_header(%struct.sk_buff* %54)
  %56 = load i32, i32* @PF_BRIDGE, align 4
  %57 = load i32, i32* @NF_BR_PRE_ROUTING, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @br_handle_frame_finish, align 4
  %63 = call i32 @NF_HOOK_THRESH(i32 %56, i32 %57, %struct.sk_buff* %58, i32 %61, i32* null, i32 %62, i32 1)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %39, %36
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.rtable* @bridge_parent_rtable(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dst_hold(i32*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nf_bridge_push_encap_header(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK_THRESH(i32, i32, %struct.sk_buff*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
