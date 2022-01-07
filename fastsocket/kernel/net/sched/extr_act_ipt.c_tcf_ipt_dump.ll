; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_ipt.c_tcf_ipt_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_ipt.c_tcf_ipt_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_ipt* }
%struct.tcf_ipt = type { %struct.TYPE_15__, i32, i32, i32, %struct.TYPE_16__*, i64, i64 }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.ipt_entry_target = type { i8*, i8*, i8*, %struct.TYPE_10__, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.tcf_t = type { i8*, i8*, i8*, %struct.TYPE_10__, i64, i64 }
%struct.tc_cnt = type { i8*, i8*, i8*, %struct.TYPE_10__, i64, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCA_IPT_TARG = common dso_local global i32 0, align 4
@TCA_IPT_INDEX = common dso_local global i32 0, align 4
@TCA_IPT_HOOK = common dso_local global i32 0, align 4
@TCA_IPT_CNT = common dso_local global i32 0, align 4
@TCA_IPT_TABLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCA_IPT_TM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_ipt_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ipt_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_ipt*, align 8
  %12 = alloca %struct.ipt_entry_target*, align 8
  %13 = alloca %struct.tcf_t, align 8
  %14 = alloca %struct.tc_cnt, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %17, i32 0, i32 0
  %19 = load %struct.tcf_ipt*, %struct.tcf_ipt** %18, align 8
  store %struct.tcf_ipt* %19, %struct.tcf_ipt** %11, align 8
  %20 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %21 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %20, i32 0, i32 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %24 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %23, i32 0, i32 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.tcf_t* @kmemdup(%struct.TYPE_16__* %22, i32 %29, i32 %30)
  %32 = bitcast %struct.tcf_t* %31 to %struct.ipt_entry_target*
  store %struct.ipt_entry_target* %32, %struct.ipt_entry_target** %12, align 8
  %33 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %12, align 8
  %34 = icmp ne %struct.ipt_entry_target* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  br label %135

40:                                               ; preds = %4
  %41 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %42 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %43, %45
  %47 = getelementptr inbounds %struct.tc_cnt, %struct.tc_cnt* %14, i32 0, i32 5
  store i64 %46, i64* %47, align 8
  %48 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %49 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = getelementptr inbounds %struct.tc_cnt, %struct.tc_cnt* %14, i32 0, i32 4
  store i64 %53, i64* %54, align 8
  %55 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %12, align 8
  %56 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %61 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %60, i32 0, i32 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @strcpy(i32 %59, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load i32, i32* @TCA_IPT_TARG, align 4
  %72 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %73 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %72, i32 0, i32 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %12, align 8
  %80 = bitcast %struct.ipt_entry_target* %79 to %struct.tcf_t*
  %81 = call i32 @NLA_PUT(%struct.sk_buff* %70, i32 %71, i32 %78, %struct.tcf_t* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load i32, i32* @TCA_IPT_INDEX, align 4
  %84 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %85 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @NLA_PUT_U32(%struct.sk_buff* %82, i32 %83, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = load i32, i32* @TCA_IPT_HOOK, align 4
  %90 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %91 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @NLA_PUT_U32(%struct.sk_buff* %88, i32 %89, i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load i32, i32* @TCA_IPT_CNT, align 4
  %96 = bitcast %struct.tc_cnt* %14 to %struct.tcf_t*
  %97 = call i32 @NLA_PUT(%struct.sk_buff* %94, i32 %95, i32 48, %struct.tcf_t* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = load i32, i32* @TCA_IPT_TABLE, align 4
  %100 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %101 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %98, i32 %99, i32 %102)
  %104 = load i64, i64* @jiffies, align 8
  %105 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %106 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %104, %108
  %110 = call i8* @jiffies_to_clock_t(i64 %109)
  %111 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 2
  store i8* %110, i8** %111, align 8
  %112 = load i64, i64* @jiffies, align 8
  %113 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %114 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %112, %116
  %118 = call i8* @jiffies_to_clock_t(i64 %117)
  %119 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 1
  store i8* %118, i8** %119, align 8
  %120 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %121 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i8* @jiffies_to_clock_t(i64 %123)
  %125 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 0
  store i8* %124, i8** %125, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = load i32, i32* @TCA_IPT_TM, align 4
  %128 = call i32 @NLA_PUT(%struct.sk_buff* %126, i32 %127, i32 48, %struct.tcf_t* %13)
  %129 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %12, align 8
  %130 = bitcast %struct.ipt_entry_target* %129 to %struct.tcf_t*
  %131 = call i32 @kfree(%struct.tcf_t* %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %5, align 4
  br label %142

135:                                              ; preds = %39
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @nlmsg_trim(%struct.sk_buff* %136, i8* %137)
  %139 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %12, align 8
  %140 = bitcast %struct.ipt_entry_target* %139 to %struct.tcf_t*
  %141 = call i32 @kfree(%struct.tcf_t* %140)
  store i32 -1, i32* %5, align 4
  br label %142

142:                                              ; preds = %135, %40
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_t* @kmemdup(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tcf_t*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i8* @jiffies_to_clock_t(i64) #1

declare dso_local i32 @kfree(%struct.tcf_t*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
