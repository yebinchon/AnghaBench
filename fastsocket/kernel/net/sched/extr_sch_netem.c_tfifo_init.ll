; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_tfifo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_tfifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.fifo_sched_data = type { i32, i32 }
%struct.tc_fifo_qopt = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@PSCHED_PASTPERFECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @tfifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfifo_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.fifo_sched_data*, align 8
  %7 = alloca %struct.tc_fifo_qopt*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.fifo_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.fifo_sched_data* %9, %struct.fifo_sched_data** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %14 = call %struct.tc_fifo_qopt* @nla_data(%struct.nlattr* %13)
  store %struct.tc_fifo_qopt* %14, %struct.tc_fifo_qopt** %7, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %16 = call i32 @nla_len(%struct.nlattr* %15)
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %41

22:                                               ; preds = %12
  %23 = load %struct.tc_fifo_qopt*, %struct.tc_fifo_qopt** %7, align 8
  %24 = getelementptr inbounds %struct.tc_fifo_qopt, %struct.tc_fifo_qopt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fifo_sched_data*, %struct.fifo_sched_data** %6, align 8
  %27 = getelementptr inbounds %struct.fifo_sched_data, %struct.fifo_sched_data* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %37

28:                                               ; preds = %2
  %29 = load i32, i32* @u32, align 4
  %30 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %31 = call %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @max_t(i32 %29, i32 %33, i32 1)
  %35 = load %struct.fifo_sched_data*, %struct.fifo_sched_data** %6, align 8
  %36 = getelementptr inbounds %struct.fifo_sched_data, %struct.fifo_sched_data* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %28, %22
  %38 = load i32, i32* @PSCHED_PASTPERFECT, align 4
  %39 = load %struct.fifo_sched_data*, %struct.fifo_sched_data** %6, align 8
  %40 = getelementptr inbounds %struct.fifo_sched_data, %struct.fifo_sched_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.fifo_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.tc_fifo_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
