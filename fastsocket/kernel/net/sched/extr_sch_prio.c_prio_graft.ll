; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_graft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.prio_sched_data = type { %struct.Qdisc** }

@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)* @prio_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.Qdisc**, align 8
  %9 = alloca %struct.prio_sched_data*, align 8
  %10 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %7, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %8, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %12 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.prio_sched_data* %12, %struct.prio_sched_data** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = sub i64 %13, 1
  store i64 %14, i64* %10, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %16 = icmp eq %struct.Qdisc* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %7, align 8
  br label %18

18:                                               ; preds = %17, %4
  %19 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %20 = call i32 @sch_tree_lock(%struct.Qdisc* %19)
  %21 = load %struct.prio_sched_data*, %struct.prio_sched_data** %9, align 8
  %22 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %21, i32 0, i32 0
  %23 = load %struct.Qdisc**, %struct.Qdisc*** %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %23, i64 %24
  %26 = load %struct.Qdisc*, %struct.Qdisc** %25, align 8
  %27 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  store %struct.Qdisc* %26, %struct.Qdisc** %27, align 8
  %28 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %29 = load %struct.prio_sched_data*, %struct.prio_sched_data** %9, align 8
  %30 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %29, i32 0, i32 0
  %31 = load %struct.Qdisc**, %struct.Qdisc*** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %31, i64 %32
  store %struct.Qdisc* %28, %struct.Qdisc** %33, align 8
  %34 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  %35 = load %struct.Qdisc*, %struct.Qdisc** %34, align 8
  %36 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  %37 = load %struct.Qdisc*, %struct.Qdisc** %36, align 8
  %38 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %35, i32 %40)
  %42 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  %43 = load %struct.Qdisc*, %struct.Qdisc** %42, align 8
  %44 = call i32 @qdisc_reset(%struct.Qdisc* %43)
  %45 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %46 = call i32 @sch_tree_unlock(%struct.Qdisc* %45)
  ret i32 0
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_decrease_qlen(%struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_reset(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
