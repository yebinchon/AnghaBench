; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_destroy_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_destroy_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qfq_class = type { i32, i32, i32, i32 }
%struct.qfq_sched = type { i32 }

@ONE_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.qfq_class*)* @qfq_destroy_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_destroy_class(%struct.Qdisc* %0, %struct.qfq_class* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qfq_class*, align 8
  %5 = alloca %struct.qfq_sched*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %4, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %7 = call %struct.qfq_sched* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.qfq_sched* %7, %struct.qfq_sched** %5, align 8
  %8 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %9 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* @ONE_FP, align 4
  %14 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %15 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  %18 = load %struct.qfq_sched*, %struct.qfq_sched** %5, align 8
  %19 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %23 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %12, %2
  %25 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %26 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %25, i32 0, i32 3
  %27 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %28 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %27, i32 0, i32 2
  %29 = call i32 @gen_kill_estimator(i32* %26, i32* %28)
  %30 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %31 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @qdisc_destroy(i32 %32)
  %34 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %35 = call i32 @kfree(%struct.qfq_class* %34)
  ret void
}

declare dso_local %struct.qfq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @gen_kill_estimator(i32*, i32*) #1

declare dso_local i32 @qdisc_destroy(i32) #1

declare dso_local i32 @kfree(%struct.qfq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
