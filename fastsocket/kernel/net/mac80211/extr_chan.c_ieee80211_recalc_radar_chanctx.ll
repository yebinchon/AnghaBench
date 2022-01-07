; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_recalc_radar_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_recalc_radar_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_chanctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_CHANGE_RADAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_recalc_radar_chanctx(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %4, align 8
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 3
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %10 = call i32 @ieee80211_is_radar_required(%struct.ieee80211_local* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %50

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %18
  %34 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %43 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %44 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %18
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %47 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %48 = load i32, i32* @IEEE80211_CHANCTX_CHANGE_RADAR, align 4
  %49 = call i32 @drv_change_chanctx(%struct.ieee80211_local* %46, %struct.ieee80211_chanctx* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %17
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ieee80211_is_radar_required(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @drv_change_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
