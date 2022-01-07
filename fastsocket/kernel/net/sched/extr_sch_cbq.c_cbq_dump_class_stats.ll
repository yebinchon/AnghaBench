; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.cbq_sched_data = type { i64 }
%struct.cbq_class = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PSCHED_PASTPERFECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @cbq_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.cbq_sched_data*, align 8
  %9 = alloca %struct.cbq_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.cbq_sched_data* %11, %struct.cbq_sched_data** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.cbq_class*
  store %struct.cbq_class* %13, %struct.cbq_class** %9, align 8
  %14 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %15 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %14, i32 0, i32 6
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %21 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %24 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %27 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %30 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %33 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %3
  %38 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %39 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %42 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %46 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  br label %48

48:                                               ; preds = %37, %3
  %49 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %50 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %51 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %50, i32 0, i32 4
  %52 = call i64 @gnet_stats_copy_basic(%struct.gnet_dump* %49, i32* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %56 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %57 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %56, i32 0, i32 3
  %58 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %55, i32* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %62 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %63 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %62, i32 0, i32 2
  %64 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %61, %struct.TYPE_7__* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %54, %48
  store i32 -1, i32* %4, align 4
  br label %72

67:                                               ; preds = %60
  %68 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %69 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %70 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %69, i32 0, i32 1
  %71 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %68, %struct.TYPE_8__* %70, i32 16)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %66
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @gnet_stats_copy_basic(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, %struct.TYPE_7__*) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
