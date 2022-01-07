; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_dump_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_dump_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cbq_class = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TCA_CBQ_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cbq_class*)* @cbq_dump_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_dump_rate(%struct.sk_buff* %0, %struct.cbq_class* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cbq_class*, align 8
  %6 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cbq_class* %1, %struct.cbq_class** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i8* @skb_tail_pointer(%struct.sk_buff* %7)
  store i8* %8, i8** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @TCA_CBQ_RATE, align 4
  %11 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %12 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @NLA_PUT(%struct.sk_buff* %9, i32 %10, i32 4, i32* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; No predecessors!
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @nlmsg_trim(%struct.sk_buff* %20, i8* %21)
  store i32 -1, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
