; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_init_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_init_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32 }
%struct.inet_connection_sock = type { i32, i32*, i32*, i8* }
%struct.tcp_sock = type { i32, i32, i32*, i32, i32, i32, i8*, i32, i32 }

@TCP_TIMEOUT_INIT = common dso_local global i8* null, align 8
@TCP_INFINITE_SSTHRESH = common dso_local global i32 0, align 4
@sysctl_tcp_reordering = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@ipv6_specific = common dso_local global i32 0, align 4
@tcp_init_congestion_ops = common dso_local global i32 0, align 4
@tcp_sync_mss = common dso_local global i32 0, align 4
@sk_stream_write_space = common dso_local global i32 0, align 4
@SOCK_USE_WRITE_QUEUE = common dso_local global i32 0, align 4
@sysctl_tcp_wmem = common dso_local global i32* null, align 8
@sysctl_tcp_rmem = common dso_local global i32* null, align 8
@tcp_sockets_allocated = common dso_local global i32 0, align 4
@tcp_sock_ipv6_specific = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_v6_init_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v6_init_sock(%struct.sock* %0) #0 {
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
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 0
  store i32 2, i32* %26, align 8
  %27 = load i32, i32* @TCP_INFINITE_SSTHRESH, align 4
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 4
  store i32 -1, i32* %31, align 4
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 1
  store i32 536, i32* %33, align 4
  %34 = load i32, i32* @sysctl_tcp_reordering, align 4
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @TCP_CLOSE, align 4
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %41 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %40, i32 0, i32 2
  store i32* @ipv6_specific, i32** %41, align 8
  %42 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %43 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %42, i32 0, i32 1
  store i32* @tcp_init_congestion_ops, i32** %43, align 8
  %44 = load i32, i32* @tcp_sync_mss, align 4
  %45 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %46 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @sk_stream_write_space, align 4
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = load i32, i32* @SOCK_USE_WRITE_QUEUE, align 4
  %52 = call i32 @sock_set_flag(%struct.sock* %50, i32 %51)
  %53 = load i32*, i32** @sysctl_tcp_wmem, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sock*, %struct.sock** %2, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** @sysctl_tcp_rmem, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sock*, %struct.sock** %2, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = call i32 (...) @local_bh_disable()
  %64 = call i32 @percpu_counter_inc(i32* @tcp_sockets_allocated)
  %65 = call i32 (...) @local_bh_enable()
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
