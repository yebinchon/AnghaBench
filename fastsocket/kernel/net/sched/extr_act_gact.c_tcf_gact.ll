; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_gact.c_tcf_gact.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_gact.c_tcf_gact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_gact* }
%struct.tcf_gact = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tcf_result = type { i32 }

@TC_ACT_SHOT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_gact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_gact(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tc_action*, align 8
  %6 = alloca %struct.tcf_result*, align 8
  %7 = alloca %struct.tcf_gact*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tc_action* %1, %struct.tc_action** %5, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %6, align 8
  %9 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %10 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %9, i32 0, i32 0
  %11 = load %struct.tcf_gact*, %struct.tcf_gact** %10, align 8
  store %struct.tcf_gact* %11, %struct.tcf_gact** %7, align 8
  %12 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.tcf_gact*, %struct.tcf_gact** %7, align 8
  %14 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.tcf_gact*, %struct.tcf_gact** %7, align 8
  %17 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i64 @qdisc_pkt_len(%struct.sk_buff* %19)
  %21 = load %struct.tcf_gact*, %struct.tcf_gact** %7, align 8
  %22 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %20
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.tcf_gact*, %struct.tcf_gact** %7, align 8
  %29 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @TC_ACT_SHOT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load %struct.tcf_gact*, %struct.tcf_gact** %7, align 8
  %38 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %3
  %43 = load i32, i32* @jiffies, align 4
  %44 = load %struct.tcf_gact*, %struct.tcf_gact** %7, align 8
  %45 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.tcf_gact*, %struct.tcf_gact** %7, align 8
  %48 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %47, i32 0, i32 2
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
