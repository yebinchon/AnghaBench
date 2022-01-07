; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_class = type { i32 }
%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.qfq_sched = type { i32 }
%struct.tcf_result = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"qfq_classify: found %d\0A\00", align 1
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qfq_class* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @qfq_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qfq_class* @qfq_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.qfq_class*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qfq_sched*, align 8
  %9 = alloca %struct.qfq_class*, align 8
  %10 = alloca %struct.tcf_result, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.qfq_sched* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.qfq_sched* %13, %struct.qfq_sched** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %16, %19
  %21 = call i64 @TC_H_MAJ(i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.qfq_class* @qfq_find_class(%struct.Qdisc* %28, i32 %31)
  store %struct.qfq_class* %32, %struct.qfq_class** %9, align 8
  %33 = load %struct.qfq_class*, %struct.qfq_class** %9, align 8
  %34 = icmp ne %struct.qfq_class* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load %struct.qfq_class*, %struct.qfq_class** %9, align 8
  store %struct.qfq_class* %36, %struct.qfq_class** %4, align 8
  br label %64

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %40 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.qfq_sched*, %struct.qfq_sched** %8, align 8
  %45 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @tc_classify(%struct.sk_buff* %43, i32 %46, %struct.tcf_result* %10)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.qfq_class*
  store %struct.qfq_class* %53, %struct.qfq_class** %9, align 8
  %54 = load %struct.qfq_class*, %struct.qfq_class** %9, align 8
  %55 = icmp eq %struct.qfq_class* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %58 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.qfq_class* @qfq_find_class(%struct.Qdisc* %57, i32 %59)
  store %struct.qfq_class* %60, %struct.qfq_class** %9, align 8
  br label %61

61:                                               ; preds = %56, %50
  %62 = load %struct.qfq_class*, %struct.qfq_class** %9, align 8
  store %struct.qfq_class* %62, %struct.qfq_class** %4, align 8
  br label %64

63:                                               ; preds = %38
  store %struct.qfq_class* null, %struct.qfq_class** %4, align 8
  br label %64

64:                                               ; preds = %63, %61, %35
  %65 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  ret %struct.qfq_class* %65
}

declare dso_local %struct.qfq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.qfq_class* @qfq_find_class(%struct.Qdisc*, i32) #1

declare dso_local i32 @tc_classify(%struct.sk_buff*, i32, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
