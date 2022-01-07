; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rps_dev_flow = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netif_rx(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rps_dev_flow, align 4
  %5 = alloca %struct.rps_dev_flow*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.rps_dev_flow* %4, %struct.rps_dev_flow** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i64 @netpoll_rx(%struct.sk_buff* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call i32 @net_timestamp(%struct.sk_buff* %19)
  br label %21

21:                                               ; preds = %18, %12
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i32 @trace_netif_rx(%struct.sk_buff* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call i32 @get_rps_cpu(i32 %26, %struct.sk_buff* %27, %struct.rps_dev_flow** %5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 (...) @smp_processor_id()
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.rps_dev_flow*, %struct.rps_dev_flow** %5, align 8
  %37 = getelementptr inbounds %struct.rps_dev_flow, %struct.rps_dev_flow* %36, i32 0, i32 0
  %38 = call i32 @enqueue_to_backlog(%struct.sk_buff* %34, i32 %35, i32* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @netpoll_rx(%struct.sk_buff*) #1

declare dso_local i32 @net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @trace_netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @get_rps_cpu(i32, %struct.sk_buff*, %struct.rps_dev_flow**) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @enqueue_to_backlog(%struct.sk_buff*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
