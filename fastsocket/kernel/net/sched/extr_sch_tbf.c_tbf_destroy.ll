; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_tbf.c_tbf_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_tbf.c_tbf_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.tbf_sched_data = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @tbf_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbf_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.tbf_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %4 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %5 = call %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc* %4)
  store %struct.tbf_sched_data* %5, %struct.tbf_sched_data** %3, align 8
  %6 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %3, align 8
  %7 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %6, i32 0, i32 3
  %8 = call i32 @qdisc_watchdog_cancel(i32* %7)
  %9 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %3, align 8
  %10 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %3, align 8
  %15 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @qdisc_put_rtab(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %3, align 8
  %20 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %3, align 8
  %25 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @qdisc_put_rtab(i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %3, align 8
  %30 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @qdisc_destroy(i32 %31)
  ret void
}

declare dso_local %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_watchdog_cancel(i32*) #1

declare dso_local i32 @qdisc_put_rtab(i64) #1

declare dso_local i32 @qdisc_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
