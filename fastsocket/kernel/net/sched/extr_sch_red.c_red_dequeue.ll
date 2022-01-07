; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_red.c_red_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_red.c_red_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__, {}* }
%struct.TYPE_2__ = type { i32 }
%struct.red_sched_data = type { i32, %struct.Qdisc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @red_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @red_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.red_sched_data*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.red_sched_data* %7, %struct.red_sched_data** %4, align 8
  %8 = load %struct.red_sched_data*, %struct.red_sched_data** %4, align 8
  %9 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %8, i32 0, i32 1
  %10 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  store %struct.Qdisc* %10, %struct.Qdisc** %5, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %12 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %11, i32 0, i32 1
  %13 = bitcast {}** %12 to %struct.sk_buff* (%struct.Qdisc*)**
  %14 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %13, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %16 = call %struct.sk_buff* %14(%struct.Qdisc* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %21 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.red_sched_data*, %struct.red_sched_data** %4, align 8
  %27 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %26, i32 0, i32 0
  %28 = call i32 @red_is_idling(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.red_sched_data*, %struct.red_sched_data** %4, align 8
  %32 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %31, i32 0, i32 0
  %33 = call i32 @red_start_of_idle_period(i32* %32)
  br label %34

34:                                               ; preds = %30, %25
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %36
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @red_is_idling(i32*) #1

declare dso_local i32 @red_start_of_idle_period(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
