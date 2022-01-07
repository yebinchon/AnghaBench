; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_get_correlation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_get_correlation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netem_sched_data = type { i32, i32, i32 }
%struct.tc_netem_corr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.nlattr*)* @get_correlation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_correlation(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.netem_sched_data*, align 8
  %6 = alloca %struct.tc_netem_corr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.netem_sched_data* %8, %struct.netem_sched_data** %5, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %10 = call %struct.tc_netem_corr* @nla_data(%struct.nlattr* %9)
  store %struct.tc_netem_corr* %10, %struct.tc_netem_corr** %6, align 8
  %11 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %12 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %11, i32 0, i32 2
  %13 = load %struct.tc_netem_corr*, %struct.tc_netem_corr** %6, align 8
  %14 = getelementptr inbounds %struct.tc_netem_corr, %struct.tc_netem_corr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @init_crandom(i32* %12, i32 %15)
  %17 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %18 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %17, i32 0, i32 1
  %19 = load %struct.tc_netem_corr*, %struct.tc_netem_corr** %6, align 8
  %20 = getelementptr inbounds %struct.tc_netem_corr, %struct.tc_netem_corr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @init_crandom(i32* %18, i32 %21)
  %23 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %24 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %23, i32 0, i32 0
  %25 = load %struct.tc_netem_corr*, %struct.tc_netem_corr** %6, align 8
  %26 = getelementptr inbounds %struct.tc_netem_corr, %struct.tc_netem_corr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @init_crandom(i32* %24, i32 %27)
  ret void
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.tc_netem_corr* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @init_crandom(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
