; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__, {}* }
%struct.TYPE_2__ = type { i32 }
%struct.prio_sched_data = type { i32, %struct.Qdisc** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @prio_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @prio_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.prio_sched_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.prio_sched_data* %9, %struct.prio_sched_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %40, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.prio_sched_data*, %struct.prio_sched_data** %4, align 8
  %13 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %10
  %17 = load %struct.prio_sched_data*, %struct.prio_sched_data** %4, align 8
  %18 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %17, i32 0, i32 1
  %19 = load %struct.Qdisc**, %struct.Qdisc*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %19, i64 %21
  %23 = load %struct.Qdisc*, %struct.Qdisc** %22, align 8
  store %struct.Qdisc* %23, %struct.Qdisc** %6, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %25 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %24, i32 0, i32 1
  %26 = bitcast {}** %25 to %struct.sk_buff* (%struct.Qdisc*)**
  %27 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %26, align 8
  %28 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %29 = call %struct.sk_buff* %27(%struct.Qdisc* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %16
  %33 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %34 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %2, align 8
  br label %44

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %10

43:                                               ; preds = %10
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %45
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
