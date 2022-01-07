; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_graft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.net_device = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)* @mq_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.Qdisc**, align 8
  %9 = alloca %struct.netdev_queue*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %7, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %8, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.netdev_queue* @mq_queue_get(%struct.Qdisc* %11, i64 %12)
  store %struct.netdev_queue* %13, %struct.netdev_queue** %9, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %15 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %14)
  store %struct.net_device* %15, %struct.net_device** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %10, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_UP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.net_device*, %struct.net_device** %10, align 8
  %24 = call i32 @dev_deactivate(%struct.net_device* %23)
  br label %25

25:                                               ; preds = %22, %4
  %26 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %27 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %28 = call %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue* %26, %struct.Qdisc* %27)
  %29 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  store %struct.Qdisc* %28, %struct.Qdisc** %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %10, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_UP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.net_device*, %struct.net_device** %10, align 8
  %38 = call i32 @dev_activate(%struct.net_device* %37)
  br label %39

39:                                               ; preds = %36, %25
  ret i32 0
}

declare dso_local %struct.netdev_queue* @mq_queue_get(%struct.Qdisc*, i64) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @dev_deactivate(%struct.net_device*) #1

declare dso_local %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue*, %struct.Qdisc*) #1

declare dso_local i32 @dev_activate(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
