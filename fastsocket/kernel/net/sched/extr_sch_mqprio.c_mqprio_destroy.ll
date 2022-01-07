; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { i32 }
%struct.mqprio_sched = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @mqprio_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqprio_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mqprio_sched*, align 8
  %5 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %9 = call %struct.mqprio_sched* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.mqprio_sched* %9, %struct.mqprio_sched** %4, align 8
  %10 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %11 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %23 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %21, %15
  %31 = phi i1 [ false, %15 ], [ %29, %21 ]
  br i1 %31, label %32, label %44

32:                                               ; preds = %30
  %33 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %34 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @qdisc_destroy(i64 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %15

44:                                               ; preds = %30
  %45 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %46 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = call i32 @kfree(i64* %47)
  br label %49

49:                                               ; preds = %44, %1
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netdev_set_num_tc(%struct.net_device* %50, i32 0)
  ret void
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.mqprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_destroy(i64) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
