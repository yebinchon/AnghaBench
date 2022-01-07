; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_schedule_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_schedule_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.hfsc_sched = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hfsc_class = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @hfsc_schedule_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfsc_schedule_watchdog(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.hfsc_sched*, align 8
  %4 = alloca %struct.hfsc_class*, align 8
  %5 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.hfsc_sched* %7, %struct.hfsc_sched** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.hfsc_sched*, %struct.hfsc_sched** %3, align 8
  %9 = call %struct.hfsc_class* @eltree_get_minel(%struct.hfsc_sched* %8)
  store %struct.hfsc_class* %9, %struct.hfsc_class** %4, align 8
  %10 = icmp ne %struct.hfsc_class* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %13 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.hfsc_sched*, %struct.hfsc_sched** %3, align 8
  %17 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.hfsc_sched*, %struct.hfsc_sched** %3, align 8
  %27 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24, %21
  %32 = load %struct.hfsc_sched*, %struct.hfsc_sched** %3, align 8
  %33 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %31, %24
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.hfsc_sched*, %struct.hfsc_sched** %3, align 8
  %43 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @qdisc_watchdog_schedule(i32* %43, i64 %44)
  ret void
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.hfsc_class* @eltree_get_minel(%struct.hfsc_sched*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @qdisc_watchdog_schedule(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
