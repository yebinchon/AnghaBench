; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_ack_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_ack_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.inet_connection_sock = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ICSK_TIME_PROBE0 = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_ack_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_ack_probe(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call i32 @tcp_send_head(%struct.sock* %9)
  %11 = call %struct.TYPE_2__* @TCP_SKB_CB(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %15 = call i32 @tcp_wnd_end(%struct.tcp_sock* %14)
  %16 = call i32 @after(i32 %13, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %20 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = load i32, i32* @ICSK_TIME_PROBE0, align 4
  %23 = call i32 @inet_csk_clear_xmit_timer(%struct.sock* %21, i32 %22)
  br label %38

24:                                               ; preds = %1
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = load i32, i32* @ICSK_TIME_PROBE0, align 4
  %27 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %28 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %31 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  %34 = load i32, i32* @TCP_RTO_MAX, align 4
  %35 = call i32 @min(i32 %33, i32 %34)
  %36 = load i32, i32* @TCP_RTO_MAX, align 4
  %37 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %25, i32 %26, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %24, %18
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @after(i32, i32) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(i32) #1

declare dso_local i32 @tcp_send_head(%struct.sock*) #1

declare dso_local i32 @tcp_wnd_end(%struct.tcp_sock*) #1

declare dso_local i32 @inet_csk_clear_xmit_timer(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
