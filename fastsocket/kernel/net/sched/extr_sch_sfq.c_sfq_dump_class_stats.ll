; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.sfq_sched_data = type { i64*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gnet_stats_queue = type { i32 }
%struct.tc_sfq_xstats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @sfq_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfq_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.sfq_sched_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gnet_stats_queue, align 4
  %11 = alloca %struct.tc_sfq_xstats, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.sfq_sched_data* %13, %struct.sfq_sched_data** %8, align 8
  %14 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %15 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = getelementptr inbounds %struct.gnet_stats_queue, %struct.gnet_stats_queue* %10, i32 0, i32 0
  %22 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %23 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %21, align 4
  %29 = getelementptr inbounds %struct.tc_sfq_xstats, %struct.tc_sfq_xstats* %11, i32 0, i32 0
  %30 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %31 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %29, align 4
  %36 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %37 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %36, %struct.gnet_stats_queue* %10)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %42 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %41, %struct.tc_sfq_xstats* %11, i32 4)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, %struct.gnet_stats_queue*) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_sfq_xstats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
