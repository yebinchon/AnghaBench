; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_dequeue_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_dequeue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { {}*, %struct.TYPE_2__, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @dequeue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dequeue_skb(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %6, i32 0, i32 2
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i64 @unlikely(%struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %14 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %13)
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %16)
  %18 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %15, i32 %17)
  store %struct.netdev_queue* %18, %struct.netdev_queue** %5, align 8
  %19 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %20 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %12
  %23 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %24 = call i32 @netif_tx_queue_frozen(%struct.netdev_queue* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %28 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %27, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %28, align 8
  %29 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %30 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8
  br label %35

34:                                               ; preds = %22, %12
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %35

35:                                               ; preds = %34, %26
  br label %43

36:                                               ; preds = %1
  %37 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %38 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to %struct.sk_buff* (%struct.Qdisc*)**
  %40 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %39, align 8
  %41 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %42 = call %struct.sk_buff* %40(%struct.Qdisc* %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %3, align 8
  br label %43

43:                                               ; preds = %36, %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %44
}

declare dso_local i64 @unlikely(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_queue_frozen(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
