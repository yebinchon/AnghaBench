; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_receive_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_receive_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rps_dev_flow = type { i32 }

@enable_rps_framework = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netif_receive_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rps_dev_flow, align 4
  %4 = alloca %struct.rps_dev_flow*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store %struct.rps_dev_flow* %3, %struct.rps_dev_flow** %4, align 8
  store i32 -1, i32* %5, align 4
  %7 = load i64, i64* @enable_rps_framework, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i32 @netif_rps_process(%struct.sk_buff* %10)
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = call i32 @get_rps_cpu(i32 %18, %struct.sk_buff* %19, %struct.rps_dev_flow** %4)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.rps_dev_flow*, %struct.rps_dev_flow** %4, align 8
  %28 = getelementptr inbounds %struct.rps_dev_flow, %struct.rps_dev_flow* %27, i32 0, i32 0
  %29 = call i32 @enqueue_to_backlog(%struct.sk_buff* %25, i32 %26, i32* %28)
  store i32 %29, i32* %6, align 4
  br label %33

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = call i32 @__netif_receive_skb(%struct.sk_buff* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @netif_rps_process(%struct.sk_buff*) #1

declare dso_local i32 @get_rps_cpu(i32, %struct.sk_buff*, %struct.rps_dev_flow**) #1

declare dso_local i32 @enqueue_to_backlog(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @__netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
