; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_ie_build_ht_oper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_ie_build_ht_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta_ht_cap = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_ht_operation = type { i32, i32, i32, i32, i32 }

@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_ABOVE = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_BELOW = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_NONE = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHAN_WIDTH_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_ie_build_ht_oper(i32* %0, %struct.ieee80211_sta_ht_cap* %1, %struct.cfg80211_chan_def* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %7 = alloca %struct.cfg80211_chan_def*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_ht_operation*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %6, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %5, align 8
  store i32 20, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %16, %struct.ieee80211_ht_operation** %9, align 8
  %17 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %18 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ieee80211_frequency_to_channel(i32 %21)
  %23 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %47 [
    i32 131, label %28
    i32 128, label %28
    i32 129, label %28
    i32 130, label %28
  ]

28:                                               ; preds = %4, %4, %4, %4
  %29 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %30 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %33 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %31, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_ABOVE, align 4
  %40 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  br label %46

42:                                               ; preds = %28
  %43 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_BELOW, align 4
  %44 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %38
  br label %51

47:                                               ; preds = %4
  %48 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_NONE, align 4
  %49 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %46
  %52 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %60 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %66 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NL80211_CHAN_WIDTH_20, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* @IEEE80211_HT_PARAM_CHAN_WIDTH_ANY, align 4
  %72 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %64, %58, %51
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @cpu_to_le16(i32 %77)
  %79 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %9, align 8
  %80 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %9, align 8
  %82 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %9, align 8
  %84 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %83, i32 0, i32 1
  %85 = call i32 @memset(i32* %84, i32 0, i32 16)
  %86 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %9, align 8
  %87 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %86, i32 0, i32 1
  %88 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %88, i32 0, i32 1
  %90 = call i32 @memcpy(i32* %87, i32* %89, i32 10)
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 20
  ret i32* %92
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
