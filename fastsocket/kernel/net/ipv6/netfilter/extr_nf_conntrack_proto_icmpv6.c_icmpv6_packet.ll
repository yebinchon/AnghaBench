; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_conntrack_proto_icmpv6.c_icmpv6_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_conntrack_proto_icmpv6.c_icmpv6_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.sk_buff = type { i32 }

@nf_ct_icmpv6_timeout = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.sk_buff*, i32, i32, i32, i32)* @icmpv6_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmpv6_packet(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = load i32, i32* @nf_ct_icmpv6_timeout, align 4
  %17 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %13, i32 %14, %struct.sk_buff* %15, i32 %16)
  %18 = load i32, i32* @NF_ACCEPT, align 4
  ret i32 %18
}

declare dso_local i32 @nf_ct_refresh_acct(%struct.nf_conn*, i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
