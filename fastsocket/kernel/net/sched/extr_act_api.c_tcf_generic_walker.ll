; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_generic_walker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_generic_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.tc_action = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tcf_hashinfo* }
%struct.tcf_hashinfo = type { i32 }

@RTM_DELACTION = common dso_local global i32 0, align 4
@RTM_GETACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"tcf_generic_walker: unknown action %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_generic_walker(%struct.sk_buff* %0, %struct.netlink_callback* %1, i32 %2, %struct.tc_action* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tc_action*, align 8
  %10 = alloca %struct.tcf_hashinfo*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tc_action* %3, %struct.tc_action** %9, align 8
  %11 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %12 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %14, align 8
  store %struct.tcf_hashinfo* %15, %struct.tcf_hashinfo** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @RTM_DELACTION, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %22 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %10, align 8
  %23 = call i32 @tcf_del_walker(%struct.sk_buff* %20, %struct.tc_action* %21, %struct.tcf_hashinfo* %22)
  store i32 %23, i32* %5, align 4
  br label %39

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @RTM_GETACTION, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %31 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %32 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %10, align 8
  %33 = call i32 @tcf_dump_walker(%struct.sk_buff* %29, %struct.netlink_callback* %30, %struct.tc_action* %31, %struct.tcf_hashinfo* %32)
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %28, %19
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @tcf_del_walker(%struct.sk_buff*, %struct.tc_action*, %struct.tcf_hashinfo*) #1

declare dso_local i32 @tcf_dump_walker(%struct.sk_buff*, %struct.netlink_callback*, %struct.tc_action*, %struct.tcf_hashinfo*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
