; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_output2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_output2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device*, i32, i64, i32 }
%struct.net_device = type { i32 }
%struct.dst_entry = type { %struct.net_device* }
%struct.ipv6_pinfo = type { i64 }
%struct.inet6_dev = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IP6SKB_FORWARDED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@ip6_dev_loopback_xmit = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTMCAST = common dso_local global i32 0, align 4
@ip6_output_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip6_output2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_output2(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %9)
  store %struct.dst_entry* %10, %struct.dst_entry** %4, align 8
  %11 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %12 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load i32, i32* @ETH_P_IPV6, align 4
  %15 = call i32 @htons(i32 %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = call i64 @ipv6_addr_is_multicast(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %118

26:                                               ; preds = %1
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call %struct.ipv6_pinfo* @inet6_sk(i64 %34)
  br label %37

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi %struct.ipv6_pinfo* [ %35, %31 ], [ null, %36 ]
  store %struct.ipv6_pinfo* %38, %struct.ipv6_pinfo** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %39)
  %41 = call %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry* %40)
  store %struct.inet6_dev* %41, %struct.inet6_dev** %7, align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_LOOPBACK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %109, label %48

48:                                               ; preds = %37
  %49 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %50 = icmp ne %struct.ipv6_pinfo* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %53 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %109

56:                                               ; preds = %51, %48
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = call i32 @dev_net(%struct.net_device* %57)
  %59 = call i64 @mroute6_socket(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = call %struct.TYPE_4__* @IP6CB(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IP6SKB_FORWARDED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %61, %56
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = call i64 @ipv6_chk_mcast_addr(%struct.net_device* %70, i32* %73, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %69, %61
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = load i32, i32* @GFP_ATOMIC, align 4
  %82 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %80, i32 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %8, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i32, i32* @PF_INET6, align 4
  %87 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load %struct.net_device*, %struct.net_device** %90, align 8
  %92 = load i32, i32* @ip6_dev_loopback_xmit, align 4
  %93 = call i32 @NF_HOOK(i32 %86, i32 %87, %struct.sk_buff* %88, i32* null, %struct.net_device* %91, i32 %92)
  br label %94

94:                                               ; preds = %85, %79
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = call i32 @dev_net(%struct.net_device* %101)
  %103 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %104 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %105 = call i32 @IP6_INC_STATS(i32 %102, %struct.inet6_dev* %103, i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %107 = call i32 @kfree_skb(%struct.sk_buff* %106)
  store i32 0, i32* %2, align 4
  br label %127

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %69, %51, %37
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = call i32 @dev_net(%struct.net_device* %110)
  %112 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %113 = load i32, i32* @IPSTATS_MIB_OUTMCAST, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @IP6_UPD_PO_STATS(i32 %111, %struct.inet6_dev* %112, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %109, %1
  %119 = load i32, i32* @PF_INET6, align 4
  %120 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load %struct.net_device*, %struct.net_device** %123, align 8
  %125 = load i32, i32* @ip6_output_finish, align 4
  %126 = call i32 @NF_HOOK(i32 %119, i32 %120, %struct.sk_buff* %121, i32* null, %struct.net_device* %124, i32 %125)
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %118, %100
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ipv6_addr_is_multicast(i32*) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(i64) #1

declare dso_local %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i64 @mroute6_socket(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_chk_mcast_addr(%struct.net_device*, i32*, i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @IP6_INC_STATS(i32, %struct.inet6_dev*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @IP6_UPD_PO_STATS(i32, %struct.inet6_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
