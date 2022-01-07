; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_mirred.c_tcf_mirred_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_mirred.c_tcf_mirred_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_mirred* }
%struct.tcf_mirred = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.tc_mirred = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@TCA_MIRRED_PARMS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCA_MIRRED_TM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_mirred_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_mirred_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_mirred*, align 8
  %12 = alloca %struct.tc_mirred, align 8
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
  %18 = load %struct.tcf_mirred*, %struct.tcf_mirred** %17, align 8
  store %struct.tcf_mirred* %18, %struct.tcf_mirred** %11, align 8
  %19 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 0
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 2
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 3
  %23 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %24 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %22, align 8
  %26 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 4
  %27 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %28 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 5
  %31 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %32 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %30, align 8
  %36 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 6
  %37 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %38 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %36, align 4
  %42 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 7
  %43 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %44 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %42, align 8
  %46 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 8
  %47 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %48 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load i32, i32* @TCA_MIRRED_PARMS, align 4
  %52 = bitcast %struct.tc_mirred* %12 to %struct.tcf_t*
  %53 = call i32 @NLA_PUT(%struct.sk_buff* %50, i32 %51, i32 48, %struct.tcf_t* %52)
  %54 = load i64, i64* @jiffies, align 8
  %55 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %56 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %54, %58
  %60 = call i8* @jiffies_to_clock_t(i64 %59)
  %61 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  %62 = load i64, i64* @jiffies, align 8
  %63 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %64 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %62, %66
  %68 = call i8* @jiffies_to_clock_t(i64 %67)
  %69 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %71 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @jiffies_to_clock_t(i64 %73)
  %75 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load i32, i32* @TCA_MIRRED_TM, align 4
  %78 = call i32 @NLA_PUT(%struct.sk_buff* %76, i32 %77, i32 48, %struct.tcf_t* %13)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %5, align 4
  br label %86

82:                                               ; No predecessors!
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @nlmsg_trim(%struct.sk_buff* %83, i8* %84)
  store i32 -1, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %4
  %87 = load i32, i32* %5, align 4
  ret i32 %87
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
