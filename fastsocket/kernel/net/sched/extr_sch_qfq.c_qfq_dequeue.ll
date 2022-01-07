; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qfq_sched = type { i64, i32* }
%struct.qfq_group = type { i64, i64, i64, i32 }
%struct.qfq_class = type { i32, i64, i32 }

@ER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"qfq_dequeue: non-workconserving leaf\0A\00", align 1
@IWSUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"qfq dequeue: len %u F %lld now %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @qfq_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @qfq_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qfq_sched*, align 8
  %5 = alloca %struct.qfq_group*, align 8
  %6 = alloca %struct.qfq_class*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %14 = call %struct.qfq_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.qfq_sched* %14, %struct.qfq_sched** %4, align 8
  %15 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %16 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @ER, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %152

23:                                               ; preds = %1
  %24 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %25 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %26 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @ER, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.qfq_group* @qfq_ffs(%struct.qfq_sched* %24, i32 %30)
  store %struct.qfq_group* %31, %struct.qfq_group** %5, align 8
  %32 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %33 = call %struct.qfq_class* @qfq_slot_head(%struct.qfq_group* %32)
  store %struct.qfq_class* %33, %struct.qfq_class** %6, align 8
  %34 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %35 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.sk_buff* @qdisc_dequeue_peeked(i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %7, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %23
  %41 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %152

42:                                               ; preds = %23
  %43 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %49 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i32 @qdisc_pkt_len(%struct.sk_buff* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @IWSUM, align 8
  %56 = mul nsw i64 %54, %55
  %57 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %58 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %63 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %66 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %64, i64 %67)
  %69 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %70 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %71 = call i64 @qfq_update_class(%struct.qfq_group* %69, %struct.qfq_class* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %146

73:                                               ; preds = %42
  %74 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %75 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %10, align 8
  %77 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %78 = call %struct.qfq_class* @qfq_slot_scan(%struct.qfq_group* %77)
  store %struct.qfq_class* %78, %struct.qfq_class** %6, align 8
  %79 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %80 = icmp ne %struct.qfq_class* %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %73
  %82 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %83 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %86 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @ER, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = call i32 @__clear_bit(i32 %84, i32* %89)
  br label %139

91:                                               ; preds = %73
  %92 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %93 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %96 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @qfq_round_down(i32 %94, i64 %97)
  store i64 %98, i64* %11, align 8
  %99 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %100 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %147

105:                                              ; preds = %91
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %108 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %111 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = shl i64 2, %112
  %114 = add i64 %109, %113
  %115 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %116 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %118 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %121 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @ER, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = call i32 @__clear_bit(i32 %119, i32* %124)
  %126 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %127 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %128 = call i32 @qfq_calc_state(%struct.qfq_sched* %126, %struct.qfq_group* %127)
  store i32 %128, i32* %12, align 4
  %129 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %130 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %133 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = call i32 @__set_bit(i32 %131, i32* %137)
  br label %139

139:                                              ; preds = %105, %81
  %140 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %141 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %142 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @qfq_unblock_groups(%struct.qfq_sched* %140, i32 %143, i64 %144)
  br label %146

146:                                              ; preds = %139, %42
  br label %147

147:                                              ; preds = %146, %104
  %148 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @qfq_update_eligible(%struct.qfq_sched* %148, i64 %149)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %151, %struct.sk_buff** %2, align 8
  br label %152

152:                                              ; preds = %147, %40, %22
  %153 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %153
}

declare dso_local %struct.qfq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.qfq_group* @qfq_ffs(%struct.qfq_sched*, i32) #1

declare dso_local %struct.qfq_class* @qfq_slot_head(%struct.qfq_group*) #1

declare dso_local %struct.sk_buff* @qdisc_dequeue_peeked(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64) #1

declare dso_local i64 @qfq_update_class(%struct.qfq_group*, %struct.qfq_class*) #1

declare dso_local %struct.qfq_class* @qfq_slot_scan(%struct.qfq_group*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i64 @qfq_round_down(i32, i64) #1

declare dso_local i32 @qfq_calc_state(%struct.qfq_sched*, %struct.qfq_group*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @qfq_unblock_groups(%struct.qfq_sched*, i32, i64) #1

declare dso_local i32 @qfq_update_eligible(%struct.qfq_sched*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
