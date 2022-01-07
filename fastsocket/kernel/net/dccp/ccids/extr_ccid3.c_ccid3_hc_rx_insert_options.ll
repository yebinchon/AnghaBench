; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_insert_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_insert_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ccid3_hc_rx_sock = type { i32, i32 }

@DCCP_OPEN = common dso_local global i64 0, align 8
@DCCP_PARTOPEN = common dso_local global i64 0, align 8
@TFRC_OPT_LOSS_EVENT_RATE = common dso_local global i32 0, align 4
@TFRC_OPT_RECEIVE_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @ccid3_hc_rx_insert_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid3_hc_rx_insert_options(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ccid3_hc_rx_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DCCP_OPEN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DCCP_PARTOPEN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %50

21:                                               ; preds = %14, %2
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock* %22)
  store %struct.ccid3_hc_rx_sock* %23, %struct.ccid3_hc_rx_sock** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i64 @dccp_packet_without_ack(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %50

28:                                               ; preds = %21
  %29 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %6, align 8
  %30 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @htonl(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %6, align 8
  %34 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @htonl(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @TFRC_OPT_LOSS_EVENT_RATE, align 4
  %40 = call i64 @dccp_insert_option(%struct.sock* %37, %struct.sk_buff* %38, i32 %39, i32* %8, i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %28
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i32, i32* @TFRC_OPT_RECEIVE_RATE, align 4
  %46 = call i64 @dccp_insert_option(%struct.sock* %43, %struct.sk_buff* %44, i32 %45, i32* %7, i32 4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %28
  store i32 -1, i32* %3, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %27, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock*) #1

declare dso_local i64 @dccp_packet_without_ack(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @dccp_insert_option(%struct.sock*, %struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
