; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.prio_sched_data = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @prio_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prio_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.prio_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %5 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %6 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %5)
  store %struct.prio_sched_data* %6, %struct.prio_sched_data** %4, align 8
  %7 = load %struct.prio_sched_data*, %struct.prio_sched_data** %4, align 8
  %8 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %7, i32 0, i32 2
  %9 = call i32 @tcf_destroy_chain(i32* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.prio_sched_data*, %struct.prio_sched_data** %4, align 8
  %13 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.prio_sched_data*, %struct.prio_sched_data** %4, align 8
  %18 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @qdisc_destroy(i32 %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %10

28:                                               ; preds = %10
  ret void
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @tcf_destroy_chain(i32*) #1

declare dso_local i32 @qdisc_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
