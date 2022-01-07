; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_tbf.c_tbf_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_tbf.c_tbf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tbf_sched_data = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_tbf_qopt = type { i32, i32, i32, i32, i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_TBF_PARMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @tbf_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbf_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tbf_sched_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.tc_tbf_qopt, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.tbf_sched_data* %10, %struct.tbf_sched_data** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* @TCA_OPTIONS, align 4
  %13 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %11, i32 %12)
  store %struct.nlattr* %13, %struct.nlattr** %7, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %15 = icmp eq %struct.nlattr* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %19 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %23 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %29 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %17
  %33 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %34 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  br label %42

39:                                               ; preds = %17
  %40 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 2
  %41 = call i32 @memset(i32* %40, i32 0, i32 4)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %44 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %48 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %8, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* @TCA_TBF_PARMS, align 4
  %53 = call i32 @NLA_PUT(%struct.sk_buff* %51, i32 %52, i32 20, %struct.tc_tbf_qopt* %8)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %56 = call i32 @nla_nest_end(%struct.sk_buff* %54, %struct.nlattr* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %16
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %63 = call i32 @nla_nest_cancel(%struct.sk_buff* %61, %struct.nlattr* %62)
  store i32 -1, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %42
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tc_tbf_qopt*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
