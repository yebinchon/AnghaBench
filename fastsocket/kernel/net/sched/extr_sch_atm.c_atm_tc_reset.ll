; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.atm_qdisc_data = type { %struct.atm_flow_data* }
%struct.atm_flow_data = type { i32, %struct.atm_flow_data* }

@.str = private unnamed_addr constant [33 x i8] c"atm_tc_reset(sch %p,[qdisc %p])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @atm_tc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atm_tc_reset(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.atm_qdisc_data*, align 8
  %4 = alloca %struct.atm_flow_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %5 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %6 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %5)
  store %struct.atm_qdisc_data* %6, %struct.atm_qdisc_data** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %3, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %7, %struct.atm_qdisc_data* %8)
  %10 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %3, align 8
  %11 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %10, i32 0, i32 0
  %12 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  store %struct.atm_flow_data* %12, %struct.atm_flow_data** %4, align 8
  br label %13

13:                                               ; preds = %21, %1
  %14 = load %struct.atm_flow_data*, %struct.atm_flow_data** %4, align 8
  %15 = icmp ne %struct.atm_flow_data* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.atm_flow_data*, %struct.atm_flow_data** %4, align 8
  %18 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @qdisc_reset(i32 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load %struct.atm_flow_data*, %struct.atm_flow_data** %4, align 8
  %23 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %22, i32 0, i32 1
  %24 = load %struct.atm_flow_data*, %struct.atm_flow_data** %23, align 8
  store %struct.atm_flow_data* %24, %struct.atm_flow_data** %4, align 8
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_qdisc_data*) #1

declare dso_local i32 @qdisc_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
