; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_newpack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_newpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.mld2_report = type { i64, i64, i64, i64, i32 }

@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@IPV6_TLV_ROUTERALERT = common dso_local global i32 0, align 4
@IPV6_TLV_PADN = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global %struct.in6_addr zeroinitializer, align 4
@mld2_all_mcr = common dso_local global i32 0, align 4
@NEXTHDR_HOP = common dso_local global i32 0, align 4
@ICMPV6_MLD2_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, i32)* @mld_newpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @mld_newpack(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.mld2_report*, align 8
  %10 = alloca %struct.in6_addr, align 4
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.net* @dev_net(%struct.net_device* %14)
  store %struct.net* %15, %struct.net** %6, align 8
  %16 = load %struct.net*, %struct.net** %6, align 8
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %7, align 8
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %21 = load i32, i32* @IPPROTO_ICMPV6, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* @IPV6_TLV_ROUTERALERT, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 2, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* @IPV6_TLV_PADN, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i64 @LL_ALLOCATED_SPACE(%struct.net_device* %34)
  %36 = add nsw i64 %33, %35
  %37 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %31, i64 %36, i32 1, i32* %12)
  store %struct.sk_buff* %37, %struct.sk_buff** %8, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %88

41:                                               ; preds = %2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %43)
  %45 = call i32 @skb_reserve(%struct.sk_buff* %42, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %48 = call i64 @ipv6_get_lladdr(%struct.net_device* %46, %struct.in6_addr* %10, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store %struct.in6_addr* @in6addr_any, %struct.in6_addr** %11, align 8
  br label %52

51:                                               ; preds = %41
  store %struct.in6_addr* %10, %struct.in6_addr** %11, align 8
  br label %52

52:                                               ; preds = %51, %50
  %53 = load %struct.sock*, %struct.sock** %7, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %57 = load i32, i32* @NEXTHDR_HOP, align 4
  %58 = call i32 @ip6_nd_hdr(%struct.sock* %53, %struct.sk_buff* %54, %struct.net_device* %55, %struct.in6_addr* %56, i32* @mld2_all_mcr, i32 %57, i32 0)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call i32 @skb_put(%struct.sk_buff* %59, i32 32)
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %62 = call i32 @memcpy(i32 %60, i32* %61, i32 32)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = call i64 @skb_tail_pointer(%struct.sk_buff* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = call i32 @skb_set_transport_header(%struct.sk_buff* %63, i64 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call i32 @skb_put(%struct.sk_buff* %71, i32 40)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i64 @skb_transport_header(%struct.sk_buff* %73)
  %75 = inttoptr i64 %74 to %struct.mld2_report*
  store %struct.mld2_report* %75, %struct.mld2_report** %9, align 8
  %76 = load i32, i32* @ICMPV6_MLD2_REPORT, align 4
  %77 = load %struct.mld2_report*, %struct.mld2_report** %9, align 8
  %78 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.mld2_report*, %struct.mld2_report** %9, align 8
  %80 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.mld2_report*, %struct.mld2_report** %9, align 8
  %82 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.mld2_report*, %struct.mld2_report** %9, align 8
  %84 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.mld2_report*, %struct.mld2_report** %9, align 8
  %86 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %87, %struct.sk_buff** %3, align 8
  br label %88

88:                                               ; preds = %52, %40
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %89
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i64 @LL_ALLOCATED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i64 @ipv6_get_lladdr(%struct.net_device*, %struct.in6_addr*, i32) #1

declare dso_local i32 @ip6_nd_hdr(%struct.sock*, %struct.sk_buff*, %struct.net_device*, %struct.in6_addr*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
