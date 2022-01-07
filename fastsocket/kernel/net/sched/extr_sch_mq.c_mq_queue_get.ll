; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_queue_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_queue_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_queue = type { i32 }
%struct.Qdisc = type { i32 }
%struct.net_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netdev_queue* (%struct.Qdisc*, i64)* @mq_queue_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netdev_queue* @mq_queue_get(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca %struct.netdev_queue*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sub i64 %10, 1
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.netdev_queue* null, %struct.netdev_queue** %3, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %19, i64 %20)
  store %struct.netdev_queue* %21, %struct.netdev_queue** %3, align 8
  br label %22

22:                                               ; preds = %18, %17
  %23 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  ret %struct.netdev_queue* %23
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
