; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_check_sack_reneging.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_check_sack_reneging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32, i32 }

@FLAG_SACK_RENEGING = common dso_local global i32 0, align 4
@LINUX_MIB_TCPSACKRENEGING = common dso_local global i32 0, align 4
@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @tcp_check_sack_reneging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_check_sack_reneging(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @FLAG_SACK_RENEGING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %12)
  store %struct.inet_connection_sock* %13, %struct.inet_connection_sock** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @sock_net(%struct.sock* %14)
  %16 = load i32, i32* @LINUX_MIB_TCPSACKRENEGING, align 4
  %17 = call i32 @NET_INC_STATS_BH(i32 %15, i32 %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call i32 @tcp_enter_loss(%struct.sock* %18, i32 1)
  %20 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @tcp_write_queue_head(%struct.sock* %25)
  %27 = call i32 @tcp_retransmit_skb(%struct.sock* %24, i32 %26)
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %30 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %31 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TCP_RTO_MAX, align 4
  %34 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %28, i32 %29, i32 %32, i32 %33)
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_enter_loss(%struct.sock*, i32) #1

declare dso_local i32 @tcp_retransmit_skb(%struct.sock*, i32) #1

declare dso_local i32 @tcp_write_queue_head(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
