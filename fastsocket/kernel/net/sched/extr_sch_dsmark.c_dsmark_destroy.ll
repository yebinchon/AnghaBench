; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.dsmark_qdisc_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"dsmark_destroy(sch %p,[qdisc %p])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @dsmark_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsmark_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.dsmark_qdisc_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %4 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %5 = call %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc* %4)
  store %struct.dsmark_qdisc_data* %5, %struct.dsmark_qdisc_data** %3, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %3, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %6, %struct.dsmark_qdisc_data* %7)
  %9 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %3, align 8
  %10 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %9, i32 0, i32 2
  %11 = call i32 @tcf_destroy_chain(i32* %10)
  %12 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %3, align 8
  %13 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @qdisc_destroy(i32 %14)
  %16 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %3, align 8
  %17 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  ret void
}

declare dso_local %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.dsmark_qdisc_data*) #1

declare dso_local i32 @tcf_destroy_chain(i32*) #1

declare dso_local i32 @qdisc_destroy(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
