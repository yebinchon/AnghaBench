; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drr_class = type { i32 }
%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.drr_sched = type { i32 }
%struct.tcf_result = type { i32, i64 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drr_class* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @drr_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drr_class* @drr_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.drr_class*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drr_sched*, align 8
  %9 = alloca %struct.drr_class*, align 8
  %10 = alloca %struct.tcf_result, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.drr_sched* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.drr_sched* %13, %struct.drr_sched** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %16, %19
  %21 = call i64 @TC_H_MAJ(i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.drr_class* @drr_find_class(%struct.Qdisc* %24, i32 %27)
  store %struct.drr_class* %28, %struct.drr_class** %9, align 8
  %29 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  %30 = icmp ne %struct.drr_class* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  store %struct.drr_class* %32, %struct.drr_class** %4, align 8
  br label %60

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %36 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.drr_sched*, %struct.drr_sched** %8, align 8
  %41 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @tc_classify(%struct.sk_buff* %39, i32 %42, %struct.tcf_result* %10)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.drr_class*
  store %struct.drr_class* %49, %struct.drr_class** %9, align 8
  %50 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  %51 = icmp eq %struct.drr_class* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %54 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.drr_class* @drr_find_class(%struct.Qdisc* %53, i32 %55)
  store %struct.drr_class* %56, %struct.drr_class** %9, align 8
  br label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.drr_class*, %struct.drr_class** %9, align 8
  store %struct.drr_class* %58, %struct.drr_class** %4, align 8
  br label %60

59:                                               ; preds = %34
  store %struct.drr_class* null, %struct.drr_class** %4, align 8
  br label %60

60:                                               ; preds = %59, %57, %31
  %61 = load %struct.drr_class*, %struct.drr_class** %4, align 8
  ret %struct.drr_class* %61
}

declare dso_local %struct.drr_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local %struct.drr_class* @drr_find_class(%struct.Qdisc*, i32) #1

declare dso_local i32 @tc_classify(%struct.sk_buff*, i32, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
