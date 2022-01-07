; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_shutdown_scheduler_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_shutdown_scheduler_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_queue = type { %struct.Qdisc*, i32 }
%struct.Qdisc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.netdev_queue*, i8*)* @shutdown_scheduler_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_scheduler_queue(%struct.net_device* %0, %struct.netdev_queue* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.Qdisc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_queue* %1, %struct.netdev_queue** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %10 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %9, i32 0, i32 0
  %11 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  store %struct.Qdisc* %11, %struct.Qdisc** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.Qdisc*
  store %struct.Qdisc* %13, %struct.Qdisc** %8, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %15 = icmp ne %struct.Qdisc* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %18 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %21 = call i32 @rcu_assign_pointer(i32 %19, %struct.Qdisc* %20)
  %22 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %23 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %24 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %23, i32 0, i32 0
  store %struct.Qdisc* %22, %struct.Qdisc** %24, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %26 = call i32 @qdisc_destroy(%struct.Qdisc* %25)
  br label %27

27:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @rcu_assign_pointer(i32, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
