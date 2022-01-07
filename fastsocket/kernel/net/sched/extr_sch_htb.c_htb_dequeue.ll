; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.htb_sched = type { i64, i64*, i32*, i32, i32, i32 }

@TCQ_F_THROTTLED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PSCHED_TICKS_PER_SEC = common dso_local global i32 0, align 4
@TC_HTB_MAXDEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @htb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @htb_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.htb_sched*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %13 = call %struct.htb_sched* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.htb_sched* %13, %struct.htb_sched** %5, align 8
  %14 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %15 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %14, i32 0, i32 5
  %16 = call %struct.sk_buff* @__skb_dequeue(i32* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @TCQ_F_THROTTLED, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %2, align 8
  br label %174

32:                                               ; preds = %1
  %33 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %34 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %172

39:                                               ; preds = %32
  %40 = call i64 (...) @psched_get_time()
  %41 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %42 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* @jiffies, align 8
  store i64 %43, i64* %8, align 8
  %44 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %45 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @PSCHED_TICKS_PER_SEC, align 4
  %48 = mul nsw i32 5, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %145, %39
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @TC_HTB_MAXDEPTH, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %148

55:                                               ; preds = %51
  %56 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %57 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %60 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %58, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %55
  %68 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @htb_do_events(%struct.htb_sched* %68, i32 %69, i64 %70)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %76 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @PSCHED_TICKS_PER_SEC, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %74, %67
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %84 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %82, i64* %88, align 8
  br label %97

89:                                               ; preds = %55
  %90 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %91 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %89, %81
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i64, i64* %10, align 8
  store i64 %102, i64* %7, align 8
  br label %103

103:                                              ; preds = %101, %97
  %104 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %105 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %110, -1
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %143, %103
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %144

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @ffz(i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = shl i32 1, %118
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call %struct.sk_buff* @htb_dequeue_tree(%struct.htb_sched* %122, i32 %123, i32 %124)
  store %struct.sk_buff* %125, %struct.sk_buff** %4, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  %128 = zext i1 %127 to i32
  %129 = call i64 @likely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %115
  %132 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %133 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @TCQ_F_THROTTLED, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %140 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %172

143:                                              ; preds = %115
  br label %112

144:                                              ; preds = %112
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %51

148:                                              ; preds = %51
  %149 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %150 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load i64, i64* %7, align 8
  %155 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %156 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %154, %157
  %159 = zext i1 %158 to i32
  %160 = call i64 @likely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %148
  %163 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %164 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %163, i32 0, i32 4
  %165 = load i64, i64* %7, align 8
  %166 = call i32 @qdisc_watchdog_schedule(i32* %164, i64 %165)
  br label %171

167:                                              ; preds = %148
  %168 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %169 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %168, i32 0, i32 3
  %170 = call i32 @schedule_work(i32* %169)
  br label %171

171:                                              ; preds = %167, %162
  br label %172

172:                                              ; preds = %171, %131, %38
  %173 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %173, %struct.sk_buff** %2, align 8
  br label %174

174:                                              ; preds = %172, %19
  %175 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %175
}

declare dso_local %struct.htb_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i64 @psched_get_time(...) #1

declare dso_local i64 @htb_do_events(%struct.htb_sched*, i32, i64) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local %struct.sk_buff* @htb_dequeue_tree(%struct.htb_sched*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @qdisc_watchdog_schedule(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
