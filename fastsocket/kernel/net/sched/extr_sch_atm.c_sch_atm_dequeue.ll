; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_sch_atm_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_sch_atm_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.atm_qdisc_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.atm_flow_data* }
%struct.atm_flow_data = type { i64, %struct.TYPE_12__*, i32, %struct.TYPE_13__*, %struct.atm_flow_data* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32, %struct.atm_qdisc_data* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.sk_buff* (%struct.TYPE_13__*)* }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"sch_atm_dequeue(sch %p,[qdisc %p])\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"atm_tc_dequeue: sending on class %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"sch_atm_dequeue: ip %p, data %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sch_atm_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sch_atm_dequeue(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.atm_qdisc_data*, align 8
  %5 = alloca %struct.atm_flow_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.Qdisc*
  store %struct.Qdisc* %9, %struct.Qdisc** %3, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %11 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.atm_qdisc_data* %11, %struct.atm_qdisc_data** %4, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %13 = bitcast %struct.Qdisc* %12 to %struct.atm_flow_data*
  %14 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %4, align 8
  %15 = call i32 (i8*, %struct.atm_flow_data*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.atm_flow_data* %13, %struct.atm_qdisc_data* %14)
  %16 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %4, align 8
  %17 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.atm_flow_data*, %struct.atm_flow_data** %18, align 8
  store %struct.atm_flow_data* %19, %struct.atm_flow_data** %5, align 8
  br label %20

20:                                               ; preds = %131, %1
  %21 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %22 = icmp ne %struct.atm_flow_data* %21, null
  br i1 %22, label %23, label %135

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %85, %82, %23
  %25 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %26 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %25, i32 0, i32 3
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.sk_buff* (%struct.TYPE_13__*)*, %struct.sk_buff* (%struct.TYPE_13__*)** %30, align 8
  %32 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %33 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %32, i32 0, i32 3
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = call %struct.sk_buff* %31(%struct.TYPE_13__* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %6, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %130

37:                                               ; preds = %24
  %38 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %39 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @atm_may_send(%struct.TYPE_12__* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %130

47:                                               ; preds = %37
  %48 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %49 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %48, i32 0, i32 3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = call %struct.sk_buff* @qdisc_dequeue_peeked(%struct.TYPE_13__* %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %6, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %130

59:                                               ; preds = %47
  %60 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %61 = call i32 (i8*, %struct.atm_flow_data*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.atm_flow_data* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call i32 @skb_network_offset(%struct.sk_buff* %63)
  %65 = call i32 @skb_pull(%struct.sk_buff* %62, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i64 @skb_headroom(%struct.sk_buff* %66)
  %68 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %69 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %59
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %75 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %73, i64 %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %7, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = call i32 @dev_kfree_skb(%struct.sk_buff* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = icmp ne %struct.sk_buff* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  br label %24

83:                                               ; preds = %72
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %84, %struct.sk_buff** %6, align 8
  br label %85

85:                                               ; preds = %83, %59
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = call %struct.Qdisc* @skb_network_header(%struct.sk_buff* %86)
  %88 = bitcast %struct.Qdisc* %87 to %struct.atm_flow_data*
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 1
  %91 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %90, align 8
  %92 = call i32 (i8*, %struct.atm_flow_data*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.atm_flow_data* %88, %struct.atm_qdisc_data* %91)
  %93 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %94 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call %struct.TYPE_15__* @ATM_SKB(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %98, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %101 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @skb_push(%struct.sk_buff* %99, i64 %102)
  %104 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %105 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %108 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @memcpy(i32 %103, i32 %106, i64 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %115 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = call %struct.TYPE_14__* @sk_atm(%struct.TYPE_12__* %116)
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = call i32 @atomic_add(i32 %113, i32* %118)
  %120 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %121 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32 (%struct.TYPE_12__*, %struct.sk_buff*)*, i32 (%struct.TYPE_12__*, %struct.sk_buff*)** %123, align 8
  %125 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %126 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = call i32 %124(%struct.TYPE_12__* %127, %struct.sk_buff* %128)
  br label %24

130:                                              ; preds = %58, %46, %24
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.atm_flow_data*, %struct.atm_flow_data** %5, align 8
  %133 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %132, i32 0, i32 4
  %134 = load %struct.atm_flow_data*, %struct.atm_flow_data** %133, align 8
  store %struct.atm_flow_data* %134, %struct.atm_flow_data** %5, align 8
  br label %20

135:                                              ; preds = %20
  ret void
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.atm_flow_data*, ...) #1

declare dso_local i32 @atm_may_send(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.sk_buff* @qdisc_dequeue_peeked(%struct.TYPE_13__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.Qdisc* @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_15__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @sk_atm(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
