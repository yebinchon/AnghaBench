; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_destroy_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_destroy_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.hfsc_class = type { i32, i32, i32, i32 }
%struct.hfsc_sched = type { %struct.hfsc_class }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.hfsc_class*)* @hfsc_destroy_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfsc_destroy_class(%struct.Qdisc* %0, %struct.hfsc_class* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.hfsc_class*, align 8
  %5 = alloca %struct.hfsc_sched*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.hfsc_class* %1, %struct.hfsc_class** %4, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %7 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.hfsc_sched* %7, %struct.hfsc_sched** %5, align 8
  %8 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %9 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %8, i32 0, i32 3
  %10 = call i32 @tcf_destroy_chain(i32* %9)
  %11 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %12 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @qdisc_destroy(i32 %13)
  %15 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %16 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %15, i32 0, i32 1
  %17 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %18 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %17, i32 0, i32 0
  %19 = call i32 @gen_kill_estimator(i32* %16, i32* %18)
  %20 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %21 = load %struct.hfsc_sched*, %struct.hfsc_sched** %5, align 8
  %22 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %21, i32 0, i32 0
  %23 = icmp ne %struct.hfsc_class* %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %26 = call i32 @kfree(%struct.hfsc_class* %25)
  br label %27

27:                                               ; preds = %24, %2
  ret void
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @tcf_destroy_chain(i32*) #1

declare dso_local i32 @qdisc_destroy(i32) #1

declare dso_local i32 @gen_kill_estimator(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.hfsc_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
