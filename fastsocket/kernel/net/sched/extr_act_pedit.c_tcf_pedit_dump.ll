; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_pedit.c_tcf_pedit_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_pedit.c_tcf_pedit_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_pedit* }
%struct.tcf_pedit = type { i32, %struct.TYPE_2__, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.tc_pedit = type { i32, i8*, i8*, i8*, i64, i64, i32, i32, i32, i32 }
%struct.tcf_t = type { i32, i8*, i8*, i8*, i64, i64, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TCA_PEDIT_PARMS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCA_PEDIT_TM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_pedit_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_pedit_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_pedit*, align 8
  %12 = alloca %struct.tc_pedit*, align 8
  %13 = alloca %struct.tcf_t, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %17, i32 0, i32 0
  %19 = load %struct.tcf_pedit*, %struct.tcf_pedit** %18, align 8
  store %struct.tcf_pedit* %19, %struct.tcf_pedit** %11, align 8
  %20 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %21 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 64, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.tcf_t* @kzalloc(i32 %27, i32 %28)
  %30 = bitcast %struct.tcf_t* %29 to %struct.tc_pedit*
  store %struct.tc_pedit* %30, %struct.tc_pedit** %12, align 8
  %31 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %32 = icmp ne %struct.tc_pedit* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %134

40:                                               ; preds = %4
  %41 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %42 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %45 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %48 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i32 %43, i32 %46, i32 %52)
  %54 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %55 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %58 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %60 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %63 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %65 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %68 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %70 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %73 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %75 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %76, %78
  %80 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %81 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  %82 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %83 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %84, %86
  %88 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %89 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = load i32, i32* @TCA_PEDIT_PARMS, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %94 = bitcast %struct.tc_pedit* %93 to %struct.tcf_t*
  %95 = call i32 @NLA_PUT(%struct.sk_buff* %90, i32 %91, i32 %92, %struct.tcf_t* %94)
  %96 = load i64, i64* @jiffies, align 8
  %97 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %98 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %96, %100
  %102 = call i8* @jiffies_to_clock_t(i64 %101)
  %103 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 3
  store i8* %102, i8** %103, align 8
  %104 = load i64, i64* @jiffies, align 8
  %105 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %106 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %104, %108
  %110 = call i8* @jiffies_to_clock_t(i64 %109)
  %111 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 2
  store i8* %110, i8** %111, align 8
  %112 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %113 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @jiffies_to_clock_t(i64 %115)
  %117 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %13, i32 0, i32 1
  store i8* %116, i8** %117, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load i32, i32* @TCA_PEDIT_TM, align 4
  %120 = call i32 @NLA_PUT(%struct.sk_buff* %118, i32 %119, i32 64, %struct.tcf_t* %13)
  %121 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %122 = bitcast %struct.tc_pedit* %121 to %struct.tcf_t*
  %123 = call i32 @kfree(%struct.tcf_t* %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %5, align 4
  br label %134

127:                                              ; No predecessors!
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @nlmsg_trim(%struct.sk_buff* %128, i8* %129)
  %131 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %132 = bitcast %struct.tc_pedit* %131 to %struct.tcf_t*
  %133 = call i32 @kfree(%struct.tcf_t* %132)
  store i32 -1, i32* %5, align 4
  br label %134

134:                                              ; preds = %127, %40, %37
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_t* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tcf_t*) #1

declare dso_local i8* @jiffies_to_clock_t(i64) #1

declare dso_local i32 @kfree(%struct.tcf_t*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
