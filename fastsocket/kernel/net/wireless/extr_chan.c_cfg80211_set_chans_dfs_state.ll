; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_set_chans_dfs_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_set_chans_dfs_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i32, i32 }

@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32, i32, i32)* @cfg80211_set_chans_dfs_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg80211_set_chans_dfs_state(%struct.wiphy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sdiv i32 %12, 2
  %14 = sub nsw i32 %11, %13
  %15 = add nsw i32 %14, 10
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %45, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sdiv i32 %19, 2
  %21 = add nsw i32 %18, %20
  %22 = sub nsw i32 %21, 10
  %23 = icmp sle i32 %17, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %16
  %25 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %25, i32 %26)
  store %struct.ieee80211_channel* %27, %struct.ieee80211_channel** %9, align 8
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %29 = icmp ne %struct.ieee80211_channel* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30, %24
  br label %45

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %37
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 20
  store i32 %47, i32* %10, align 4
  br label %16

48:                                               ; preds = %16
  ret void
}

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
