; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_qlen_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_qlen_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qfq_sched = type { i32 }
%struct.qfq_class = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, i64)* @qfq_qlen_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_qlen_notify(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qfq_sched*, align 8
  %6 = alloca %struct.qfq_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.qfq_sched* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.qfq_sched* %8, %struct.qfq_sched** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.qfq_class*
  store %struct.qfq_class* %10, %struct.qfq_class** %6, align 8
  %11 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %12 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.qfq_sched*, %struct.qfq_sched** %5, align 8
  %20 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %21 = call i32 @qfq_deactivate_class(%struct.qfq_sched* %19, %struct.qfq_class* %20)
  br label %22

22:                                               ; preds = %18, %2
  ret void
}

declare dso_local %struct.qfq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qfq_deactivate_class(%struct.qfq_sched*, %struct.qfq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
