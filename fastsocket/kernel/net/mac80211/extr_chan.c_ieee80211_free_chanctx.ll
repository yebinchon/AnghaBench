; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_free_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_free_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, %struct.TYPE_6__, %struct.cfg80211_chan_def, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cfg80211_chan_def = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_chanctx = type { i64, i32 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_chanctx*)* @ieee80211_free_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_free_chanctx(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 5
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON_ONCE(i32 %14)
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 3
  store %struct.cfg80211_chan_def* %22, %struct.cfg80211_chan_def** %6, align 8
  %23 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  %24 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %25 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %27 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %32 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %48 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %47, i32 0)
  br label %53

49:                                               ; preds = %2
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %51 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %52 = call i32 @drv_remove_chanctx(%struct.ieee80211_local* %50, %struct.ieee80211_chanctx* %51)
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %54, i32 0, i32 1
  %56 = call i32 @list_del_rcu(i32* %55)
  %57 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %58 = load i32, i32* @rcu_head, align 4
  %59 = call i32 @kfree_rcu(%struct.ieee80211_chanctx* %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %63, i32 0, i32 1
  %65 = call i32 @list_empty(i32* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %62, %53
  %69 = phi i1 [ false, %53 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %73 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %76 = call i32 @ieee80211_recalc_idle(%struct.ieee80211_local* %75)
  %77 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %78 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @drv_remove_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.ieee80211_chanctx*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_recalc_idle(%struct.ieee80211_local*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
