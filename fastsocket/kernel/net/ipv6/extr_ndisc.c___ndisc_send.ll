; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c___ndisc_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c___ndisc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.neighbour = type { i32 }
%struct.icmp6hdr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.neighbour*, %struct.in6_addr*, %struct.in6_addr*, %struct.icmp6hdr*, %struct.in6_addr*, i32)* @__ndisc_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ndisc_send(%struct.net_device* %0, %struct.neighbour* %1, %struct.in6_addr* %2, %struct.in6_addr* %3, %struct.icmp6hdr* %4, %struct.in6_addr* %5, i32 %6) #0 {
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.neighbour*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.icmp6hdr*, align 8
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store %struct.neighbour* %1, %struct.neighbour** %9, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %10, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %11, align 8
  store %struct.icmp6hdr* %4, %struct.icmp6hdr** %12, align 8
  store %struct.in6_addr* %5, %struct.in6_addr** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %18 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %19 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %20 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %21 = load i32, i32* %14, align 4
  %22 = call %struct.sk_buff* @ndisc_build_skb(%struct.net_device* %16, %struct.in6_addr* %17, %struct.in6_addr* %18, %struct.icmp6hdr* %19, %struct.in6_addr* %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %15, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  br label %34

26:                                               ; preds = %7
  %27 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %30 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %31 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %32 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %33 = call i32 @ndisc_send_skb(%struct.sk_buff* %27, %struct.net_device* %28, %struct.neighbour* %29, %struct.in6_addr* %30, %struct.in6_addr* %31, %struct.icmp6hdr* %32)
  br label %34

34:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.sk_buff* @ndisc_build_skb(%struct.net_device*, %struct.in6_addr*, %struct.in6_addr*, %struct.icmp6hdr*, %struct.in6_addr*, i32) #1

declare dso_local i32 @ndisc_send_skb(%struct.sk_buff*, %struct.net_device*, %struct.neighbour*, %struct.in6_addr*, %struct.in6_addr*, %struct.icmp6hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
