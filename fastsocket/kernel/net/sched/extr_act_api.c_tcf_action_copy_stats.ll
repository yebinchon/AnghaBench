; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_copy_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_copy_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i64, %struct.TYPE_2__*, %struct.tcf_act_hdr* }
%struct.TYPE_2__ = type { i64 (%struct.sk_buff*, %struct.tc_action*)* }
%struct.tcf_act_hdr = type { i32, i32, i32, i32 }
%struct.gnet_dump = type { i32 }

@TCA_OLD_COMPAT = common dso_local global i64 0, align 8
@TCA_STATS = common dso_local global i32 0, align 4
@TCA_XSTATS = common dso_local global i32 0, align 4
@TCA_ACT_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_copy_stats(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gnet_dump, align 4
  %10 = alloca %struct.tcf_act_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %12 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %11, i32 0, i32 2
  %13 = load %struct.tcf_act_hdr*, %struct.tcf_act_hdr** %12, align 8
  store %struct.tcf_act_hdr* %13, %struct.tcf_act_hdr** %10, align 8
  %14 = load %struct.tcf_act_hdr*, %struct.tcf_act_hdr** %10, align 8
  %15 = icmp eq %struct.tcf_act_hdr* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %90

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %22 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCA_OLD_COMPAT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* @TCA_STATS, align 4
  %29 = load i32, i32* @TCA_XSTATS, align 4
  %30 = load %struct.tcf_act_hdr*, %struct.tcf_act_hdr** %10, align 8
  %31 = getelementptr inbounds %struct.tcf_act_hdr, %struct.tcf_act_hdr* %30, i32 0, i32 3
  %32 = call i32 @gnet_stats_start_copy_compat(%struct.sk_buff* %27, i32 0, i32 %28, i32 %29, i32* %31, %struct.gnet_dump* %9)
  store i32 %32, i32* %8, align 4
  br label %34

33:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %91

34:                                               ; preds = %26
  br label %41

35:                                               ; preds = %17
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* @TCA_ACT_STATS, align 4
  %38 = load %struct.tcf_act_hdr*, %struct.tcf_act_hdr** %10, align 8
  %39 = getelementptr inbounds %struct.tcf_act_hdr, %struct.tcf_act_hdr* %38, i32 0, i32 3
  %40 = call i32 @gnet_stats_start_copy(%struct.sk_buff* %36, i32 %37, i32* %39, %struct.gnet_dump* %9)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %35, %34
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %90

45:                                               ; preds = %41
  %46 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %47 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %52 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64 (%struct.sk_buff*, %struct.tc_action*)*, i64 (%struct.sk_buff*, %struct.tc_action*)** %54, align 8
  %56 = icmp ne i64 (%struct.sk_buff*, %struct.tc_action*)* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %59 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64 (%struct.sk_buff*, %struct.tc_action*)*, i64 (%struct.sk_buff*, %struct.tc_action*)** %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %65 = call i64 %62(%struct.sk_buff* %63, %struct.tc_action* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %90

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %50, %45
  %70 = load %struct.tcf_act_hdr*, %struct.tcf_act_hdr** %10, align 8
  %71 = getelementptr inbounds %struct.tcf_act_hdr, %struct.tcf_act_hdr* %70, i32 0, i32 2
  %72 = call i64 @gnet_stats_copy_basic(%struct.gnet_dump* %9, i32* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load %struct.tcf_act_hdr*, %struct.tcf_act_hdr** %10, align 8
  %76 = getelementptr inbounds %struct.tcf_act_hdr, %struct.tcf_act_hdr* %75, i32 0, i32 1
  %77 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %9, i32* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.tcf_act_hdr*, %struct.tcf_act_hdr** %10, align 8
  %81 = getelementptr inbounds %struct.tcf_act_hdr, %struct.tcf_act_hdr* %80, i32 0, i32 0
  %82 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %9, i32* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74, %69
  br label %90

85:                                               ; preds = %79
  %86 = call i64 @gnet_stats_finish_copy(%struct.gnet_dump* %9)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %90

89:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %91

90:                                               ; preds = %88, %84, %67, %44, %16
  store i32 -1, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %89, %33
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @gnet_stats_start_copy_compat(%struct.sk_buff*, i32, i32, i32, i32*, %struct.gnet_dump*) #1

declare dso_local i32 @gnet_stats_start_copy(%struct.sk_buff*, i32, i32*, %struct.gnet_dump*) #1

declare dso_local i64 @gnet_stats_copy_basic(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_finish_copy(%struct.gnet_dump*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
