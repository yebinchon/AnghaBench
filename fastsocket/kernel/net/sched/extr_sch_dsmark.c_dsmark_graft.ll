; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_graft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dsmark_qdisc_data = type { %struct.Qdisc* }

@.str = private unnamed_addr constant [47 x i8] c"dsmark_graft(sch %p,[qdisc %p],new %p,old %p)\0A\00", align 1
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)* @dsmark_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsmark_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.Qdisc**, align 8
  %9 = alloca %struct.dsmark_qdisc_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %7, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %8, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.dsmark_qdisc_data* %11, %struct.dsmark_qdisc_data** %9, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %9, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %15 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %12, %struct.dsmark_qdisc_data* %13, %struct.Qdisc* %14, %struct.Qdisc** %15)
  %17 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %18 = icmp eq %struct.Qdisc* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %21 = call i32 @qdisc_dev(%struct.Qdisc* %20)
  %22 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.Qdisc* @qdisc_create_dflt(i32 %21, i32 %24, i32* @pfifo_qdisc_ops, i32 %27)
  store %struct.Qdisc* %28, %struct.Qdisc** %7, align 8
  %29 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %30 = icmp eq %struct.Qdisc* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %7, align 8
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %35 = call i32 @sch_tree_lock(%struct.Qdisc* %34)
  %36 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %9, align 8
  %37 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %36, i32 0, i32 0
  %38 = load %struct.Qdisc*, %struct.Qdisc** %37, align 8
  %39 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  store %struct.Qdisc* %38, %struct.Qdisc** %39, align 8
  %40 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %41 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %9, align 8
  %42 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %41, i32 0, i32 0
  store %struct.Qdisc* %40, %struct.Qdisc** %42, align 8
  %43 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  %44 = load %struct.Qdisc*, %struct.Qdisc** %43, align 8
  %45 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  %46 = load %struct.Qdisc*, %struct.Qdisc** %45, align 8
  %47 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %44, i32 %49)
  %51 = load %struct.Qdisc**, %struct.Qdisc*** %8, align 8
  %52 = load %struct.Qdisc*, %struct.Qdisc** %51, align 8
  %53 = call i32 @qdisc_reset(%struct.Qdisc* %52)
  %54 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %55 = call i32 @sch_tree_unlock(%struct.Qdisc* %54)
  ret i32 0
}

declare dso_local %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.dsmark_qdisc_data*, %struct.Qdisc*, %struct.Qdisc**) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

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
