; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip4ip6_dscp_ecn_decapsulate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip4ip6_dscp_ecn_decapsulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.sk_buff = type { i32 }

@INET_ECN_MASK = common dso_local global i32 0, align 4
@IP6_TNL_F_RCV_DSCP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)* @ip4ip6_dscp_ecn_decapsulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip4ip6_dscp_ecn_decapsulate(%struct.ip6_tnl* %0, %struct.ipv6hdr* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ip6_tnl*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %4, align 8
  store %struct.ipv6hdr* %1, %struct.ipv6hdr** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %9 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %8)
  %10 = load i32, i32* @INET_ECN_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %14 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IP6_TNL_F_RCV_DSCP_COPY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @ip_hdr(%struct.sk_buff* %21)
  %23 = load i32, i32* @INET_ECN_MASK, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ipv4_change_dsfield(i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %3
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @INET_ECN_is_ce(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @ip_hdr(%struct.sk_buff* %31)
  %33 = call i32 @IP_ECN_set_ce(i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local i32 @ipv4_change_dsfield(i32, i32, i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @INET_ECN_is_ce(i32) #1

declare dso_local i32 @IP_ECN_set_ce(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
