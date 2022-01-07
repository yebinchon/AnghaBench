; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sfq_sched_data = type { i32, i32*, i64, i32*, i64*, %struct.TYPE_8__*, i64, i32*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SFQ_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @sfq_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfq_drop(%struct.Qdisc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sfq_sched_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.sfq_sched_data* %10, %struct.sfq_sched_data** %4, align 8
  %11 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %12 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %67

16:                                               ; preds = %1
  %17 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %18 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %17, i32 0, i32 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SFQ_DEPTH, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %28 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %27, i32 0, i32 5
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @qdisc_pkt_len(%struct.sk_buff* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %39 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %38, i32 0, i32 5
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = call i32 @__skb_unlink(%struct.sk_buff* %37, %struct.TYPE_8__* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @kfree_skb(%struct.sk_buff* %45)
  %47 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @sfq_dec(%struct.sfq_sched_data* %47, i32 %48)
  %50 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %51 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %56 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %62 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %165

67:                                               ; preds = %1
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %164

70:                                               ; preds = %67
  %71 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %72 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %75 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  %79 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %80 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %87 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %90 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %85, i32* %92, align 4
  %93 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %94 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %97 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %100 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %98, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %95
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %113 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %112, i32 0, i32 5
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.sk_buff*, %struct.sk_buff** %118, align 8
  store %struct.sk_buff* %119, %struct.sk_buff** %6, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = call i32 @qdisc_pkt_len(%struct.sk_buff* %120)
  store i32 %121, i32* %7, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %124 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %123, i32 0, i32 5
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = call i32 @__skb_unlink(%struct.sk_buff* %122, %struct.TYPE_8__* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = call i32 @kfree_skb(%struct.sk_buff* %130)
  %132 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @sfq_dec(%struct.sfq_sched_data* %132, i32 %133)
  %135 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %136 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* @SFQ_DEPTH, align 4
  %141 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %142 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %145 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %144, i32 0, i32 4
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32, i32* %143, i64 %150
  store i32 %140, i32* %151, align 4
  %152 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %153 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %159 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sub i32 %161, %157
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %165

164:                                              ; preds = %67
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %70, %16
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sfq_dec(%struct.sfq_sched_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
