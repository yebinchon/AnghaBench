; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c___ieee80211_recalc_txpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c___ieee80211_recalc_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@IEEE80211_UNSET_POWER_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ieee80211_recalc_txpower(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %10)
  store %struct.ieee80211_chanctx_conf* %11, %struct.ieee80211_chanctx_conf** %4, align 8
  %12 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %13 = icmp ne %struct.ieee80211_chanctx_conf* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %2, align 4
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_UNSET_POWER_LEVEL, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @min(i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %16
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IEEE80211_UNSET_POWER_LEVEL, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @min(i32 %42, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %48, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ieee80211_hw_config(i32 %63, i32 0)
  store i32 1, i32* %2, align 4
  br label %66

65:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %55, %14
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ieee80211_hw_config(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
