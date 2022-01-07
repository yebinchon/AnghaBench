; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.drr_sched = type { i32 }
%struct.drr_class = type { %struct.TYPE_11__, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*)* @drr_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drr_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.drr_sched*, align 8
  %7 = alloca %struct.drr_class*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %5, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.drr_sched* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.drr_sched* %11, %struct.drr_sched** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %14 = call %struct.drr_class* @drr_classify(%struct.sk_buff* %12, %struct.Qdisc* %13, i32* %9)
  store %struct.drr_class* %14, %struct.drr_class** %7, align 8
  %15 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %16 = icmp eq %struct.drr_class* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %24 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @kfree_skb(%struct.sk_buff* %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %111

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @qdisc_pkt_len(%struct.sk_buff* %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %37 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %36, i32 0, i32 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = call i32 @qdisc_enqueue(%struct.sk_buff* %35, %struct.TYPE_14__* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @net_xmit_drop_count(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %52 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %57 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %50, %46
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %111

63:                                               ; preds = %32
  %64 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %65 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %64, i32 0, i32 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %63
  %72 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %73 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %72, i32 0, i32 3
  %74 = load %struct.drr_sched*, %struct.drr_sched** %6, align 8
  %75 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %74, i32 0, i32 0
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %78 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %81 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %71, %63
  %83 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %84 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %90 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add i32 %92, %88
  store i32 %93, i32* %91, align 8
  %94 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %95 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %101 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %106 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %82, %61, %28
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.drr_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.drr_class* @drr_classify(%struct.sk_buff*, %struct.Qdisc*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, %struct.TYPE_14__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
