; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_graft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.atm_qdisc_data = type { i32 }
%struct.atm_flow_data = type { %struct.Qdisc* }

@.str = private unnamed_addr constant [55 x i8] c"atm_tc_graft(sch %p,[qdisc %p],flow %p,new %p,old %p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)* @atm_tc_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_tc_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc**, align 8
  %10 = alloca %struct.atm_qdisc_data*, align 8
  %11 = alloca %struct.atm_flow_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %8, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %9, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.atm_qdisc_data* %13, %struct.atm_qdisc_data** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct.atm_flow_data*
  store %struct.atm_flow_data* %15, %struct.atm_flow_data** %11, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %17 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %10, align 8
  %18 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %19 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %20 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %16, %struct.atm_qdisc_data* %17, %struct.atm_flow_data* %18, %struct.Qdisc* %19, %struct.Qdisc** %20)
  %22 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %10, align 8
  %23 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %24 = call i32 @find_flow(%struct.atm_qdisc_data* %22, %struct.atm_flow_data* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %49

29:                                               ; preds = %4
  %30 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %31 = icmp ne %struct.Qdisc* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %8, align 8
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %35 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %34, i32 0, i32 0
  %36 = load %struct.Qdisc*, %struct.Qdisc** %35, align 8
  %37 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %36, %struct.Qdisc** %37, align 8
  %38 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %39 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %40 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %39, i32 0, i32 0
  store %struct.Qdisc* %38, %struct.Qdisc** %40, align 8
  %41 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %42 = load %struct.Qdisc*, %struct.Qdisc** %41, align 8
  %43 = icmp ne %struct.Qdisc* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %46 = load %struct.Qdisc*, %struct.Qdisc** %45, align 8
  %47 = call i32 @qdisc_reset(%struct.Qdisc* %46)
  br label %48

48:                                               ; preds = %44, %33
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_qdisc_data*, %struct.atm_flow_data*, %struct.Qdisc*, %struct.Qdisc**) #1

declare dso_local i32 @find_flow(%struct.atm_qdisc_data*, %struct.atm_flow_data*) #1

declare dso_local i32 @qdisc_reset(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
