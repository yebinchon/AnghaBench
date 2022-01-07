; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_chandef_dfs_required.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_chandef_dfs_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_chandef_dfs_required(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %8 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %9 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %20 = call i32 @cfg80211_chandef_get_width(%struct.cfg80211_chan_def* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %18
  %27 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %28 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %29 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @cfg80211_get_chans_dfs_required(%struct.wiphy* %27, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %26
  %38 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %39 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %45 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %46 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @cfg80211_get_chans_dfs_required(%struct.wiphy* %44, i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %42, %35, %23, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_get_width(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_get_chans_dfs_required(%struct.wiphy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
