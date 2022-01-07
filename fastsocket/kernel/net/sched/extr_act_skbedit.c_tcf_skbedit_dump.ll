; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_skbedit.c_tcf_skbedit_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_skbedit.c_tcf_skbedit_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_skbedit* }
%struct.tcf_skbedit = type { i32, %struct.TYPE_2__, %struct.tcf_t, %struct.tcf_t, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.tcf_t = type { i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.tc_skbedit = type { i8*, i8*, i8*, i32, i32, i32, i32 }

@TCA_SKBEDIT_PARMS = common dso_local global i32 0, align 4
@SKBEDIT_F_PRIORITY = common dso_local global i32 0, align 4
@TCA_SKBEDIT_PRIORITY = common dso_local global i32 0, align 4
@SKBEDIT_F_QUEUE_MAPPING = common dso_local global i32 0, align 4
@TCA_SKBEDIT_QUEUE_MAPPING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCA_SKBEDIT_TM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_skbedit_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_skbedit_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_skbedit*, align 8
  %12 = alloca %struct.tc_skbedit, align 8
  %13 = alloca %struct.tcf_t, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i8* @skb_tail_pointer(%struct.sk_buff* %14)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %17 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %16, i32 0, i32 0
  %18 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %17, align 8
  store %struct.tcf_skbedit* %18, %struct.tcf_skbedit** %11, align 8
  %19 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %12, i32 0, i32 0
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %12, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %12, i32 0, i32 2
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %12, i32 0, i32 3
  %23 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %24 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %22, align 8
  %26 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %12, i32 0, i32 4
  %27 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %28 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %26, align 4
  %32 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %12, i32 0, i32 5
  %33 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %34 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %32, align 8
  %38 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %12, i32 0, i32 6
  %39 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %40 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %38, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load i32, i32* @TCA_SKBEDIT_PARMS, align 4
  %44 = bitcast %struct.tc_skbedit* %12 to %struct.tcf_t*
  %45 = call i32 @NLA_PUT(%struct.sk_buff* %42, i32 %43, i32 40, %struct.tcf_t* %44)
  %46 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %47 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SKBEDIT_F_PRIORITY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load i32, i32* @TCA_SKBEDIT_PRIORITY, align 4
  %55 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %56 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %55, i32 0, i32 3
  %57 = call i32 @NLA_PUT(%struct.sk_buff* %53, i32 %54, i32 40, %struct.tcf_t* %56)
  br label %58

58:                                               ; preds = %52, %4
  %59 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %60 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SKBEDIT_F_QUEUE_MAPPING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load i32, i32* @TCA_SKBEDIT_QUEUE_MAPPING, align 4
  %68 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %69 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %68, i32 0, i32 2
  %70 = call i32 @NLA_PUT(%struct.sk_buff* %66, i32 %67, i32 40, %struct.tcf_t* %69)
  br label %71

71:                                               ; preds = %65, %58
  %72 = load i64, i64* @jiffies, align 8
  %73 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %74 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %72, %76
  %78 = call i8* @jiffies_to_clock_t(i64 %77)
  %79 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 2
  store i8* %78, i8** %79, align 8
  %80 = load i64, i64* @jiffies, align 8
  %81 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %82 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %80, %84
  %86 = call i8* @jiffies_to_clock_t(i64 %85)
  %87 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 1
  store i8* %86, i8** %87, align 8
  %88 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %11, align 8
  %89 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @jiffies_to_clock_t(i64 %91)
  %93 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load i32, i32* @TCA_SKBEDIT_TM, align 4
  %96 = call i32 @NLA_PUT(%struct.sk_buff* %94, i32 %95, i32 40, %struct.tcf_t* %13)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %5, align 4
  br label %104

100:                                              ; No predecessors!
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @nlmsg_trim(%struct.sk_buff* %101, i8* %102)
  store i32 -1, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %71
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tcf_t*) #1

declare dso_local i8* @jiffies_to_clock_t(i64) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
