; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_graft_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_graft_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.drr_class = type { %struct.Qdisc*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)* @drr_graft_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drr_graft_class(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.Qdisc**, align 8
  %9 = alloca %struct.drr_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %7, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.drr_class*
  store %struct.drr_class* %11, %struct.drr_class** %9, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %13 = icmp eq %struct.Qdisc* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %16 = call i32 @qdisc_dev(%struct.Qdisc* %15)
  %17 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  %21 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.Qdisc* @qdisc_create_dflt(i32 %16, i32 %19, i32* @pfifo_qdisc_ops, i32 %23)
  store %struct.Qdisc* %24, %struct.Qdisc** %7, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %26 = icmp eq %struct.Qdisc* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %7, align 8
  br label %28

28:                                               ; preds = %27, %14
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %31 = call i32 @sch_tree_lock(%struct.Qdisc* %30)
  %32 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  %33 = call i32 @drr_purge_queue(%struct.drr_class* %32)
  %34 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  %35 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %34, i32 0, i32 0
  %36 = load %struct.Qdisc*, %struct.Qdisc** %35, align 8
  %37 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  store %struct.Qdisc* %36, %struct.Qdisc** %37, align 8
  %38 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %39 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  %40 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %39, i32 0, i32 0
  store %struct.Qdisc* %38, %struct.Qdisc** %40, align 8
  %41 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %42 = call i32 @sch_tree_unlock(%struct.Qdisc* %41)
  ret i32 0
}

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @drr_purge_queue(%struct.drr_class*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
