; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_destroy_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_destroy_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.cbq_class = type { i32, i32, i32, i32, i32, i32 }
%struct.cbq_sched_data = type { %struct.cbq_class }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.cbq_class*)* @cbq_destroy_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_destroy_class(%struct.Qdisc* %0, %struct.cbq_class* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.cbq_class*, align 8
  %5 = alloca %struct.cbq_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.cbq_class* %1, %struct.cbq_class** %4, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %7 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.cbq_sched_data* %7, %struct.cbq_sched_data** %5, align 8
  %8 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %9 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %13 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %12, i32 0, i32 4
  %14 = call i32 @tcf_destroy_chain(i32* %13)
  %15 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %16 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @qdisc_destroy(i32 %17)
  %19 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %20 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @qdisc_put_rtab(i32 %21)
  %23 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %24 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %23, i32 0, i32 1
  %25 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %26 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %25, i32 0, i32 0
  %27 = call i32 @gen_kill_estimator(i32* %24, i32* %26)
  %28 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %29 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %30 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %29, i32 0, i32 0
  %31 = icmp ne %struct.cbq_class* %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %34 = call i32 @kfree(%struct.cbq_class* %33)
  br label %35

35:                                               ; preds = %32, %2
  ret void
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tcf_destroy_chain(i32*) #1

declare dso_local i32 @qdisc_destroy(i32) #1

declare dso_local i32 @qdisc_put_rtab(i32) #1

declare dso_local i32 @gen_kill_estimator(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.cbq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
