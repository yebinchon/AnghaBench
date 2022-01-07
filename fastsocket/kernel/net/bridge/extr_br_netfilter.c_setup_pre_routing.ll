; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_setup_pre_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_setup_pre_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, %struct.net_device*, %struct.nf_bridge_info* }
%struct.nf_bridge_info = type { %struct.net_device*, i32 }

@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@BRNF_PKT_TYPE = common dso_local global i32 0, align 4
@BRNF_NF_BRIDGE_PREROUTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.sk_buff*)* @setup_pre_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @setup_pre_routing(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nf_bridge_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %4, i32 0, i32 2
  %6 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %5, align 8
  store %struct.nf_bridge_info* %6, %struct.nf_bridge_info** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PACKET_OTHERHOST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i64, i64* @PACKET_HOST, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* @BRNF_PKT_TYPE, align 4
  %17 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %18 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %12, %1
  %22 = load i32, i32* @BRNF_NF_BRIDGE_PREROUTING, align 4
  %23 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %24 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %31 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %30, i32 0, i32 0
  store %struct.net_device* %29, %struct.net_device** %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = call %struct.net_device* @bridge_parent(%struct.net_device* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  store %struct.net_device* %35, %struct.net_device** %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load %struct.net_device*, %struct.net_device** %39, align 8
  ret %struct.net_device* %40
}

declare dso_local %struct.net_device* @bridge_parent(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
