; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.atm_qdisc_data = type { %struct.atm_flow_data* }
%struct.atm_flow_data = type { %struct.TYPE_4__*, %struct.atm_flow_data* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@.str = private unnamed_addr constant [32 x i8] c"atm_tc_drop(sch %p,[qdisc %p])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @atm_tc_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_tc_drop(%struct.Qdisc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.atm_qdisc_data*, align 8
  %5 = alloca %struct.atm_flow_data*, align 8
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.atm_qdisc_data* %8, %struct.atm_qdisc_data** %4, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %4, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %9, %struct.atm_qdisc_data* %10)
  %12 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %4, align 8
  %13 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %12, i32 0, i32 0
  %14 = load %struct.atm_flow_data*, %struct.atm_flow_data** %13, align 8
  store %struct.atm_flow_data* %14, %struct.atm_flow_data** %5, align 8
  br label %15

15:                                               ; preds = %43, %1
  %16 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %17 = icmp ne %struct.atm_flow_data* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %20 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_4__*)* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %18
  %28 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %29 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %33, align 8
  %35 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %36 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 %34(%struct.TYPE_4__* %37)
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %27, %18
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %45 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %44, i32 0, i32 1
  %46 = load %struct.atm_flow_data*, %struct.atm_flow_data** %45, align 8
  store %struct.atm_flow_data* %46, %struct.atm_flow_data** %5, align 8
  br label %15

47:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_qdisc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
