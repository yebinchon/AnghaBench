; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_simple.c_tcf_simp_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_simple.c_tcf_simp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_defact* }
%struct.tcf_defact = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.tc_defact = type { i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.tcf_t = type { i8*, i8*, i8*, i32, i32, i32, i32 }

@TCA_DEF_PARMS = common dso_local global i32 0, align 4
@TCA_DEF_DATA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCA_DEF_TM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_simp_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_simp_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_defact*, align 8
  %12 = alloca %struct.tc_defact, align 8
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
  %18 = load %struct.tcf_defact*, %struct.tcf_defact** %17, align 8
  store %struct.tcf_defact* %18, %struct.tcf_defact** %11, align 8
  %19 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 0
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 2
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 3
  %23 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %24 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 8
  %26 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 4
  %27 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %28 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %26, align 4
  %32 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 5
  %33 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %34 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %32, align 8
  %38 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 6
  %39 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %40 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %38, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load i32, i32* @TCA_DEF_PARMS, align 4
  %44 = bitcast %struct.tc_defact* %12 to %struct.tcf_t*
  %45 = call i32 @NLA_PUT(%struct.sk_buff* %42, i32 %43, i32 40, %struct.tcf_t* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load i32, i32* @TCA_DEF_DATA, align 4
  %48 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %49 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = load i64, i64* @jiffies, align 8
  %53 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %54 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %52, %56
  %58 = call i8* @jiffies_to_clock_t(i64 %57)
  %59 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = load i64, i64* @jiffies, align 8
  %61 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %62 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %60, %64
  %66 = call i8* @jiffies_to_clock_t(i64 %65)
  %67 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %69 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @jiffies_to_clock_t(i64 %71)
  %73 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load i32, i32* @TCA_DEF_TM, align 4
  %76 = call i32 @NLA_PUT(%struct.sk_buff* %74, i32 %75, i32 40, %struct.tcf_t* %13)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %5, align 4
  br label %84

80:                                               ; No predecessors!
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @nlmsg_trim(%struct.sk_buff* %81, i8* %82)
  store i32 -1, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %4
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tcf_t*) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i8* @jiffies_to_clock_t(i64) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
