; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.hfsc_sched = type { i32 }
%struct.hfsc_class = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"HFSC\00", align 1
@HFSC_RSC = common dso_local global i32 0, align 4
@TCQ_F_THROTTLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @hfsc_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @hfsc_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.hfsc_sched*, align 8
  %5 = alloca %struct.hfsc_class*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %11 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.hfsc_sched* %11, %struct.hfsc_sched** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %13 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %118

18:                                               ; preds = %1
  %19 = call i32 (...) @psched_get_time()
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hfsc_sched*, %struct.hfsc_sched** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.hfsc_class* @eltree_get_mindl(%struct.hfsc_sched* %20, i32 %21)
  store %struct.hfsc_class* %22, %struct.hfsc_class** %5, align 8
  %23 = icmp ne %struct.hfsc_class* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %41

25:                                               ; preds = %18
  %26 = load %struct.hfsc_sched*, %struct.hfsc_sched** %4, align 8
  %27 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.hfsc_class* @vttree_get_minvt(i32* %27, i32 %28)
  store %struct.hfsc_class* %29, %struct.hfsc_class** %5, align 8
  %30 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %31 = icmp eq %struct.hfsc_class* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %34 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %39 = call i32 @hfsc_schedule_watchdog(%struct.Qdisc* %38)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %118

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %43 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = call %struct.sk_buff* @qdisc_dequeue_peeked(%struct.TYPE_10__* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = icmp eq %struct.sk_buff* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %50 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @qdisc_warn_nonwc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %51)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %118

53:                                               ; preds = %41
  %54 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i64 @qdisc_pkt_len(%struct.sk_buff* %55)
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @update_vf(%struct.hfsc_class* %54, i64 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i64 @qdisc_pkt_len(%struct.sk_buff* %62)
  %64 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %65 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  br label %70

70:                                               ; preds = %61, %53
  %71 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %72 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %70
  %79 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %80 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HFSC_RSC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %78
  %86 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %87 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = call i32 @qdisc_peek_len(%struct.TYPE_10__* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @update_ed(%struct.hfsc_class* %93, i32 %94)
  br label %100

96:                                               ; preds = %85
  %97 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @update_d(%struct.hfsc_class* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %78
  br label %105

102:                                              ; preds = %70
  %103 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %104 = call i32 @set_passive(%struct.hfsc_class* %103)
  br label %105

105:                                              ; preds = %102, %101
  %106 = load i32, i32* @TCQ_F_THROTTLED, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %109 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %113 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, -1
  store i64 %116, i64* %114, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %117, %struct.sk_buff** %2, align 8
  br label %118

118:                                              ; preds = %105, %48, %32, %17
  %119 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %119
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @psched_get_time(...) #1

declare dso_local %struct.hfsc_class* @eltree_get_mindl(%struct.hfsc_sched*, i32) #1

declare dso_local %struct.hfsc_class* @vttree_get_minvt(i32*, i32) #1

declare dso_local i32 @hfsc_schedule_watchdog(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @qdisc_dequeue_peeked(%struct.TYPE_10__*) #1

declare dso_local i32 @qdisc_warn_nonwc(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @update_vf(%struct.hfsc_class*, i64, i32) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_peek_len(%struct.TYPE_10__*) #1

declare dso_local i32 @update_ed(%struct.hfsc_class*, i32) #1

declare dso_local i32 @update_d(%struct.hfsc_class*, i32) #1

declare dso_local i32 @set_passive(%struct.hfsc_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
