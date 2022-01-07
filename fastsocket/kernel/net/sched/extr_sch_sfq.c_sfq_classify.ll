; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i64 }
%struct.sfq_sched_data = type { i32 }
%struct.tcf_result = type { i32 }

@SFQ_HASH_DIVISOR = common dso_local global i64 0, align 8
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, i32*)* @sfq_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfq_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sfq_sched_data*, align 8
  %9 = alloca %struct.tcf_result, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.sfq_sched_data* %12, %struct.sfq_sched_data** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @TC_H_MAJ(i32 %15)
  %17 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @TC_H_MIN(i32 %24)
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TC_H_MIN(i32 %30)
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* @SFQ_HASH_DIVISOR, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TC_H_MIN(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %75

40:                                               ; preds = %27, %21, %3
  %41 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %42 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @sfq_hash(%struct.sfq_sched_data* %46, %struct.sk_buff* %47)
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %75

50:                                               ; preds = %40
  %51 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %52 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %53 = or i32 %51, %52
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %57 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @tc_classify(%struct.sk_buff* %55, i32 %58, %struct.tcf_result* %9)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @TC_H_MIN(i32 %64)
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* @SFQ_HASH_DIVISOR, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @TC_H_MIN(i32 %71)
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %50
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %69, %45, %35
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local i32 @TC_H_MIN(i32) #1

declare dso_local i32 @sfq_hash(%struct.sfq_sched_data*, %struct.sk_buff*) #1

declare dso_local i32 @tc_classify(%struct.sk_buff*, i32, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
