; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_pedit.c_tcf_pedit_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_pedit.c_tcf_pedit_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { %struct.tcf_pedit* }
%struct.tcf_pedit = type { i32, %struct.tc_pedit_key* }
%struct.tc_pedit_key = type { i32 }

@pedit_hash_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_action*, i32)* @tcf_pedit_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_pedit_cleanup(%struct.tc_action* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tc_action*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_pedit*, align 8
  %7 = alloca %struct.tc_pedit_key*, align 8
  store %struct.tc_action* %0, %struct.tc_action** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %9 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %8, i32 0, i32 0
  %10 = load %struct.tcf_pedit*, %struct.tcf_pedit** %9, align 8
  store %struct.tcf_pedit* %10, %struct.tcf_pedit** %6, align 8
  %11 = load %struct.tcf_pedit*, %struct.tcf_pedit** %6, align 8
  %12 = icmp ne %struct.tcf_pedit* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.tcf_pedit*, %struct.tcf_pedit** %6, align 8
  %15 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %14, i32 0, i32 1
  %16 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %15, align 8
  store %struct.tc_pedit_key* %16, %struct.tc_pedit_key** %7, align 8
  %17 = load %struct.tcf_pedit*, %struct.tcf_pedit** %6, align 8
  %18 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @tcf_hash_release(i32* %18, i32 %19, i32* @pedit_hash_info)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %7, align 8
  %24 = call i32 @kfree(%struct.tc_pedit_key* %23)
  store i32 1, i32* %3, align 4
  br label %27

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @tcf_hash_release(i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.tc_pedit_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
