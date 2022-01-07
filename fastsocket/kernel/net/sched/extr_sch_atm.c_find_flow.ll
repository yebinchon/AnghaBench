; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_find_flow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_find_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_qdisc_data = type { %struct.atm_flow_data* }
%struct.atm_flow_data = type { %struct.atm_flow_data* }

@.str = private unnamed_addr constant [29 x i8] c"find_flow(qdisc %p,flow %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"find_flow: not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_qdisc_data*, %struct.atm_flow_data*)* @find_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_flow(%struct.atm_qdisc_data* %0, %struct.atm_flow_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_qdisc_data*, align 8
  %5 = alloca %struct.atm_flow_data*, align 8
  %6 = alloca %struct.atm_flow_data*, align 8
  store %struct.atm_qdisc_data* %0, %struct.atm_qdisc_data** %4, align 8
  store %struct.atm_flow_data* %1, %struct.atm_flow_data** %5, align 8
  %7 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %4, align 8
  %8 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %9 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.atm_qdisc_data* %7, %struct.atm_flow_data* %8)
  %10 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %4, align 8
  %11 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %10, i32 0, i32 0
  %12 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  store %struct.atm_flow_data* %12, %struct.atm_flow_data** %6, align 8
  br label %13

13:                                               ; preds = %22, %2
  %14 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %15 = icmp ne %struct.atm_flow_data* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %18 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %19 = icmp eq %struct.atm_flow_data* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %28

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %24 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %23, i32 0, i32 0
  %25 = load %struct.atm_flow_data*, %struct.atm_flow_data** %24, align 8
  store %struct.atm_flow_data* %25, %struct.atm_flow_data** %6, align 8
  br label %13

26:                                               ; preds = %13
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
