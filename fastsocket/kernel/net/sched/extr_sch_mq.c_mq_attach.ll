; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { i32 }
%struct.mq_sched = type { %struct.Qdisc** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @mq_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mq_attach(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mq_sched*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %10 = call %struct.mq_sched* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.mq_sched* %10, %struct.mq_sched** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %36, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.mq_sched*, %struct.mq_sched** %4, align 8
  %19 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %18, i32 0, i32 0
  %20 = load %struct.Qdisc**, %struct.Qdisc*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %20, i64 %22
  %24 = load %struct.Qdisc*, %struct.Qdisc** %23, align 8
  store %struct.Qdisc* %24, %struct.Qdisc** %5, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %29 = call %struct.Qdisc* @dev_graft_qdisc(i32 %27, %struct.Qdisc* %28)
  store %struct.Qdisc* %29, %struct.Qdisc** %5, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %31 = icmp ne %struct.Qdisc* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %34 = call i32 @qdisc_destroy(%struct.Qdisc* %33)
  br label %35

35:                                               ; preds = %32, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.mq_sched*, %struct.mq_sched** %4, align 8
  %41 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %40, i32 0, i32 0
  %42 = load %struct.Qdisc**, %struct.Qdisc*** %41, align 8
  %43 = call i32 @kfree(%struct.Qdisc** %42)
  %44 = load %struct.mq_sched*, %struct.mq_sched** %4, align 8
  %45 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %44, i32 0, i32 0
  store %struct.Qdisc** null, %struct.Qdisc*** %45, align 8
  ret void
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.mq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @dev_graft_qdisc(i32, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

declare dso_local i32 @kfree(%struct.Qdisc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
