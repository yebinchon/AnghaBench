; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_cfg80211_rfkill_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_cfg80211_rfkill_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfkill*, i8*)* @cfg80211_rfkill_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg80211_rfkill_poll(%struct.rfkill* %0, i8* %1) #0 {
  %3 = alloca %struct.rfkill*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.rfkill* %0, %struct.rfkill** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %7, %struct.cfg80211_registered_device** %5, align 8
  %8 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %9 = call i32 @rdev_rfkill_poll(%struct.cfg80211_registered_device* %8)
  ret void
}

declare dso_local i32 @rdev_rfkill_poll(%struct.cfg80211_registered_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
