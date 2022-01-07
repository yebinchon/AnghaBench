; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.atm_flow_data = type { %struct.Qdisc* }

@.str = private unnamed_addr constant [29 x i8] c"atm_tc_leaf(sch %p,flow %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Qdisc* (%struct.Qdisc*, i64)* @atm_tc_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Qdisc* @atm_tc_leaf(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.atm_flow_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = inttoptr i64 %6 to %struct.atm_flow_data*
  store %struct.atm_flow_data* %7, %struct.atm_flow_data** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %8, %struct.atm_flow_data* %9)
  %11 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %12 = icmp ne %struct.atm_flow_data* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %15 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %14, i32 0, i32 0
  %16 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi %struct.Qdisc* [ %16, %13 ], [ null, %17 ]
  ret %struct.Qdisc* %19
}

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_flow_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
