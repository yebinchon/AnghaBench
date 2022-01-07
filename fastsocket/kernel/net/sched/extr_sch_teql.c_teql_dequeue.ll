; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.teql_sched_data = type { %struct.TYPE_10__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { %struct.Qdisc*, i32 }
%struct.netdev_queue = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @teql_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @teql_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.teql_sched_data*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = call %struct.teql_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.teql_sched_data* %8, %struct.teql_sched_data** %3, align 8
  %9 = load %struct.teql_sched_data*, %struct.teql_sched_data** %3, align 8
  %10 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %9, i32 0, i32 0
  %11 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_10__* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %5, align 8
  %12 = load %struct.teql_sched_data*, %struct.teql_sched_data** %3, align 8
  %13 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %16, i32 0)
  store %struct.netdev_queue* %17, %struct.netdev_queue** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = icmp eq %struct.sk_buff* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %22 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = call %struct.net_device* @qdisc_dev(%struct.TYPE_9__* %23)
  store %struct.net_device* %24, %struct.net_device** %6, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %29 = load %struct.teql_sched_data*, %struct.teql_sched_data** %3, align 8
  %30 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.Qdisc* %28, %struct.Qdisc** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = call i32 @netif_wake_queue(%struct.net_device* %33)
  br label %35

35:                                               ; preds = %27, %20
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.teql_sched_data*, %struct.teql_sched_data** %3, align 8
  %38 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %42 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %40, %46
  %48 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %49 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %51
}

declare dso_local %struct.teql_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_10__*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.TYPE_9__*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
