; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c___qdisc_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c___qdisc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@__QDISC_STATE_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qdisc_run(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  store i64 %4, i64* %3, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call i64 @qdisc_restart(%struct.Qdisc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = call i64 (...) @need_resched()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %9
  %17 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %18 = call i32 @__netif_schedule(%struct.Qdisc* %17)
  br label %20

19:                                               ; preds = %12
  br label %5

20:                                               ; preds = %16, %5
  %21 = load i32, i32* @__QDISC_STATE_RUNNING, align 4
  %22 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  ret void
}

declare dso_local i64 @qdisc_restart(%struct.Qdisc*) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @__netif_schedule(%struct.Qdisc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
