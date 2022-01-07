; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_ipt.c_tcf_ipt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_ipt.c_tcf_ipt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_ipt* }
%struct.tcf_ipt = type { i32, %struct.TYPE_14__, %struct.TYPE_12__*, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.sk_buff*, %struct.xt_target_param*)* }
%struct.xt_target_param = type { %struct.TYPE_13__*, i32, i32, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.tcf_result = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TC_ACT_UNSPEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TC_ACT_OK = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@TC_ACT_PIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"tc filter: Bogus netfilter code %d assume ACCEPT\0A\00", align 1
@TC_POLICE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_ipt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ipt(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcf_ipt*, align 8
  %11 = alloca %struct.xt_target_param, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %13 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %12, i32 0, i32 0
  %14 = load %struct.tcf_ipt*, %struct.tcf_ipt** %13, align 8
  store %struct.tcf_ipt* %14, %struct.tcf_ipt** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i64 @skb_unclone(%struct.sk_buff* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @TC_ACT_UNSPEC, align 4
  store i32 %20, i32* %4, align 4
  br label %97

21:                                               ; preds = %3
  %22 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %23 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %27 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i64 @qdisc_pkt_len(%struct.sk_buff* %29)
  %31 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %32 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %30
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %39 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %11, i32 0, i32 4
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %11, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %49 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %11, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %53 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %52, i32 0, i32 2
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %11, i32 0, i32 0
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %59, align 8
  %60 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %61 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %60, i32 0, i32 2
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %11, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %11, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32 (%struct.sk_buff*, %struct.xt_target_param*)*, i32 (%struct.sk_buff*, %struct.xt_target_param*)** %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 %69(%struct.sk_buff* %70, %struct.xt_target_param* %11)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  switch i32 %72, label %84 [
    i32 129, label %73
    i32 128, label %75
    i32 130, label %82
  ]

73:                                               ; preds = %21
  %74 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %74, i32* %9, align 4
  br label %92

75:                                               ; preds = %21
  %76 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %76, i32* %9, align 4
  %77 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %78 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %92

82:                                               ; preds = %21
  %83 = load i32, i32* @TC_ACT_PIPE, align 4
  store i32 %83, i32* %9, align 4
  br label %92

84:                                               ; preds = %21
  %85 = call i32 (...) @net_ratelimit()
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @pr_notice(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* @TC_POLICE_OK, align 4
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %82, %75, %73
  %93 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %94 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %19
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @net_ratelimit(...) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
