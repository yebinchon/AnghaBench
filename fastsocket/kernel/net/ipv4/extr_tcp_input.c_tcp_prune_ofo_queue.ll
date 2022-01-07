; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_prune_ofo_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_prune_ofo_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@LINUX_MIB_OFOPRUNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_prune_ofo_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_prune_ofo_queue(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %7, i32 0, i32 1
  %9 = call i32 @skb_queue_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i32 @sock_net(%struct.sock* %12)
  %14 = load i32, i32* @LINUX_MIB_OFOPRUNED, align 4
  %15 = call i32 @NET_INC_STATS_BH(i32 %13, i32 %14)
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 1
  %18 = call i32 @__skb_queue_purge(i32* %17)
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %11
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 0
  %27 = call i32 @tcp_sack_reset(%struct.TYPE_2__* %26)
  br label %28

28:                                               ; preds = %24, %11
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i32 @sk_mem_reclaim(%struct.sock* %29)
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %1
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @tcp_sack_reset(%struct.TYPE_2__*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
