; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dsmark_qdisc_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*)* }

@.str = private unnamed_addr constant [33 x i8] c"dsmark_reset(sch %p,[qdisc %p])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @dsmark_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsmark_drop(%struct.Qdisc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.dsmark_qdisc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %7 = call %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.dsmark_qdisc_data* %7, %struct.dsmark_qdisc_data** %4, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %4, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %8, %struct.dsmark_qdisc_data* %9)
  %11 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %4, align 8
  %12 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %16, align 8
  %18 = icmp eq i32 (%struct.TYPE_6__*)* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %4, align 8
  %22 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %26, align 8
  %28 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %4, align 8
  %29 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 %27(%struct.TYPE_6__* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %36 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %20
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.dsmark_qdisc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
