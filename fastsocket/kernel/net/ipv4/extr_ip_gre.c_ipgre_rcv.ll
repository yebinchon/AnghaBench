; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tnl_ptk_info = type { i64, i32, i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.ip_tunnel = type { i32 }

@ETH_P_TEB = common dso_local global i32 0, align 4
@gre_tap_net_id = common dso_local global i32 0, align 4
@ipgre_net_id = common dso_local global i32 0, align 4
@PACKET_RCVD = common dso_local global i32 0, align 4
@PACKET_REJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tnl_ptk_info*)* @ipgre_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_rcv(%struct.sk_buff* %0, %struct.tnl_ptk_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tnl_ptk_info*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.ip_tunnel_net*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.ip_tunnel*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tnl_ptk_info* %1, %struct.tnl_ptk_info** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call %struct.net* @dev_net(%struct.TYPE_2__* %12)
  store %struct.net* %13, %struct.net** %6, align 8
  %14 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %15 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ETH_P_TEB, align 4
  %18 = call i64 @htons(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.net*, %struct.net** %6, align 8
  %22 = load i32, i32* @gre_tap_net_id, align 4
  %23 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %21, i32 %22)
  store %struct.ip_tunnel_net* %23, %struct.ip_tunnel_net** %7, align 8
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.net*, %struct.net** %6, align 8
  %26 = load i32, i32* @ipgre_net_id, align 4
  %27 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %25, i32 %26)
  store %struct.ip_tunnel_net* %27, %struct.ip_tunnel_net** %7, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %29)
  store %struct.iphdr* %30, %struct.iphdr** %8, align 8
  %31 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %38 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %47 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net* %31, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48)
  store %struct.ip_tunnel* %49, %struct.ip_tunnel** %9, align 8
  %50 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %51 = icmp ne %struct.ip_tunnel* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %28
  %53 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %56 = call i32 @ip_tunnel_rcv(%struct.ip_tunnel* %53, %struct.sk_buff* %54, %struct.tnl_ptk_info* %55, i32 0)
  %57 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %28
  %59 = load i32, i32* @PACKET_REJECT, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %52
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_2__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip_tunnel_rcv(%struct.ip_tunnel*, %struct.sk_buff*, %struct.tnl_ptk_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
