; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_softirq.c_open_softirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_softirq.c_open_softirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (%struct.softirq_action.0*)* }
%struct.softirq_action.0 = type opaque
%struct.softirq_action = type opaque

@softirq_vec = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_softirq(i32 %0, void (%struct.softirq_action*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void (%struct.softirq_action*)*, align 8
  store i32 %0, i32* %3, align 4
  store void (%struct.softirq_action*)* %1, void (%struct.softirq_action*)** %4, align 8
  %5 = load void (%struct.softirq_action*)*, void (%struct.softirq_action*)** %4, align 8
  %6 = bitcast void (%struct.softirq_action*)* %5 to void (%struct.softirq_action.0*)*
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @softirq_vec, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store void (%struct.softirq_action.0*)* %6, void (%struct.softirq_action.0*)** %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
