; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_graft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)* @mqprio_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqprio_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc**, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.netdev_queue*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %8, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %9, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %12)
  store %struct.net_device* %13, %struct.net_device** %10, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call %struct.netdev_queue* @mqprio_queue_get(%struct.Qdisc* %14, i64 %15)
  store %struct.netdev_queue* %16, %struct.netdev_queue** %11, align 8
  %17 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %18 = icmp ne %struct.netdev_queue* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load %struct.net_device*, %struct.net_device** %10, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_UP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.net_device*, %struct.net_device** %10, align 8
  %31 = call i32 @dev_deactivate(%struct.net_device* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %34 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %35 = call %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue* %33, %struct.Qdisc* %34)
  %36 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %35, %struct.Qdisc** %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %10, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_UP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.net_device*, %struct.net_device** %10, align 8
  %45 = call i32 @dev_activate(%struct.net_device* %44)
  br label %46

46:                                               ; preds = %43, %32
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.netdev_queue* @mqprio_queue_get(%struct.Qdisc*, i64) #1

declare dso_local i32 @dev_deactivate(%struct.net_device*) #1

declare dso_local %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue*, %struct.Qdisc*) #1

declare dso_local i32 @dev_activate(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
