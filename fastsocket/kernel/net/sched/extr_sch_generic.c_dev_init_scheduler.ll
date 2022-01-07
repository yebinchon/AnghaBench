; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_dev_init_scheduler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_dev_init_scheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32* }

@noop_qdisc = common dso_local global i32 0, align 4
@dev_watchdog = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_init_scheduler(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = getelementptr inbounds %struct.net_device, %struct.net_device* %3, i32 0, i32 2
  store i32* @noop_qdisc, i32** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32 @netdev_for_each_tx_queue(%struct.net_device* %5, i32 (%struct.net_device*, i32*, i32*)* @dev_init_scheduler_queue, i32* @noop_qdisc)
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = call i32 @dev_init_scheduler_queue(%struct.net_device* %7, i32* %9, i32* @noop_qdisc)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* @dev_watchdog, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = ptrtoint %struct.net_device* %14 to i64
  %16 = call i32 @setup_timer(i32* %12, i32 %13, i64 %15)
  ret void
}

declare dso_local i32 @netdev_for_each_tx_queue(%struct.net_device*, i32 (%struct.net_device*, i32*, i32*)*, i32*) #1

declare dso_local i32 @dev_init_scheduler_queue(%struct.net_device*, i32*, i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
