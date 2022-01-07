; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_tbf.c_tbf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_tbf.c_tbf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.tbf_sched_data = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @tbf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbf_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.tbf_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %8 = call %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.tbf_sched_data* %8, %struct.tbf_sched_data** %6, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %10 = icmp eq %struct.nlattr* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = call i32 (...) @psched_get_time()
  %16 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %17 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %19 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %18, i32 0, i32 1
  %20 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %21 = call i32 @qdisc_watchdog_init(i32* %19, %struct.Qdisc* %20)
  %22 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %23 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %22, i32 0, i32 0
  store i32* @noop_qdisc, i32** %23, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %25 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %26 = call i32 @tbf_change(%struct.Qdisc* %24, %struct.nlattr* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @psched_get_time(...) #1

declare dso_local i32 @qdisc_watchdog_init(i32*, %struct.Qdisc*) #1

declare dso_local i32 @tbf_change(%struct.Qdisc*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
