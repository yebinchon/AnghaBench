; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qdisc_walker = type { i32, i64, i64, i64 (%struct.Qdisc.0*, i64, %struct.qdisc_walker*)* }
%struct.Qdisc.0 = type opaque
%struct.atm_qdisc_data = type { %struct.atm_flow_data* }
%struct.atm_flow_data = type { %struct.atm_flow_data* }

@.str = private unnamed_addr constant [42 x i8] c"atm_tc_walk(sch %p,[qdisc %p],walker %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.qdisc_walker*)* @atm_tc_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atm_tc_walk(%struct.Qdisc* %0, %struct.qdisc_walker* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qdisc_walker*, align 8
  %5 = alloca %struct.atm_qdisc_data*, align 8
  %6 = alloca %struct.atm_flow_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.qdisc_walker* %1, %struct.qdisc_walker** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.atm_qdisc_data* %8, %struct.atm_qdisc_data** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %11 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %9, %struct.atm_qdisc_data* %10, %struct.qdisc_walker* %11)
  %13 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %14 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %20 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %19, i32 0, i32 0
  %21 = load %struct.atm_flow_data*, %struct.atm_flow_data** %20, align 8
  store %struct.atm_flow_data* %21, %struct.atm_flow_data** %6, align 8
  br label %22

22:                                               ; preds = %53, %18
  %23 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %24 = icmp ne %struct.atm_flow_data* %23, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %27 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %30 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %25
  %34 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %35 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %34, i32 0, i32 3
  %36 = load i64 (%struct.Qdisc.0*, i64, %struct.qdisc_walker*)*, i64 (%struct.Qdisc.0*, i64, %struct.qdisc_walker*)** %35, align 8
  %37 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %38 = bitcast %struct.Qdisc* %37 to %struct.Qdisc.0*
  %39 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %40 = ptrtoint %struct.atm_flow_data* %39 to i64
  %41 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %42 = call i64 %36(%struct.Qdisc.0* %38, i64 %40, %struct.qdisc_walker* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %46 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %57

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %50 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %48
  %54 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %55 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %54, i32 0, i32 0
  %56 = load %struct.atm_flow_data*, %struct.atm_flow_data** %55, align 8
  store %struct.atm_flow_data* %56, %struct.atm_flow_data** %6, align 8
  br label %22

57:                                               ; preds = %17, %44, %22
  ret void
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_qdisc_data*, %struct.qdisc_walker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
