; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_resolve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32* }
%struct.netdev_queue = type { i32* }
%struct.TYPE_2__ = type { i32* }

@noop_qdisc = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sk_buff*, %struct.net_device*)* @teql_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teql_resolve(%struct.sk_buff* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %7, align 8
  %10 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %9, i32 0)
  store %struct.netdev_queue* %10, %struct.netdev_queue** %8, align 8
  %11 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %12 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, @noop_qdisc
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.TYPE_2__* @skb_dst(%struct.sk_buff* %24)
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call %struct.TYPE_2__* @skb_dst(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %23, %18
  store i32 0, i32* %4, align 4
  br label %39

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @__teql_resolve(%struct.sk_buff* %35, %struct.sk_buff* %36, %struct.net_device* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %33, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.TYPE_2__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @__teql_resolve(%struct.sk_buff*, %struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
