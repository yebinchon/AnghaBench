; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_lookup_flow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_lookup_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_flow_data = type { i64, %struct.atm_flow_data* }
%struct.Qdisc = type { i32 }
%struct.atm_qdisc_data = type { %struct.atm_flow_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atm_flow_data* (%struct.Qdisc*, i64)* @lookup_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atm_flow_data* @lookup_flow(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.atm_qdisc_data*, align 8
  %6 = alloca %struct.atm_flow_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.atm_qdisc_data* %8, %struct.atm_qdisc_data** %5, align 8
  %9 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %10 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %9, i32 0, i32 0
  %11 = load %struct.atm_flow_data*, %struct.atm_flow_data** %10, align 8
  store %struct.atm_flow_data* %11, %struct.atm_flow_data** %6, align 8
  br label %12

12:                                               ; preds = %23, %2
  %13 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %14 = icmp ne %struct.atm_flow_data* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %17 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %27

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %25 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %24, i32 0, i32 1
  %26 = load %struct.atm_flow_data*, %struct.atm_flow_data** %25, align 8
  store %struct.atm_flow_data* %26, %struct.atm_flow_data** %6, align 8
  br label %12

27:                                               ; preds = %21, %12
  %28 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  ret %struct.atm_flow_data* %28
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
