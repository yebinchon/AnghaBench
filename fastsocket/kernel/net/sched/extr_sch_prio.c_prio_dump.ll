; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.prio_sched_data = type { i32, i32 }
%struct.tc_prio_qopt = type { i32, i32 }

@TC_PRIO_MAX = common dso_local global i64 0, align 8
@TCA_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @prio_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.prio_sched_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_prio_qopt, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.prio_sched_data* %10, %struct.prio_sched_data** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i8* @skb_tail_pointer(%struct.sk_buff* %11)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %14 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %8, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %8, i32 0, i32 0
  %18 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %19 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @TC_PRIO_MAX, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i32 @memcpy(i32* %17, i32 %20, i64 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @TCA_OPTIONS, align 4
  %26 = call i32 @NLA_PUT(%struct.sk_buff* %24, i32 %25, i32 8, %struct.tc_prio_qopt* %8)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; No predecessors!
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @nlmsg_trim(%struct.sk_buff* %31, i8* %32)
  store i32 -1, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %2
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tc_prio_qopt*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
