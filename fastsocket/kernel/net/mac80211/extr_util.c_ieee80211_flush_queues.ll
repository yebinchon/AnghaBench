; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_flush_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_flush_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, i64 }

@IEEE80211_HW_QUEUE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i64 0, align 8
@IEEE80211_MAX_QUEUE_MAP = common dso_local global i32 0, align 4
@IEEE80211_QUEUE_STOP_REASON_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_flush_queues(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %4, align 8
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %82

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = icmp ne %struct.ieee80211_sub_if_data* %15, null
  br i1 %16, label %17, label %61

17:                                               ; preds = %14
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IEEE80211_HW_QUEUE_CONTROL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @BIT(i64 %38)
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IEEE80211_INVAL_HW_QUEUE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @BIT(i64 %56)
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %45
  br label %68

61:                                               ; preds = %17, %14
  %62 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @BIT(i64 %65)
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %60
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %69, i32 0, i32 0
  %71 = load i32, i32* @IEEE80211_MAX_QUEUE_MAP, align 4
  %72 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_FLUSH, align 4
  %73 = call i32 @ieee80211_stop_queues_by_reason(%struct.TYPE_7__* %70, i32 %71, i32 %72)
  %74 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @drv_flush(%struct.ieee80211_local* %74, i32 %75, i32 0)
  %77 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %78 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %77, i32 0, i32 0
  %79 = load i32, i32* @IEEE80211_MAX_QUEUE_MAP, align 4
  %80 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_FLUSH, align 4
  %81 = call i32 @ieee80211_wake_queues_by_reason(%struct.TYPE_7__* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %68, %13
  ret void
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @ieee80211_stop_queues_by_reason(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @drv_flush(%struct.ieee80211_local*, i32, i32) #1

declare dso_local i32 @ieee80211_wake_queues_by_reason(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
