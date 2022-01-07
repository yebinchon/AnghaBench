; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_rx_packet_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_rx_packet_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_sock = type { i32 }
%struct.ccid2_hc_rx_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @ccid2_hc_rx_packet_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_hc_rx_packet_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.ccid2_hc_rx_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %7)
  store %struct.dccp_sock* %8, %struct.dccp_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.ccid2_hc_rx_sock* @ccid2_hc_rx_sk(%struct.sock* %9)
  store %struct.ccid2_hc_rx_sock* %10, %struct.ccid2_hc_rx_sock** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %33 [
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %2, %2
  %16 = load %struct.ccid2_hc_rx_sock*, %struct.ccid2_hc_rx_sock** %6, align 8
  %17 = getelementptr inbounds %struct.ccid2_hc_rx_sock, %struct.ccid2_hc_rx_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ccid2_hc_rx_sock*, %struct.ccid2_hc_rx_sock** %6, align 8
  %21 = getelementptr inbounds %struct.ccid2_hc_rx_sock, %struct.ccid2_hc_rx_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %24 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 @dccp_send_ack(%struct.sock* %28)
  %30 = load %struct.ccid2_hc_rx_sock*, %struct.ccid2_hc_rx_sock** %6, align 8
  %31 = getelementptr inbounds %struct.ccid2_hc_rx_sock, %struct.ccid2_hc_rx_sock* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %15
  br label %33

33:                                               ; preds = %2, %32
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.ccid2_hc_rx_sock* @ccid2_hc_rx_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_send_ack(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
