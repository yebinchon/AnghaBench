; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_sch_atm_pop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_sch_atm_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.atm_qdisc_data = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.atm_vcc*, %struct.sk_buff*)*, %struct.atm_qdisc_data* }

@.str = private unnamed_addr constant [39 x i8] c"sch_atm_pop(vcc %p,skb %p,[qdisc %p])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.sk_buff*)* @sch_atm_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sch_atm_pop(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.atm_qdisc_data*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %7 = call %struct.TYPE_2__* @VCC2FLOW(%struct.atm_vcc* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  store %struct.atm_qdisc_data* %9, %struct.atm_qdisc_data** %5, align 8
  %10 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %10, %struct.sk_buff* %11, %struct.atm_qdisc_data* %12)
  %14 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %15 = call %struct.TYPE_2__* @VCC2FLOW(%struct.atm_vcc* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %16, align 8
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 %17(%struct.atm_vcc* %18, %struct.sk_buff* %19)
  %21 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %22 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %21, i32 0, i32 0
  %23 = call i32 @tasklet_schedule(i32* %22)
  ret void
}

declare dso_local %struct.TYPE_2__* @VCC2FLOW(%struct.atm_vcc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.atm_vcc*, %struct.sk_buff*, %struct.atm_qdisc_data*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
