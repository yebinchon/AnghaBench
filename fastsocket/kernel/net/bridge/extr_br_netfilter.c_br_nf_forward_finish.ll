; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_forward_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_forward_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64, i32, %struct.nf_bridge_info* }
%struct.nf_bridge_info = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@ETH_P_ARP = common dso_local global i32 0, align 4
@BRNF_PKT_TYPE = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@PF_BRIDGE = common dso_local global i32 0, align 4
@NF_BR_FORWARD = common dso_local global i32 0, align 4
@br_forward_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @br_nf_forward_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_forward_finish(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nf_bridge_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 4
  %7 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %6, align 8
  store %struct.nf_bridge_info* %7, %struct.nf_bridge_info** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @ETH_P_ARP, align 4
  %12 = call i64 @htons(i32 %11)
  %13 = icmp ne i64 %10, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %16 = call i32 @IS_VLAN_ARP(%struct.sk_buff* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %20 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %4, align 8
  %22 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %23 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BRNF_PKT_TYPE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load i32, i32* @PACKET_OTHERHOST, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @BRNF_PKT_TYPE, align 4
  %33 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %34 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %28, %18
  br label %44

38:                                               ; preds = %14, %1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.net_device**
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  store %struct.net_device* %43, %struct.net_device** %4, align 8
  br label %44

44:                                               ; preds = %38, %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %46 = call i32 @nf_bridge_push_encap_header(%struct.sk_buff* %45)
  %47 = load i32, i32* @PF_BRIDGE, align 4
  %48 = load i32, i32* @NF_BR_FORWARD, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @br_forward_finish, align 4
  %55 = call i32 @NF_HOOK_THRESH(i32 %47, i32 %48, %struct.sk_buff* %49, %struct.net_device* %50, i32 %53, i32 %54, i32 1)
  ret i32 0
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @IS_VLAN_ARP(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_push_encap_header(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK_THRESH(i32, i32, %struct.sk_buff*, %struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
