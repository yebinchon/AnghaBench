; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_pkt_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_pkt_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPSTATS_MIB_INADDRERRORS = common dso_local global i32 0, align 4
@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32)* @ip6_pkt_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_pkt_drop(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %9)
  store %struct.dst_entry* %10, %struct.dst_entry** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %39 [
    i32 129, label %12
    i32 128, label %30
  ]

12:                                               ; preds = %3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @ipv6_addr_type(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %22 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_net(i32 %23)
  %25 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %26 = call i32 @ip6_dst_idev(%struct.dst_entry* %25)
  %27 = load i32, i32* @IPSTATS_MIB_INADDRERRORS, align 4
  %28 = call i32 @IP6_INC_STATS(i32 %24, i32 %26, i32 %27)
  br label %39

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %3, %29
  %31 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %32 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_net(i32 %33)
  %35 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %36 = call i32 @ip6_dst_idev(%struct.dst_entry* %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @IP6_INC_STATS(i32 %34, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %3, %30, %20
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* @ICMPV6_DEST_UNREACH, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @icmpv6_send(%struct.sk_buff* %40, i32 %41, i32 %42, i32 0, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @kfree_skb(%struct.sk_buff* %47)
  ret i32 0
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS(i32, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
