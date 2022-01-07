; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_forward_arp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_forward_arp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ETH_P_ARP = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@NFPROTO_ARP = common dso_local global i32 0, align 4
@NF_ARP_FORWARD = common dso_local global i32 0, align 4
@br_nf_forward_finish = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@brnf_call_arptables = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @br_nf_forward_arp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_forward_arp(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca %struct.net_device**, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.net_device**
  store %struct.net_device** %16, %struct.net_device*** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @ETH_P_ARP, align 4
  %21 = call i64 @htons(i32 %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call i64 @IS_VLAN_ARP(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %28, i32* %6, align 4
  br label %58

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call i32 @nf_bridge_pull_encap_header(%struct.sk_buff* %30)
  br label %32

32:                                               ; preds = %29, %5
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call %struct.TYPE_2__* @arp_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call i64 @IS_VLAN_ARP(%struct.sk_buff* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = call i32 @nf_bridge_push_encap_header(%struct.sk_buff* %43)
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %46, i32* %6, align 4
  br label %58

47:                                               ; preds = %32
  %48 = load %struct.net_device*, %struct.net_device** %9, align 8
  %49 = load %struct.net_device**, %struct.net_device*** %12, align 8
  store %struct.net_device* %48, %struct.net_device** %49, align 8
  %50 = load i32, i32* @NFPROTO_ARP, align 4
  %51 = load i32, i32* @NF_ARP_FORWARD, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load %struct.net_device*, %struct.net_device** %9, align 8
  %54 = load %struct.net_device*, %struct.net_device** %10, align 8
  %55 = load i32, i32* @br_nf_forward_finish, align 4
  %56 = call i32 @NF_HOOK(i32 %50, i32 %51, %struct.sk_buff* %52, %struct.net_device* %53, %struct.net_device* %54, i32 %55)
  %57 = load i32, i32* @NF_STOLEN, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %47, %45, %27
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @IS_VLAN_ARP(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_pull_encap_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @arp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_push_encap_header(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
