; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.qfq_class = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tc_qfq_stats = type { i32, i32 }

@ONE_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @qfq_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.qfq_class*, align 8
  %9 = alloca %struct.tc_qfq_stats, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.qfq_class*
  store %struct.qfq_class* %11, %struct.qfq_class** %8, align 8
  %12 = call i32 @memset(%struct.tc_qfq_stats* %9, i32 0, i32 8)
  %13 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %14 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %20 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* @ONE_FP, align 4
  %25 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %26 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %24, %27
  %29 = getelementptr inbounds %struct.tc_qfq_stats, %struct.tc_qfq_stats* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %31 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.tc_qfq_stats, %struct.tc_qfq_stats* %9, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %35 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %36 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %35, i32 0, i32 3
  %37 = call i64 @gnet_stats_copy_basic(%struct.gnet_dump* %34, i32* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %3
  %40 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %41 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %42 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %41, i32 0, i32 2
  %43 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %40, i32* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %39
  %46 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %47 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %48 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %46, %struct.TYPE_6__* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %39, %3
  store i32 -1, i32* %4, align 4
  br label %57

54:                                               ; preds = %45
  %55 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %56 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %55, %struct.tc_qfq_stats* %9, i32 8)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.tc_qfq_stats*, i32, i32) #1

declare dso_local i64 @gnet_stats_copy_basic(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, %struct.TYPE_6__*) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_qfq_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
