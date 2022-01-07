; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_reg_can_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_reg_can_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_reg_can_beacon(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %7 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %8 = call i32 @trace_cfg80211_reg_can_beacon(%struct.wiphy* %6, %struct.cfg80211_chan_def* %7)
  %9 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %10 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %11 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %12 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @cfg80211_chandef_usable(%struct.wiphy* %9, %struct.cfg80211_chan_def* %10, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @trace_cfg80211_return_bool(i32 %19)
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @trace_cfg80211_reg_can_beacon(%struct.wiphy*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_usable(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @trace_cfg80211_return_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
