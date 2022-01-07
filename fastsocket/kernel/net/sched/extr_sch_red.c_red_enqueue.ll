; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_red.c_red_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_red.c_red_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.red_sched_data = type { %struct.TYPE_11__, %struct.TYPE_13__, %struct.Qdisc* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*)* @red_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.red_sched_data*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %10 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.red_sched_data* %10, %struct.red_sched_data** %6, align 8
  %11 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %12 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %11, i32 0, i32 2
  %13 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  store %struct.Qdisc* %13, %struct.Qdisc** %7, align 8
  %14 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %15 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %14, i32 0, i32 1
  %16 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %17 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @red_calc_qavg(%struct.TYPE_13__* %15, i32 %19)
  %21 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %22 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %25 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %24, i32 0, i32 1
  %26 = call i64 @red_is_idling(%struct.TYPE_13__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %30 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %29, i32 0, i32 1
  %31 = call i32 @red_end_of_idle_period(%struct.TYPE_13__* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %34 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %33, i32 0, i32 1
  %35 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %36 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @red_action(%struct.TYPE_13__* %34, i32 %38)
  switch i32 %39, label %95 [
    i32 130, label %40
    i32 128, label %41
    i32 129, label %66
  ]

40:                                               ; preds = %32
  br label %95

41:                                               ; preds = %32
  %42 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %43 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %48 = call i32 @red_use_ecn(%struct.red_sched_data* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50, %41
  %55 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %56 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %143

60:                                               ; preds = %50
  %61 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %62 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %95

66:                                               ; preds = %32
  %67 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %68 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %73 = call i32 @red_use_harddrop(%struct.red_sched_data* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %66
  %76 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %77 = call i32 @red_use_ecn(%struct.red_sched_data* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79, %75, %66
  %84 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %85 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %143

89:                                               ; preds = %79
  %90 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %91 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %32, %89, %60, %40
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %98 = call i32 @qdisc_enqueue(%struct.sk_buff* %96, %struct.Qdisc* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 @likely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %95
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call i64 @qdisc_pkt_len(%struct.sk_buff* %106)
  %108 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %109 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %107
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  %115 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %116 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %121 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %141

125:                                              ; preds = %95
  %126 = load i32, i32* %8, align 4
  %127 = call i64 @net_xmit_drop_count(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %131 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %136 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %129, %125
  br label %141

141:                                              ; preds = %140, %105
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %148

143:                                              ; preds = %83, %54
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %146 = call i32 @qdisc_drop(%struct.sk_buff* %144, %struct.Qdisc* %145)
  %147 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %143, %141
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @red_calc_qavg(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @red_is_idling(%struct.TYPE_13__*) #1

declare dso_local i32 @red_end_of_idle_period(%struct.TYPE_13__*) #1

declare dso_local i32 @red_action(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @red_use_ecn(%struct.red_sched_data*) #1

declare dso_local i32 @INET_ECN_set_ce(%struct.sk_buff*) #1

declare dso_local i32 @red_use_harddrop(%struct.red_sched_data*) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
