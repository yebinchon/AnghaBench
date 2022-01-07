; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_dev_deactivate_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_dev_deactivate_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_queue = type { %struct.Qdisc* }
%struct.Qdisc = type { i32, i32 }

@TCQ_F_BUILTIN = common dso_local global i32 0, align 4
@__QDISC_STATE_DEACTIVATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.netdev_queue*, i8*)* @dev_deactivate_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_deactivate_queue(%struct.net_device* %0, %struct.netdev_queue* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.Qdisc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_queue* %1, %struct.netdev_queue** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.Qdisc*
  store %struct.Qdisc* %10, %struct.Qdisc** %7, align 8
  %11 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %12 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %11, i32 0, i32 0
  %13 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  store %struct.Qdisc* %13, %struct.Qdisc** %8, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %15 = icmp ne %struct.Qdisc* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %18 = call i32 @qdisc_lock(%struct.Qdisc* %17)
  %19 = call i32 @spin_lock_bh(i32 %18)
  %20 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %21 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TCQ_F_BUILTIN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @__QDISC_STATE_DEACTIVATED, align 4
  %28 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %29 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %28, i32 0, i32 1
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %26, %16
  %32 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %33 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %32, i32 0, i32 0
  %34 = load %struct.Qdisc*, %struct.Qdisc** %33, align 8
  %35 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %36 = call i32 @rcu_assign_pointer(%struct.Qdisc* %34, %struct.Qdisc* %35)
  %37 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %38 = call i32 @qdisc_reset(%struct.Qdisc* %37)
  %39 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %40 = call i32 @qdisc_lock(%struct.Qdisc* %39)
  %41 = call i32 @spin_unlock_bh(i32 %40)
  br label %42

42:                                               ; preds = %31, %3
  ret void
}

declare dso_local i32 @spin_lock_bh(i32) #1

declare dso_local i32 @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.Qdisc*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_reset(%struct.Qdisc*) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
