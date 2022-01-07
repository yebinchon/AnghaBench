; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_pre_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_pre_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.iphdr = type { i32, i32, i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@br_nf_pre_routing_finish = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@brnf_call_ip6tables = common dso_local global i32 0, align 4
@brnf_call_iptables = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @br_nf_pre_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_pre_routing(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = call i32 @nf_bridge_encap_header_len(%struct.sk_buff* %14)
  store i32 %15, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* %13, align 4
  %18 = call i32 @pskb_may_pull(%struct.sk_buff* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %159

25:                                               ; preds = %5
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @ETH_P_IPV6, align 4
  %30 = call i64 @htons(i32 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call i64 @IS_VLAN_IPV6(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call i64 @IS_PPPOE_IPV6(%struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36, %32, %25
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @nf_bridge_pull_encap_header_rcsum(%struct.sk_buff* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load %struct.net_device*, %struct.net_device** %9, align 8
  %46 = load %struct.net_device*, %struct.net_device** %10, align 8
  %47 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %11, align 8
  %48 = call i32 @br_nf_pre_routing_ipv6(i32 %43, %struct.sk_buff* %44, %struct.net_device* %45, %struct.net_device* %46, i32 (%struct.sk_buff*)* %47)
  store i32 %48, i32* %6, align 4
  br label %161

49:                                               ; preds = %36
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @ETH_P_IP, align 4
  %54 = call i64 @htons(i32 %53)
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i32 @IS_VLAN_IP(%struct.sk_buff* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = call i32 @IS_PPPOE_IP(%struct.sk_buff* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %65, i32* %6, align 4
  br label %161

66:                                               ; preds = %60, %56, %49
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = call i32 @nf_bridge_pull_encap_header_rcsum(%struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call i32 @pskb_may_pull(%struct.sk_buff* %69, i32 12)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %158

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %74)
  store %struct.iphdr* %75, %struct.iphdr** %12, align 8
  %76 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %77 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 5
  br i1 %79, label %85, label %80

80:                                               ; preds = %73
  %81 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %82 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 4
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %73
  br label %158

86:                                               ; preds = %80
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %89 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 4, %90
  %92 = call i32 @pskb_may_pull(%struct.sk_buff* %87, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  br label %158

95:                                               ; preds = %86
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %96)
  store %struct.iphdr* %97, %struct.iphdr** %12, align 8
  %98 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %99 = bitcast %struct.iphdr* %98 to i32*
  %100 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %101 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ip_fast_csum(i32* %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %158

106:                                              ; preds = %95
  %107 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %108 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ntohs(i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %119 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 4, %120
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116, %106
  br label %158

124:                                              ; preds = %116
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @pskb_trim_rcsum(%struct.sk_buff* %125, i32 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %129 = call i32 @IPCB(%struct.sk_buff* %128)
  %130 = call i32 @memset(i32 %129, i32 0, i32 4)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @nf_bridge_put(i32 %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %136 = call i32 @nf_bridge_alloc(%struct.sk_buff* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %124
  %139 = load i32, i32* @NF_DROP, align 4
  store i32 %139, i32* %6, align 4
  br label %161

140:                                              ; preds = %124
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = call i32 @setup_pre_routing(%struct.sk_buff* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* @NF_DROP, align 4
  store i32 %145, i32* %6, align 4
  br label %161

146:                                              ; preds = %140
  %147 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %148 = call i32 @store_orig_dstaddr(%struct.sk_buff* %147)
  %149 = load i32, i32* @PF_INET, align 4
  %150 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @br_nf_pre_routing_finish, align 4
  %156 = call i32 @NF_HOOK(i32 %149, i32 %150, %struct.sk_buff* %151, i32 %154, i32* null, i32 %155)
  %157 = load i32, i32* @NF_STOLEN, align 4
  store i32 %157, i32* %6, align 4
  br label %161

158:                                              ; preds = %123, %105, %94, %85, %72
  br label %159

159:                                              ; preds = %158, %24
  %160 = load i32, i32* @NF_DROP, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %159, %146, %144, %138, %64, %40
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @nf_bridge_encap_header_len(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @IS_VLAN_IPV6(%struct.sk_buff*) #1

declare dso_local i64 @IS_PPPOE_IPV6(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_pull_encap_header_rcsum(%struct.sk_buff*) #1

declare dso_local i32 @br_nf_pre_routing_ipv6(i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*) #1

declare dso_local i32 @IS_VLAN_IP(%struct.sk_buff*) #1

declare dso_local i32 @IS_PPPOE_IP(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_fast_csum(i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_put(i32) #1

declare dso_local i32 @nf_bridge_alloc(%struct.sk_buff*) #1

declare dso_local i32 @setup_pre_routing(%struct.sk_buff*) #1

declare dso_local i32 @store_orig_dstaddr(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
