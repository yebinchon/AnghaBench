; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tc_action*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.tcf_result = type { i32 }

@TC_NCLS = common dso_local global i32 0, align 4
@TC_ACT_OK = common dso_local global i32 0, align 4
@TC_MUNGED = common dso_local global i32 0, align 4
@TC_ACT_REPEAT = common dso_local global i32 0, align 4
@TC_ACT_PIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_exec(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tc_action*, align 8
  %6 = alloca %struct.tcf_result*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tc_action* %1, %struct.tc_action** %5, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %6, align 8
  store i32 -1, i32* %8, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TC_NCLS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CLR_TC_NCLS(i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %22, i32* %8, align 4
  br label %87

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %82, %23
  %25 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  store %struct.tc_action* %25, %struct.tc_action** %7, align 8
  %26 = icmp ne %struct.tc_action* %25, null
  br i1 %26, label %27, label %86

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %75, %27
  %29 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %30 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %82

33:                                               ; preds = %28
  %34 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %35 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)**
  %39 = load i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)*, i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)** %38, align 8
  %40 = icmp ne i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* %39, null
  br i1 %40, label %41, label %82

41:                                               ; preds = %33
  %42 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %43 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)**
  %47 = load i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)*, i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)** %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %50 = load %struct.tcf_result*, %struct.tcf_result** %6, align 8
  %51 = call i32 %47(%struct.sk_buff* %48, %struct.tc_action* %49, %struct.tcf_result* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @TC_MUNGED, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %41
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SET_TC_OK2MUNGE(i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CLR_TC_MUNGED(i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %58, %41
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @TC_ACT_REPEAT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %28

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @TC_ACT_PIPE, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %87

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %33, %28
  %83 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %84 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %83, i32 0, i32 0
  %85 = load %struct.tc_action*, %struct.tc_action** %84, align 8
  store %struct.tc_action* %85, %struct.tc_action** %5, align 8
  br label %24

86:                                               ; preds = %24
  br label %87

87:                                               ; preds = %86, %80, %15
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @CLR_TC_NCLS(i32) #1

declare dso_local i32 @SET_TC_OK2MUNGE(i32) #1

declare dso_local i32 @CLR_TC_MUNGED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
