; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_tcf_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_tcf_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.Qdisc = type { i32 }
%struct.hfsc_sched = type { %struct.hfsc_class }
%struct.hfsc_class = type { %struct.tcf_proto* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_proto** (%struct.Qdisc*, i64)* @hfsc_tcf_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_proto** @hfsc_tcf_chain(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hfsc_sched*, align 8
  %6 = alloca %struct.hfsc_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.hfsc_sched* %8, %struct.hfsc_sched** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.hfsc_class*
  store %struct.hfsc_class* %10, %struct.hfsc_class** %6, align 8
  %11 = load %struct.hfsc_class*, %struct.hfsc_class** %6, align 8
  %12 = icmp eq %struct.hfsc_class* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.hfsc_sched*, %struct.hfsc_sched** %5, align 8
  %15 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %14, i32 0, i32 0
  store %struct.hfsc_class* %15, %struct.hfsc_class** %6, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.hfsc_class*, %struct.hfsc_class** %6, align 8
  %18 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %17, i32 0, i32 0
  ret %struct.tcf_proto** %18
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
