; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.drr_class = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.tc_drr_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @drr_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drr_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.drr_class*, align 8
  %9 = alloca %struct.tc_drr_stats, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.drr_class*
  store %struct.drr_class* %11, %struct.drr_class** %8, align 8
  %12 = call i32 @memset(%struct.tc_drr_stats* %9, i32 0, i32 4)
  %13 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %14 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %22 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.tc_drr_stats, %struct.tc_drr_stats* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %26 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %32 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 %30, i64* %35, align 8
  br label %36

36:                                               ; preds = %20, %3
  %37 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %38 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %39 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %38, i32 0, i32 2
  %40 = call i64 @gnet_stats_copy_basic(%struct.gnet_dump* %37, i32* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %36
  %43 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %44 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %45 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %44, i32 0, i32 1
  %46 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %43, i32* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %50 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %51 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %49, %struct.TYPE_6__* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48, %42, %36
  store i32 -1, i32* %4, align 4
  br label %60

57:                                               ; preds = %48
  %58 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %59 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %58, %struct.tc_drr_stats* %9, i32 4)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @memset(%struct.tc_drr_stats*, i32, i32) #1

declare dso_local i64 @gnet_stats_copy_basic(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, %struct.TYPE_6__*) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_drr_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
