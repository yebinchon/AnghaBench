; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_queue_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.work_struct = type { i32 }
%struct.ieee80211_local = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_queue_work(%struct.ieee80211_hw* %0, %struct.work_struct* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.work_struct*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.work_struct* %1, %struct.work_struct** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %6)
  store %struct.ieee80211_local* %7, %struct.ieee80211_local** %5, align 8
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %9 = call i32 @ieee80211_can_queue_work(%struct.ieee80211_local* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %17 = call i32 @queue_work(i32 %15, %struct.work_struct* %16)
  br label %18

18:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_can_queue_work(%struct.ieee80211_local*) #1

declare dso_local i32 @queue_work(i32, %struct.work_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
