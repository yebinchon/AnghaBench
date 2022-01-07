; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_udp.c_udp_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_udp.c_udp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.sk_buff = type { i32 }

@IPS_SEEN_REPLY_BIT = common dso_local global i32 0, align 4
@nf_ct_udp_timeout_stream = common dso_local global i32 0, align 4
@IPS_ASSURED_BIT = common dso_local global i32 0, align 4
@IPCT_STATUS = common dso_local global i32 0, align 4
@nf_ct_udp_timeout = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.sk_buff*, i32, i32, i32, i32)* @udp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_packet(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %13 = load i32, i32* @IPS_SEEN_REPLY_BIT, align 4
  %14 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %15 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %6
  %19 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = load i32, i32* @nf_ct_udp_timeout_stream, align 4
  %23 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %19, i32 %20, %struct.sk_buff* %21, i32 %22)
  %24 = load i32, i32* @IPS_ASSURED_BIT, align 4
  %25 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %26 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %25, i32 0, i32 0
  %27 = call i32 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @IPCT_STATUS, align 4
  %31 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %32 = call i32 @nf_conntrack_event_cache(i32 %30, %struct.nf_conn* %31)
  br label %33

33:                                               ; preds = %29, %18
  br label %40

34:                                               ; preds = %6
  %35 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load i32, i32* @nf_ct_udp_timeout, align 4
  %39 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %35, i32 %36, %struct.sk_buff* %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %33
  %41 = load i32, i32* @NF_ACCEPT, align 4
  ret i32 %41
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nf_ct_refresh_acct(%struct.nf_conn*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
