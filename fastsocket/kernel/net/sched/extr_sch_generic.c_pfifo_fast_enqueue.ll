; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_pfifo_fast_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_pfifo_fast_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.Qdisc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pfifo_fast_priv = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_4__ = type { i64 }

@prio2band = common dso_local global i32* null, align 8
@TC_PRIO_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*)* @pfifo_fast_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfifo_fast_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfifo_fast_priv*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %10 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %9, i32 0, i32 0
  %11 = call i64 @skb_queue_len(%struct.TYPE_3__* %10)
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = call %struct.TYPE_4__* @qdisc_dev(%struct.Qdisc* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %11, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %2
  %18 = load i32*, i32** @prio2band, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TC_PRIO_MAX, align 8
  %23 = and i64 %21, %22
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %27 = call %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc* %26)
  store %struct.pfifo_fast_priv* %27, %struct.pfifo_fast_priv** %7, align 8
  %28 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.sk_buff_head* @band2list(%struct.pfifo_fast_priv* %28, i32 %29)
  store %struct.sk_buff_head* %30, %struct.sk_buff_head** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 1, %31
  %33 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %7, align 8
  %34 = getelementptr inbounds %struct.pfifo_fast_priv, %struct.pfifo_fast_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %38 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %44 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %45 = call i32 @__qdisc_enqueue_tail(%struct.sk_buff* %42, %struct.Qdisc* %43, %struct.sk_buff_head* %44)
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %2
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %49 = call i32 @qdisc_drop(%struct.sk_buff* %47, %struct.Qdisc* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @skb_queue_len(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_4__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff_head* @band2list(%struct.pfifo_fast_priv*, i32) #1

declare dso_local i32 @__qdisc_enqueue_tail(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff_head*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
