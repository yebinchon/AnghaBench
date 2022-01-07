; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mip6.c_mip6_rthdr_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mip6.c_mip6_rthdr_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.rt2_hdr = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@IPPROTO_ROUTING = common dso_local global i32 0, align 4
@IPV6_SRCRT_TYPE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @mip6_rthdr_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip6_rthdr_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca %struct.rt2_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @skb_network_offset(%struct.sk_buff* %9)
  %11 = sub nsw i32 0, %10
  %12 = call i32 @skb_push(%struct.sk_buff* %8, i32 %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %13)
  store %struct.ipv6hdr* %14, %struct.ipv6hdr** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32* @skb_mac_header(%struct.sk_buff* %15)
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @IPPROTO_ROUTING, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32* @skb_mac_header(%struct.sk_buff* %19)
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_transport_header(%struct.sk_buff* %21)
  %23 = inttoptr i64 %22 to %struct.rt2_hdr*
  store %struct.rt2_hdr* %23, %struct.rt2_hdr** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.rt2_hdr*, %struct.rt2_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.rt2_hdr, %struct.rt2_hdr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 3
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.rt2_hdr*, %struct.rt2_hdr** %6, align 8
  %35 = getelementptr inbounds %struct.rt2_hdr, %struct.rt2_hdr* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @IPV6_SRCRT_TYPE_2, align 4
  %38 = load %struct.rt2_hdr*, %struct.rt2_hdr** %6, align 8
  %39 = getelementptr inbounds %struct.rt2_hdr, %struct.rt2_hdr* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.rt2_hdr*, %struct.rt2_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.rt2_hdr, %struct.rt2_hdr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.rt2_hdr*, %struct.rt2_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.rt2_hdr, %struct.rt2_hdr* %44, i32 0, i32 2
  %46 = call i32 @memset(i32* %45, i32 0, i32 4)
  %47 = load %struct.rt2_hdr*, %struct.rt2_hdr** %6, align 8
  %48 = getelementptr inbounds %struct.rt2_hdr, %struct.rt2_hdr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 2
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = load %struct.rt2_hdr*, %struct.rt2_hdr** %6, align 8
  %55 = getelementptr inbounds %struct.rt2_hdr, %struct.rt2_hdr* %54, i32 0, i32 0
  %56 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %57 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %56, i32 0, i32 0
  %58 = call i32 @memcpy(i32* %55, i32* %57, i32 4)
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %63 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %62, i32 0, i32 0
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %65 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @memcpy(i32* %63, i32* %66, i32 4)
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %69 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_bh(i32* %69)
  ret i32 0
}

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
