; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.atm_flow_data = type { %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @atm_tc_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_tc_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.atm_flow_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = inttoptr i64 %9 to %struct.atm_flow_data*
  store %struct.atm_flow_data* %10, %struct.atm_flow_data** %8, align 8
  %11 = load %struct.atm_flow_data*, %struct.atm_flow_data** %8, align 8
  %12 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.atm_flow_data*, %struct.atm_flow_data** %8, align 8
  %18 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %21 = load %struct.atm_flow_data*, %struct.atm_flow_data** %8, align 8
  %22 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %21, i32 0, i32 1
  %23 = call i64 @gnet_stats_copy_basic(%struct.gnet_dump* %20, i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %27 = load %struct.atm_flow_data*, %struct.atm_flow_data** %8, align 8
  %28 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %27, i32 0, i32 0
  %29 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %26, %struct.TYPE_6__* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %3
  store i32 -1, i32* %4, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @gnet_stats_copy_basic(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
