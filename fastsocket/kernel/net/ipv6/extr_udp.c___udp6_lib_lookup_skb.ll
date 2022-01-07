; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c___udp6_lib_lookup_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c___udp6_lib_lookup_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.udp_table = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sk_buff*, i32, i32, %struct.udp_table*)* @__udp6_lib_lookup_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @__udp6_lib_lookup_skb(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.udp_table* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.udp_table*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.udp_table* %3, %struct.udp_table** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %12)
  store %struct.ipv6hdr* %13, %struct.ipv6hdr** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.sock* @skb_steal_sock(%struct.sk_buff* %14)
  store %struct.sock* %15, %struct.sock** %10, align 8
  %16 = call i64 @unlikely(%struct.sock* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %19, %struct.sock** %5, align 8
  br label %36

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.TYPE_2__* @skb_dst(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_net(i32 %24)
  %26 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %27 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %30 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @inet6_iif(%struct.sk_buff* %32)
  %34 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %35 = call %struct.sock* @__udp6_lib_lookup(i32 %25, i32* %27, i32 %28, i32* %30, i32 %31, i32 %33, %struct.udp_table* %34)
  store %struct.sock* %35, %struct.sock** %5, align 8
  br label %36

36:                                               ; preds = %20, %18
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %37
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(%struct.sock*) #1

declare dso_local %struct.sock* @skb_steal_sock(%struct.sk_buff*) #1

declare dso_local %struct.sock* @__udp6_lib_lookup(i32, i32*, i32, i32*, i32, i32, %struct.udp_table*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.TYPE_2__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
