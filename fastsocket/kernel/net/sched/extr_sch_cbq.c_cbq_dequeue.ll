; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.cbq_sched_data = type { i64, i64, i64, i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }

@TCQ_F_THROTTLED = common dso_local global i32 0, align 4
@TC_CBQ_MAXLEVEL = common dso_local global i64 0, align 8
@PSCHED_PASTPERFECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @cbq_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cbq_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cbq_sched_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.cbq_sched_data* %10, %struct.cbq_sched_data** %5, align 8
  %11 = call i64 (...) @psched_get_time()
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %14 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  store i64 %16, i64* %7, align 8
  %17 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %18 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %23 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %22, i32 0, i32 4
  %24 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %25 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @L2T(%struct.TYPE_6__* %23, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %30 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %36 = call i32 @cbq_update(%struct.cbq_sched_data* %35)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %46 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %53 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %88, %43
  %55 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %56 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %58 = call %struct.sk_buff* @cbq_dequeue_1(%struct.Qdisc* %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %63 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = load i32, i32* @TCQ_F_THROTTLED, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %70 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %73, %struct.sk_buff** %2, align 8
  br label %123

74:                                               ; preds = %54
  %75 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %76 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TC_CBQ_MAXLEVEL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %82 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %96

88:                                               ; preds = %80, %74
  %89 = load i64, i64* @TC_CBQ_MAXLEVEL, align 8
  %90 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %91 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %93 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %94 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  br label %54

96:                                               ; preds = %87
  %97 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %98 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %96
  %103 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %104 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %109 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %102
  %113 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %114 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %113, i32 0, i32 3
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %117 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %115, %118
  %120 = call i32 @qdisc_watchdog_schedule(i32* %114, i64 %119)
  br label %121

121:                                              ; preds = %112, %102
  br label %122

122:                                              ; preds = %121, %96
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %123

123:                                              ; preds = %122, %61
  %124 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %124
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @psched_get_time(...) #1

declare dso_local i64 @L2T(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cbq_update(%struct.cbq_sched_data*) #1

declare dso_local %struct.sk_buff* @cbq_dequeue_1(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_watchdog_schedule(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
