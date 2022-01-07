; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_netem_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_netem_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.Qdisc = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.netem_sched_data = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sk_buff* (%struct.TYPE_9__*)* }
%struct.netem_skb_cb = type { i64 }

@TCQ_F_THROTTLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"netem_dequeue: return skb=%p\0A\00", align 1
@AT_INGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @netem_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @netem_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.netem_sched_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netem_skb_cb*, align 8
  %7 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.netem_sched_data* %9, %struct.netem_sched_data** %4, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %11 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TCQ_F_THROTTLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %69

17:                                               ; preds = %1
  %18 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %19 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.sk_buff* (%struct.TYPE_9__*)*, %struct.sk_buff* (%struct.TYPE_9__*)** %23, align 8
  %25 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %26 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = call %struct.sk_buff* %24(%struct.TYPE_9__* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %68

31:                                               ; preds = %17
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.netem_skb_cb* @netem_skb_cb(%struct.sk_buff* %32)
  store %struct.netem_skb_cb* %33, %struct.netem_skb_cb** %6, align 8
  %34 = call i64 (...) @psched_get_time()
  store i64 %34, i64* %7, align 8
  %35 = load %struct.netem_skb_cb*, %struct.netem_skb_cb** %6, align 8
  %36 = getelementptr inbounds %struct.netem_skb_cb, %struct.netem_skb_cb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %42 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call %struct.sk_buff* @qdisc_dequeue_peeked(%struct.TYPE_9__* %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %69

52:                                               ; preds = %40
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %53)
  %55 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %56 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %2, align 8
  br label %69

61:                                               ; preds = %31
  %62 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %63 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %62, i32 0, i32 0
  %64 = load %struct.netem_skb_cb*, %struct.netem_skb_cb** %6, align 8
  %65 = getelementptr inbounds %struct.netem_skb_cb, %struct.netem_skb_cb* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @qdisc_watchdog_schedule(i32* %63, i64 %66)
  br label %68

68:                                               ; preds = %61, %17
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %69

69:                                               ; preds = %68, %52, %51, %16
  %70 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %70
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.netem_skb_cb* @netem_skb_cb(%struct.sk_buff*) #1

declare dso_local i64 @psched_get_time(...) #1

declare dso_local %struct.sk_buff* @qdisc_dequeue_peeked(%struct.TYPE_9__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_watchdog_schedule(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
