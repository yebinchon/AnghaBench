; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_skbedit.c_tcf_skbedit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_skbedit.c_tcf_skbedit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.tc_action = type { %struct.tcf_skbedit* }
%struct.tcf_skbedit = type { i32, i64, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_result = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@SKBEDIT_F_PRIORITY = common dso_local global i32 0, align 4
@SKBEDIT_F_QUEUE_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_skbedit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_skbedit(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tc_action*, align 8
  %6 = alloca %struct.tcf_result*, align 8
  %7 = alloca %struct.tcf_skbedit*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tc_action* %1, %struct.tc_action** %5, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %6, align 8
  %8 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %9 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %8, i32 0, i32 0
  %10 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %9, align 8
  store %struct.tcf_skbedit* %10, %struct.tcf_skbedit** %7, align 8
  %11 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %12 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %11, i32 0, i32 3
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load i32, i32* @jiffies, align 4
  %15 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %16 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @qdisc_pkt_len(%struct.sk_buff* %18)
  %20 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %21 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %19
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %28 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %33 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SKBEDIT_F_PRIORITY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %40 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %3
  %45 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %46 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SKBEDIT_F_QUEUE_MAPPING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %58 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %64 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %62, i64 %65)
  br label %67

67:                                               ; preds = %61, %51, %44
  %68 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %69 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %68, i32 0, i32 3
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %7, align 8
  %72 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  ret i32 %73
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
