; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c___udp_queue_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c___udp_queue_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@UDP_MIB_RCVBUFERRORS = common dso_local global i32 0, align 4
@UDP_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @__udp_queue_rcv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__udp_queue_rcv_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sock_rps_save_rxhash(%struct.sock* %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @sock_queue_rcv_skb(%struct.sock* %20, %struct.sk_buff* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call i32 @IS_UDPLITE(%struct.sock* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call i32 @sock_net(%struct.sock* %33)
  %35 = load i32, i32* @UDP_MIB_RCVBUFERRORS, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @UDP_INC_STATS_BH(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @sock_net(%struct.sock* %39)
  %41 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @UDP_INC_STATS_BH(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = call i32 @trace_udp_fail_queue_rcv_skb(i32 %46, %struct.sock* %47)
  store i32 -1, i32* %3, align 4
  br label %50

49:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sock_rps_save_rxhash(%struct.sock*, i32) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @UDP_INC_STATS_BH(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @trace_udp_fail_queue_rcv_skb(i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
