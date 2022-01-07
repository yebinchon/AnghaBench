; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_change_qdisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_change_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.hfsc_sched = type { i32 }
%struct.tc_hfsc_qopt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @hfsc_change_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_change_qdisc(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.hfsc_sched*, align 8
  %7 = alloca %struct.tc_hfsc_qopt*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.hfsc_sched* %9, %struct.hfsc_sched** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %11 = icmp eq %struct.nlattr* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %12
  %21 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %22 = call %struct.tc_hfsc_qopt* @nla_data(%struct.nlattr* %21)
  store %struct.tc_hfsc_qopt* %22, %struct.tc_hfsc_qopt** %7, align 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %24 = call i32 @sch_tree_lock(%struct.Qdisc* %23)
  %25 = load %struct.tc_hfsc_qopt*, %struct.tc_hfsc_qopt** %7, align 8
  %26 = getelementptr inbounds %struct.tc_hfsc_qopt, %struct.tc_hfsc_qopt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %29 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %31 = call i32 @sch_tree_unlock(%struct.Qdisc* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %20, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.tc_hfsc_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
