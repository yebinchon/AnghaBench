; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_scan_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_scan_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@SCAN_HW_SCANNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_scan_cancel(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  %3 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* @SCAN_HW_SCANNING, align 4
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 5
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = call i32 @lockdep_is_held(i32* %30)
  %32 = call i32 @rcu_dereference_protected(i32 %28, i32 %31)
  %33 = call i32 @drv_cancel_hw_scan(%struct.ieee80211_local* %25, i32 %32)
  br label %34

34:                                               ; preds = %24, %17
  br label %42

35:                                               ; preds = %11
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 2
  %38 = call i32 @cancel_delayed_work(i32* %37)
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %39, i32 0, i32 1
  %41 = call i32 @__ieee80211_scan_completed(i32* %40, i32 1, i32 0)
  br label %42

42:                                               ; preds = %35, %34, %10
  %43 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @drv_cancel_hw_scan(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @__ieee80211_scan_completed(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
