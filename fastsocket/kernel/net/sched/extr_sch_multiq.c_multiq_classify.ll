; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_multiq.c_multiq_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_multiq.c_multiq_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.multiq_sched_data = type { i64, %struct.Qdisc**, i32 }
%struct.tcf_result = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Qdisc* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @multiq_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Qdisc* @multiq_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.multiq_sched_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tcf_result, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.multiq_sched_data* %13, %struct.multiq_sched_data** %8, align 8
  %14 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %15 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %16 = or i32 %14, %15
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %20 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @tc_classify(%struct.sk_buff* %18, i32 %21, %struct.tcf_result* %10)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %27 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %32 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %31, i32 0, i32 1
  %33 = load %struct.Qdisc**, %struct.Qdisc*** %32, align 8
  %34 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %33, i64 0
  %35 = load %struct.Qdisc*, %struct.Qdisc** %34, align 8
  store %struct.Qdisc* %35, %struct.Qdisc** %4, align 8
  br label %43

36:                                               ; preds = %3
  %37 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %38 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %37, i32 0, i32 1
  %39 = load %struct.Qdisc**, %struct.Qdisc*** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %39, i64 %40
  %42 = load %struct.Qdisc*, %struct.Qdisc** %41, align 8
  store %struct.Qdisc* %42, %struct.Qdisc** %4, align 8
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  ret %struct.Qdisc* %44
}

declare dso_local %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @tc_classify(%struct.sk_buff*, i32, %struct.tcf_result*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
