; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.qfq_sched = type { i32 }
%struct.qfq_class = type { i64, %struct.TYPE_16__*, %struct.TYPE_12__, %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"qfq_enqueue: cl = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"qfq: increasing maxpkt from %u to %u for class %u\00", align 1
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"qfq_enqueue: enqueue failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*)* @qfq_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.qfq_sched*, align 8
  %7 = alloca %struct.qfq_class*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %10 = call %struct.qfq_sched* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.qfq_sched* %10, %struct.qfq_sched** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = call %struct.qfq_class* @qfq_classify(%struct.sk_buff* %11, %struct.Qdisc* %12, i32* %8)
  store %struct.qfq_class* %13, %struct.qfq_class** %7, align 8
  %14 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %15 = icmp eq %struct.qfq_class* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @kfree_skb(%struct.sk_buff* %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %147

31:                                               ; preds = %2
  %32 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %33 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %38 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i64 @qdisc_pkt_len(%struct.sk_buff* %40)
  %42 = icmp slt i64 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %31
  %47 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %48 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i64 @qdisc_pkt_len(%struct.sk_buff* %51)
  %53 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %54 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %52, i32 %56)
  %58 = load %struct.qfq_sched*, %struct.qfq_sched** %6, align 8
  %59 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %60 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %61 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i64 @qdisc_pkt_len(%struct.sk_buff* %63)
  %65 = call i32 @qfq_update_reactivate_class(%struct.qfq_sched* %58, %struct.qfq_class* %59, i32 %62, i64 %64, i32 0)
  br label %66

66:                                               ; preds = %46, %31
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %69 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %68, i32 0, i32 1
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = call i32 @qdisc_enqueue(%struct.sk_buff* %67, %struct.TYPE_16__* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @net_xmit_drop_count(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %86 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %91 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %84, %78
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %147

97:                                               ; preds = %66
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call i64 @qdisc_pkt_len(%struct.sk_buff* %98)
  %100 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %101 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %99
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %108 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = call i64 @qdisc_pkt_len(%struct.sk_buff* %112)
  %114 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %115 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %113
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %122 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %127 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %132 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %97
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %3, align 4
  br label %147

140:                                              ; preds = %97
  %141 = load %struct.qfq_sched*, %struct.qfq_sched** %6, align 8
  %142 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = call i64 @qdisc_pkt_len(%struct.sk_buff* %143)
  %145 = call i32 @qfq_activate_class(%struct.qfq_sched* %141, %struct.qfq_class* %142, i64 %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %140, %138, %95, %27
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.qfq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.qfq_class* @qfq_classify(%struct.sk_buff*, %struct.Qdisc*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qfq_update_reactivate_class(%struct.qfq_sched*, %struct.qfq_class*, i32, i64, i32) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, %struct.TYPE_16__*) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @qfq_activate_class(%struct.qfq_sched*, %struct.qfq_class*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
