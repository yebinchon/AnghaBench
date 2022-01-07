; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_pfifo_fast_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_pfifo_fast_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.pfifo_fast_priv = type { i64 }
%struct.sk_buff_head = type { i32 }

@bitmap2band = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @pfifo_fast_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @pfifo_fast_peek(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.pfifo_fast_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff_head*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.pfifo_fast_priv* %8, %struct.pfifo_fast_priv** %4, align 8
  %9 = load i32*, i32** @bitmap2band, align 8
  %10 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %4, align 8
  %11 = getelementptr inbounds %struct.pfifo_fast_priv, %struct.pfifo_fast_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.sk_buff_head* @band2list(%struct.pfifo_fast_priv* %18, i32 %19)
  store %struct.sk_buff_head* %20, %struct.sk_buff_head** %6, align 8
  %21 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %22 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %2, align 8
  br label %24

23:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %25
}

declare dso_local %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff_head* @band2list(%struct.pfifo_fast_priv*, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
