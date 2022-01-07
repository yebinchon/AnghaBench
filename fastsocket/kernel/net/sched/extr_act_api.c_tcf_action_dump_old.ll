; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_dump_old.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_dump_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_dump_old(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %14 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %19 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)**
  %23 = load i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)*, i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)** %22, align 8
  %24 = icmp eq i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17, %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %39

27:                                               ; preds = %17
  %28 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %29 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)**
  %33 = load i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)*, i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)** %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 %33(%struct.sk_buff* %34, %struct.tc_action* %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %27, %25
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
