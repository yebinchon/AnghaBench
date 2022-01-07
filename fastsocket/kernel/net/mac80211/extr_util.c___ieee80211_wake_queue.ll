; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c___ieee80211_wake_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c___ieee80211_wake_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_local = type { i64*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @__ieee80211_wake_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ieee80211_wake_queue(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %8)
  store %struct.ieee80211_local* %9, %struct.ieee80211_local** %7, align 8
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @trace_wake_queue(%struct.ieee80211_local* %10, i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %71

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = call i32 @test_bit(i32 %24, i64* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %71

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = call i32 @__clear_bit(i32 %35, i64* %41)
  %43 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %71

52:                                               ; preds = %34
  %53 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i64 @skb_queue_empty(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = call i32 (...) @rcu_read_lock()
  %63 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @ieee80211_propagate_queue_wake(%struct.ieee80211_local* %63, i32 %64)
  %66 = call i32 (...) @rcu_read_unlock()
  br label %71

67:                                               ; preds = %52
  %68 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %68, i32 0, i32 1
  %70 = call i32 @tasklet_schedule(i32* %69)
  br label %71

71:                                               ; preds = %22, %33, %51, %67, %61
  ret void
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local i32 @trace_wake_queue(%struct.ieee80211_local*, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ieee80211_propagate_queue_wake(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
