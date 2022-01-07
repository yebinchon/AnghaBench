; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.Qdisc = type { i64 }
%struct.prio_sched_data = type { i64*, i64, %struct.Qdisc**, i32 }
%struct.tcf_result = type { i64 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@TC_PRIO_MAX = common dso_local global i64 0, align 8
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Qdisc* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @prio_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Qdisc* @prio_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.prio_sched_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tcf_result, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.prio_sched_data* %13, %struct.prio_sched_data** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %18 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %19 = or i32 %17, %18
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @TC_H_MAJ(i64 %23)
  %25 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %32 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @tc_classify(%struct.sk_buff* %30, i32 %33, %struct.tcf_result* %10)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %36 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %39, %29
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @TC_H_MAJ(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i64 0, i64* %9, align 8
  br label %47

47:                                               ; preds = %46, %42
  %48 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %49 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %48, i32 0, i32 2
  %50 = load %struct.Qdisc**, %struct.Qdisc*** %49, align 8
  %51 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %52 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @TC_PRIO_MAX, align 8
  %56 = and i64 %54, %55
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %50, i64 %58
  %60 = load %struct.Qdisc*, %struct.Qdisc** %59, align 8
  store %struct.Qdisc* %60, %struct.Qdisc** %4, align 8
  br label %92

61:                                               ; preds = %39
  %62 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %61, %3
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @TC_H_MIN(i64 %65)
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %71 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp uge i64 %69, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %64
  %75 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %76 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %75, i32 0, i32 2
  %77 = load %struct.Qdisc**, %struct.Qdisc*** %76, align 8
  %78 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %79 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %77, i64 %82
  %84 = load %struct.Qdisc*, %struct.Qdisc** %83, align 8
  store %struct.Qdisc* %84, %struct.Qdisc** %4, align 8
  br label %92

85:                                               ; preds = %64
  %86 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %87 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %86, i32 0, i32 2
  %88 = load %struct.Qdisc**, %struct.Qdisc*** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %88, i64 %89
  %91 = load %struct.Qdisc*, %struct.Qdisc** %90, align 8
  store %struct.Qdisc* %91, %struct.Qdisc** %4, align 8
  br label %92

92:                                               ; preds = %85, %74, %47
  %93 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  ret %struct.Qdisc* %93
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local i32 @tc_classify(%struct.sk_buff*, i32, %struct.tcf_result*) #1

declare dso_local i32 @TC_H_MIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
