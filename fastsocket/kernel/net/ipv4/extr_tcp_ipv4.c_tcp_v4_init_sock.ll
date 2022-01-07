; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_init_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_init_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32 }
%struct.inet_connection_sock = type { i32, i32*, i32*, i8* }
%struct.tcp_sock = type { i32, i32*, i32, i32, i32, i32, i8*, i32, i32 }

@TCP_TIMEOUT_INIT = common dso_local global i8* null, align 8
@TCP_INIT_CWND = common dso_local global i32 0, align 4
@TCP_INFINITE_SSTHRESH = common dso_local global i32 0, align 4
@sysctl_tcp_reordering = common dso_local global i32 0, align 4
@tcp_init_congestion_ops = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@sk_stream_write_space = common dso_local global i32 0, align 4
@SOCK_USE_WRITE_QUEUE = common dso_local global i32 0, align 4
@ipv4_specific = common dso_local global i32 0, align 4
@tcp_sync_mss = common dso_local global i32 0, align 4
@sysctl_tcp_wmem = common dso_local global i32* null, align 8
@sysctl_tcp_rmem = common dso_local global i32* null, align 8
@tcp_sockets_allocated = common dso_local global i32 0, align 4
@tcp_sock_ipv4_specific = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_v4_init_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v4_init_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %5)
  store %struct.inet_connection_sock* %6, %struct.inet_connection_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %4, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 8
  %11 = call i32 @skb_queue_head_init(i32* %10)
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i32 @tcp_init_xmit_timers(%struct.sock* %12)
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %15 = call i32 @tcp_prequeue_init(%struct.tcp_sock* %14)
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 7
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load i8*, i8** @TCP_TIMEOUT_INIT, align 8
  %20 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @TCP_TIMEOUT_INIT, align 8
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @TCP_INIT_CWND, align 4
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @TCP_INFINITE_SSTHRESH, align 4
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %32 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %31, i32 0, i32 3
  store i32 -1, i32* %32, align 4
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 0
  store i32 536, i32* %34, align 8
  %35 = load i32, i32* @sysctl_tcp_reordering, align 4
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %39 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %38, i32 0, i32 2
  store i32* @tcp_init_congestion_ops, i32** %39, align 8
  %40 = load i32, i32* @TCP_CLOSE, align 4
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @sk_stream_write_space, align 4
  %44 = load %struct.sock*, %struct.sock** %2, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = load i32, i32* @SOCK_USE_WRITE_QUEUE, align 4
  %48 = call i32 @sock_set_flag(%struct.sock* %46, i32 %47)
  %49 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %50 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %49, i32 0, i32 1
  store i32* @ipv4_specific, i32** %50, align 8
  %51 = load i32, i32* @tcp_sync_mss, align 4
  %52 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %53 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** @sysctl_tcp_wmem, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sock*, %struct.sock** %2, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** @sysctl_tcp_rmem, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = call i32 (...) @local_bh_disable()
  %65 = call i32 @percpu_counter_inc(i32* @tcp_sockets_allocated)
  %66 = call i32 (...) @local_bh_enable()
  ret i32 0
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tcp_init_xmit_timers(%struct.sock*) #1

declare dso_local i32 @tcp_prequeue_init(%struct.tcp_sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
