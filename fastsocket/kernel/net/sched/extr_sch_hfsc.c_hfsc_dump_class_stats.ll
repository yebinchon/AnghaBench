; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.hfsc_class = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tc_hfsc_stats = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @hfsc_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.hfsc_class*, align 8
  %9 = alloca %struct.tc_hfsc_stats, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.hfsc_class*
  store %struct.hfsc_class* %11, %struct.hfsc_class** %8, align 8
  %12 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %13 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %12, i32 0, i32 7
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %19 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %22 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.tc_hfsc_stats, %struct.tc_hfsc_stats* %9, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %26 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.tc_hfsc_stats, %struct.tc_hfsc_stats* %9, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %30 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.tc_hfsc_stats, %struct.tc_hfsc_stats* %9, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %34 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.tc_hfsc_stats, %struct.tc_hfsc_stats* %9, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %38 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %39 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %38, i32 0, i32 2
  %40 = call i64 @gnet_stats_copy_basic(%struct.gnet_dump* %37, i32* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %3
  %43 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %44 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %45 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %44, i32 0, i32 1
  %46 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %43, i32* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %50 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %51 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %50, i32 0, i32 0
  %52 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %49, %struct.TYPE_6__* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %42, %3
  store i32 -1, i32* %4, align 4
  br label %58

55:                                               ; preds = %48
  %56 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %57 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %56, %struct.tc_hfsc_stats* %9, i32 16)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %54
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @gnet_stats_copy_basic(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, %struct.TYPE_6__*) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_hfsc_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
