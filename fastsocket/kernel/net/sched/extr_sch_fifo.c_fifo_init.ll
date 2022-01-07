; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_fifo.c_fifo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_fifo.c_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32* }
%struct.nlattr = type { i32 }
%struct.fifo_sched_data = type { i32 }
%struct.tc_fifo_qopt = type { i32 }
%struct.TYPE_3__ = type { i64 }

@bfifo_qdisc_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.fifo_sched_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tc_fifo_qopt*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.fifo_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.fifo_sched_data* %10, %struct.fifo_sched_data** %6, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %12 = icmp eq %struct.nlattr* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i64 [ %17, %19 ], [ 1, %20 ]
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %25 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, @bfifo_qdisc_ops
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %30 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %29)
  %31 = call i32 @psched_mtu(%struct.TYPE_3__* %30)
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %28, %21
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.fifo_sched_data*, %struct.fifo_sched_data** %6, align 8
  %37 = getelementptr inbounds %struct.fifo_sched_data, %struct.fifo_sched_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %54

38:                                               ; preds = %2
  %39 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %40 = call %struct.tc_fifo_qopt* @nla_data(%struct.nlattr* %39)
  store %struct.tc_fifo_qopt* %40, %struct.tc_fifo_qopt** %8, align 8
  %41 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %42 = call i32 @nla_len(%struct.nlattr* %41)
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 4
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %38
  %49 = load %struct.tc_fifo_qopt*, %struct.tc_fifo_qopt** %8, align 8
  %50 = getelementptr inbounds %struct.tc_fifo_qopt, %struct.tc_fifo_qopt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fifo_sched_data*, %struct.fifo_sched_data** %6, align 8
  %53 = getelementptr inbounds %struct.fifo_sched_data, %struct.fifo_sched_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %34
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.fifo_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @psched_mtu(%struct.TYPE_3__*) #1

declare dso_local %struct.tc_fifo_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
