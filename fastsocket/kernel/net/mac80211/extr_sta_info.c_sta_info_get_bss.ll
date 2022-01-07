; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_sta_info_get_bss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_sta_info_get_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.TYPE_2__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i64, %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %7, i32 0, i32 1
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  store %struct.ieee80211_local* %9, %struct.ieee80211_local** %5, align 8
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @STA_HASH(i32* %13)
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 0
  %19 = call i32 @lockdep_is_held(i32* %18)
  %20 = call %struct.sta_info* @rcu_dereference_check(i32 %16, i32 %19)
  store %struct.sta_info* %20, %struct.sta_info** %6, align 8
  br label %21

21:                                               ; preds = %56, %2
  %22 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %23 = icmp ne %struct.sta_info* %22, null
  br i1 %23, label %24, label %64

24:                                               ; preds = %21
  %25 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 2
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %29 = icmp eq %struct.ieee80211_sub_if_data* %27, %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %24
  %31 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 2
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %32, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 2
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %39, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37, %24
  %48 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @ether_addr_equal(i32 %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %64

56:                                               ; preds = %47, %37, %30
  %57 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %60, i32 0, i32 0
  %62 = call i32 @lockdep_is_held(i32* %61)
  %63 = call %struct.sta_info* @rcu_dereference_check(i32 %59, i32 %62)
  store %struct.sta_info* %63, %struct.sta_info** %6, align 8
  br label %21

64:                                               ; preds = %55, %21
  %65 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  ret %struct.sta_info* %65
}

declare dso_local %struct.sta_info* @rcu_dereference_check(i32, i32) #1

declare dso_local i64 @STA_HASH(i32*) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
