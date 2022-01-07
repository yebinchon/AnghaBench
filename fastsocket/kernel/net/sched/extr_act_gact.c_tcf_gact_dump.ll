; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_gact.c_tcf_gact_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_gact.c_tcf_gact_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_gact* }
%struct.tcf_gact = type { %struct.TYPE_2__, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.tc_gact = type { i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32 }

@TCA_GACT_PARMS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCA_GACT_TM = common dso_local global i32 0, align 4
@TCA_GACT_PROB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_gact_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_gact_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_gact*, align 8
  %12 = alloca %struct.tc_gact, align 8
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
  %18 = load %struct.tcf_gact*, %struct.tcf_gact** %17, align 8
  store %struct.tcf_gact* %18, %struct.tcf_gact** %11, align 8
  %19 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 0
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 2
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 5
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 6
  %26 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %27 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %25, align 8
  %29 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 7
  %30 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %31 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %29, align 4
  %35 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 8
  %36 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %37 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %35, align 8
  %41 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 9
  %42 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %43 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %41, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* @TCA_GACT_PARMS, align 4
  %47 = bitcast %struct.tc_gact* %12 to %struct.tcf_t*
  %48 = call i32 @NLA_PUT(%struct.sk_buff* %45, i32 %46, i32 56, %struct.tcf_t* %47)
  %49 = load i64, i64* @jiffies, align 8
  %50 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %51 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %49, %53
  %55 = call i8* @jiffies_to_clock_t(i64 %54)
  %56 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load i64, i64* @jiffies, align 8
  %58 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %59 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %57, %61
  %63 = call i8* @jiffies_to_clock_t(i64 %62)
  %64 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %66 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @jiffies_to_clock_t(i64 %68)
  %70 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load i32, i32* @TCA_GACT_TM, align 4
  %73 = call i32 @NLA_PUT(%struct.sk_buff* %71, i32 %72, i32 56, %struct.tcf_t* %13)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  br label %81

77:                                               ; No predecessors!
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @nlmsg_trim(%struct.sk_buff* %78, i8* %79)
  store i32 -1, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %4
  %82 = load i32, i32* %5, align 4
  ret i32 %82
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
