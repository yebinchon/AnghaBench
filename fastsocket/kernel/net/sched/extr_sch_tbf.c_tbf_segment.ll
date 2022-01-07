; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_tbf.c_tbf_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_tbf.c_tbf_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.sk_buff* }
%struct.Qdisc = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tbf_sched_data = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }

@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*)* @tbf_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbf_segment(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.tbf_sched_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = call %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.tbf_sched_data* %13, %struct.tbf_sched_data** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @netif_skb_features(%struct.sk_buff* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @NETIF_F_GSO_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %16, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call i64 @IS_ERR_OR_NULL(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %28 = call i32 @qdisc_reshape_fail(%struct.sk_buff* %26, %struct.Qdisc* %27)
  store i32 %28, i32* %3, align 4
  br label %110

29:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %83, %29
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %85

33:                                               ; preds = %30
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %43 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %33
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call %struct.TYPE_6__* @qdisc_skb_cb(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %6, align 8
  %58 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @qdisc_enqueue(%struct.sk_buff* %56, i32 %59)
  store i32 %60, i32* %10, align 4
  br label %65

61:                                               ; preds = %33
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %64 = call i32 @qdisc_reshape_fail(%struct.sk_buff* %62, %struct.Qdisc* %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %49
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @net_xmit_drop_count(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %75 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %69
  br label %83

80:                                               ; preds = %65
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %80, %79
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %84, %struct.sk_buff** %7, align 8
  br label %30

85:                                               ; preds = %30
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %88 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 1, %96
  %98 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %95, i32 %97)
  br label %99

99:                                               ; preds = %94, %85
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @consume_skb(%struct.sk_buff* %100)
  %102 = load i32, i32* %11, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  br label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @NET_XMIT_DROP, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %25
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @netif_skb_features(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_reshape_fail(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_6__* @qdisc_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, i32) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @qdisc_tree_decrease_qlen(%struct.Qdisc*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
