; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.netdev_queue = type { %struct.Qdisc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @mq_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call %struct.netdev_queue* @mq_queue_get(%struct.Qdisc* %9, i64 %10)
  store %struct.netdev_queue* %11, %struct.netdev_queue** %8, align 8
  %12 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %13 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %12, i32 0, i32 0
  %14 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  store %struct.Qdisc* %14, %struct.Qdisc** %5, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %16 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %20 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %24 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %23, i32 0, i32 1
  %25 = call i64 @gnet_stats_copy_basic(%struct.gnet_dump* %22, i32* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %29 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %30 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %29, i32 0, i32 0
  %31 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %28, %struct.TYPE_4__* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %3
  store i32 -1, i32* %4, align 4
  br label %35

34:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.netdev_queue* @mq_queue_get(%struct.Qdisc*, i64) #1

declare dso_local i64 @gnet_stats_copy_basic(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
