; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_destroy_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_destroy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32*, i32 }
%struct.tcp_sock = type { %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@tcp_sockets_allocated = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_v4_destroy_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %4)
  store %struct.tcp_sock* %5, %struct.tcp_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @tcp_clear_xmit_timers(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @tcp_cleanup_congestion_control(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @tcp_write_queue_purge(%struct.sock* %10)
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 2
  %14 = call i32 @__skb_queue_purge(i32* %13)
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @__skb_queue_purge(i32* %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @inet_put_port(%struct.sock* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @__free_page(i32* %35)
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = call i32 @percpu_counter_dec(i32* @tcp_sockets_allocated)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_clear_xmit_timers(%struct.sock*) #1

declare dso_local i32 @tcp_cleanup_congestion_control(%struct.sock*) #1

declare dso_local i32 @tcp_write_queue_purge(%struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_put_port(%struct.sock*) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @percpu_counter_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
