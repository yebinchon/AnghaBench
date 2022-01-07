; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_tcp_state_transition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_tcp_state_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.tcphdr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_protocol*)* @tcp_state_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_state_transition(%struct.ip_vs_conn* %0, i32 %1, %struct.sk_buff* %2, %struct.ip_vs_protocol* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_vs_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_vs_protocol*, align 8
  %10 = alloca %struct.tcphdr, align 4
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.ip_vs_protocol* %3, %struct.ip_vs_protocol** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = call i32 @ip_hdrlen(%struct.sk_buff* %13)
  store i32 %14, i32* %12, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = load i32, i32* %12, align 4
  %17 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %15, i32 %16, i32 4, %struct.tcphdr* %10)
  store %struct.tcphdr* %17, %struct.tcphdr** %11, align 8
  %18 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %19 = icmp eq %struct.tcphdr* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

21:                                               ; preds = %4
  %22 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %23 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %26 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %29 = call i32 @set_tcp_state(%struct.ip_vs_protocol* %25, %struct.ip_vs_conn* %26, i32 %27, %struct.tcphdr* %28)
  %30 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %31 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %21, %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_tcp_state(%struct.ip_vs_protocol*, %struct.ip_vs_conn*, i32, %struct.tcphdr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
