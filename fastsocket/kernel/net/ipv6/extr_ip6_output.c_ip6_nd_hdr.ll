; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_nd_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_nd_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i8* }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.ipv6hdr = type { i32, i32, i32, i32, i8* }

@ETH_P_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_nd_hdr(%struct.sock* %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.in6_addr* %3, %struct.in6_addr* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ipv6_pinfo*, align 8
  %16 = alloca %struct.ipv6hdr*, align 8
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.net_device* %2, %struct.net_device** %10, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %11, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.sock*, %struct.sock** %8, align 8
  %19 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %18)
  store %struct.ipv6_pinfo* %19, %struct.ipv6_pinfo** %15, align 8
  %20 = load i32, i32* @ETH_P_IPV6, align 4
  %21 = call i8* @htons(i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %17, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = call i32 @skb_reset_network_header(%struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = call i32 @skb_put(%struct.sk_buff* %33, i32 24)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %35)
  store %struct.ipv6hdr* %36, %struct.ipv6hdr** %16, align 8
  %37 = call i32 @htonl(i32 1610612736)
  %38 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %39 = bitcast %struct.ipv6hdr* %38 to i32*
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i8* @htons(i32 %40)
  %42 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %43 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %46 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %48 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %51 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 2
  %54 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %55 = call i32 @ipv6_addr_copy(i32* %53, %struct.in6_addr* %54)
  %56 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %57 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %56, i32 0, i32 1
  %58 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %59 = call i32 @ipv6_addr_copy(i32* %57, %struct.in6_addr* %58)
  ret i32 0
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
