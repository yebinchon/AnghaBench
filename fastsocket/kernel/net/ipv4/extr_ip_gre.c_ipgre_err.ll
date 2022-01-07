; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.tnl_ptk_info = type { i64, i32, i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.ip_tunnel = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@PACKET_RCVD = common dso_local global i32 0, align 4
@ICMP_EXC_TTL = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@gre_tap_net_id = common dso_local global i32 0, align 4
@ipgre_net_id = common dso_local global i32 0, align 4
@PACKET_REJECT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPTUNNEL_ERR_TIMEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.tnl_ptk_info*)* @ipgre_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_err(%struct.sk_buff* %0, i32 %1, %struct.tnl_ptk_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tnl_ptk_info*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ip_tunnel_net*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip_tunnel*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tnl_ptk_info* %2, %struct.tnl_ptk_info** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call %struct.net* @dev_net(%struct.TYPE_8__* %16)
  store %struct.net* %17, %struct.net** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.TYPE_7__* @icmp_hdr(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.TYPE_7__* @icmp_hdr(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %27 [
    i32 131, label %28
    i32 132, label %30
    i32 128, label %36
  ]

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %3, %27
  %29 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %29, i32* %4, align 4
  br label %137

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %34 [
    i32 129, label %32
    i32 130, label %32
  ]

32:                                               ; preds = %30, %30
  %33 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %33, i32* %4, align 4
  br label %137

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34
  br label %43

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @ICMP_EXC_TTL, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %41, i32* %4, align 4
  br label %137

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %35
  %44 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %7, align 8
  %45 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @ETH_P_TEB, align 4
  %48 = call i64 @htons(i32 %47)
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.net*, %struct.net** %8, align 8
  %52 = load i32, i32* @gre_tap_net_id, align 4
  %53 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %51, i32 %52)
  store %struct.ip_tunnel_net* %53, %struct.ip_tunnel_net** %9, align 8
  br label %58

54:                                               ; preds = %43
  %55 = load %struct.net*, %struct.net** %8, align 8
  %56 = load i32, i32* @ipgre_net_id, align 4
  %57 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %55, i32 %56)
  store %struct.ip_tunnel_net* %57, %struct.ip_tunnel_net** %9, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.iphdr*
  store %struct.iphdr* %62, %struct.iphdr** %10, align 8
  %63 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %9, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %7, align 8
  %70 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %73 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %7, align 8
  %79 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net* %63, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80)
  store %struct.ip_tunnel* %81, %struct.ip_tunnel** %13, align 8
  %82 = load %struct.ip_tunnel*, %struct.ip_tunnel** %13, align 8
  %83 = icmp eq %struct.ip_tunnel* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %58
  %85 = load i32, i32* @PACKET_REJECT, align 4
  store i32 %85, i32* %4, align 4
  br label %137

86:                                               ; preds = %58
  %87 = load %struct.ip_tunnel*, %struct.ip_tunnel** %13, align 8
  %88 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %86
  %94 = load %struct.ip_tunnel*, %struct.ip_tunnel** %13, align 8
  %95 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @ipv4_is_multicast(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93, %86
  %102 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %102, i32* %4, align 4
  br label %137

103:                                              ; preds = %93
  %104 = load %struct.ip_tunnel*, %struct.ip_tunnel** %13, align 8
  %105 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 128
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %114, i32* %4, align 4
  br label %137

115:                                              ; preds = %110, %103
  %116 = load i64, i64* @jiffies, align 8
  %117 = load %struct.ip_tunnel*, %struct.ip_tunnel** %13, align 8
  %118 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IPTUNNEL_ERR_TIMEO, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i64 @time_before(i64 %116, i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = load %struct.ip_tunnel*, %struct.ip_tunnel** %13, align 8
  %126 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  br label %132

129:                                              ; preds = %115
  %130 = load %struct.ip_tunnel*, %struct.ip_tunnel** %13, align 8
  %131 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i64, i64* @jiffies, align 8
  %134 = load %struct.ip_tunnel*, %struct.ip_tunnel** %13, align 8
  %135 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %132, %113, %101, %84, %40, %32, %28
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ipv4_is_multicast(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
