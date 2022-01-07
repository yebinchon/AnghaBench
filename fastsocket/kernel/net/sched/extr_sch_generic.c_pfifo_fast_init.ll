; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_pfifo_fast_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_pfifo_fast_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.pfifo_fast_priv = type { i32 }

@PFIFO_FAST_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @pfifo_fast_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfifo_fast_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfifo_fast_priv*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.pfifo_fast_priv* %8, %struct.pfifo_fast_priv** %6, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %18, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PFIFO_FAST_BANDS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @band2list(%struct.pfifo_fast_priv* %14, i32 %15)
  %17 = call i32 @skb_queue_head_init(i32 %16)
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %9

21:                                               ; preds = %9
  ret i32 0
}

declare dso_local %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @skb_queue_head_init(i32) #1

declare dso_local i32 @band2list(%struct.pfifo_fast_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
