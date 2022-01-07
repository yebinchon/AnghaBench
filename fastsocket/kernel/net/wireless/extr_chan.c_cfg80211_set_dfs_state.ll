; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_set_dfs_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_set_dfs_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_set_dfs_state(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %9 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %43

16:                                               ; preds = %3
  %17 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %18 = call i32 @cfg80211_chandef_get_width(%struct.cfg80211_chan_def* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %16
  %23 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %24 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %25 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @cfg80211_set_chans_dfs_state(%struct.wiphy* %23, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %43

35:                                               ; preds = %22
  %36 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %37 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %38 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @cfg80211_set_chans_dfs_state(%struct.wiphy* %36, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %34, %21, %15
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_get_width(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_set_chans_dfs_state(%struct.wiphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
