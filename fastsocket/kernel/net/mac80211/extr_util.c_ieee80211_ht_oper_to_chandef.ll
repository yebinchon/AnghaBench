; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_ht_oper_to_chandef.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_ht_oper_to_chandef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_ht_operation = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_OFFSET = common dso_local global i32 0, align 4
@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ht_oper_to_chandef(%struct.ieee80211_channel* %0, %struct.ieee80211_ht_operation* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211_ht_operation*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %4, align 8
  store %struct.ieee80211_ht_operation* %1, %struct.ieee80211_ht_operation** %5, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %6, align 8
  %8 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %5, align 8
  %9 = icmp ne %struct.ieee80211_ht_operation* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %14 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %11, %struct.ieee80211_channel* %12, i32 %13)
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_OFFSET, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %27 [
    i32 128, label %21
    i32 130, label %23
    i32 129, label %25
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* @NL80211_CHAN_HT20, align 4
  store i32 %22, i32* %7, align 4
  br label %29

23:                                               ; preds = %15
  %24 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  store i32 %24, i32* %7, align 4
  br label %29

25:                                               ; preds = %15
  %26 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  store i32 %26, i32* %7, align 4
  br label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %25, %23, %21
  %30 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %30, %struct.ieee80211_channel* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %10
  ret void
}

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.ieee80211_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
