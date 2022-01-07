; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.net_device = type { i64 }
%struct.teql_sched_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*)* @teql_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teql_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.teql_sched_data*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %9 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.teql_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.teql_sched_data* %11, %struct.teql_sched_data** %7, align 8
  %12 = load %struct.teql_sched_data*, %struct.teql_sched_data** %7, align 8
  %13 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load %struct.teql_sched_data*, %struct.teql_sched_data** %7, align 8
  %22 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @__skb_queue_tail(%struct.TYPE_6__* %22, %struct.sk_buff* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i64 @qdisc_pkt_len(%struct.sk_buff* %25)
  %27 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %28 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %26
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %35 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %48

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  %42 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %43 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %39, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.teql_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_6__*, %struct.sk_buff*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
