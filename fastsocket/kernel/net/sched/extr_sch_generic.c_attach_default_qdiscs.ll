; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_attach_default_qdiscs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_attach_default_qdiscs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.Qdisc* }
%struct.Qdisc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.Qdisc*)* }
%struct.netdev_queue = type { %struct.Qdisc* }

@attach_one_default_qdisc = common dso_local global i32 0, align 4
@mq_qdisc_ops = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @attach_default_qdiscs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_default_qdiscs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_queue*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %5, i32 0)
  store %struct.netdev_queue* %6, %struct.netdev_queue** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_is_multiqueue(%struct.net_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10, %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load i32, i32* @attach_one_default_qdisc, align 4
  %18 = call i32 @netdev_for_each_tx_queue(%struct.net_device* %16, i32 %17, i32* null)
  %19 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %20 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %19, i32 0, i32 0
  %21 = load %struct.Qdisc*, %struct.Qdisc** %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  store %struct.Qdisc* %21, %struct.Qdisc** %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load %struct.Qdisc*, %struct.Qdisc** %25, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 1
  %28 = call i32 @atomic_inc(i32* %27)
  br label %48

29:                                               ; preds = %10
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %32 = load i32, i32* @TC_H_ROOT, align 4
  %33 = call %struct.Qdisc* @qdisc_create_dflt(%struct.net_device* %30, %struct.netdev_queue* %31, i32* @mq_qdisc_ops, i32 %32)
  store %struct.Qdisc* %33, %struct.Qdisc** %4, align 8
  %34 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %35 = icmp ne %struct.Qdisc* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %38 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %40, align 8
  %42 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %43 = call i32 %41(%struct.Qdisc* %42)
  %44 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  store %struct.Qdisc* %44, %struct.Qdisc** %46, align 8
  br label %47

47:                                               ; preds = %36, %29
  br label %48

48:                                               ; preds = %47, %15
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netif_is_multiqueue(%struct.net_device*) #1

declare dso_local i32 @netdev_for_each_tx_queue(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(%struct.net_device*, %struct.netdev_queue*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
