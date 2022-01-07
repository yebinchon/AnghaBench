; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_dev_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_dev_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32* }

@noop_qdisc = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_activate(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, @noop_qdisc
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @attach_default_qdiscs(%struct.net_device* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_carrier_ok(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %31

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netdev_for_each_tx_queue(%struct.net_device* %17, i32 (%struct.net_device*, i32*, i32*)* @transition_one_qdisc, i32* %3)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = call i32 @transition_one_qdisc(%struct.net_device* %19, i32* %21, i32* null)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @dev_watchdog_up(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %15, %25, %16
  ret void
}

declare dso_local i32 @attach_default_qdiscs(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netdev_for_each_tx_queue(%struct.net_device*, i32 (%struct.net_device*, i32*, i32*)*, i32*) #1

declare dso_local i32 @transition_one_qdisc(%struct.net_device*, i32*, i32*) #1

declare dso_local i32 @dev_watchdog_up(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
