; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_pfifo_fast_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_pfifo_fast_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pfifo_fast_priv = type { i64 }
%struct.sk_buff_head = type { i32 }

@bitmap2band = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @pfifo_fast_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @pfifo_fast_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.pfifo_fast_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.pfifo_fast_priv* %9, %struct.pfifo_fast_priv** %4, align 8
  %10 = load i32*, i32** @bitmap2band, align 8
  %11 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %4, align 8
  %12 = getelementptr inbounds %struct.pfifo_fast_priv, %struct.pfifo_fast_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %1
  %22 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.sk_buff_head* @band2list(%struct.pfifo_fast_priv* %22, i32 %23)
  store %struct.sk_buff_head* %24, %struct.sk_buff_head** %6, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %26 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %27 = call %struct.sk_buff* @__qdisc_dequeue_head(%struct.Qdisc* %25, %struct.sk_buff_head* %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %7, align 8
  %28 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %29 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %34 = call i64 @skb_queue_empty(%struct.sk_buff_head* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = sext i32 %39 to i64
  %41 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %4, align 8
  %42 = getelementptr inbounds %struct.pfifo_fast_priv, %struct.pfifo_fast_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %36, %21
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %2, align 8
  br label %48

47:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %48

48:                                               ; preds = %47, %45
  %49 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %49
}

declare dso_local %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff_head* @band2list(%struct.pfifo_fast_priv*, i32) #1

declare dso_local %struct.sk_buff* @__qdisc_dequeue_head(%struct.Qdisc*, %struct.sk_buff_head*) #1

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
