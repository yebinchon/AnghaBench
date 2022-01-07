; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_main.c_ieee80211_hw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_main.c_ieee80211_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i64, i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @might_sleep()
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %13 = call i32 @ieee80211_hw_conf_chan(%struct.ieee80211_local* %12)
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %18 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %16, %11
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @drv_config(%struct.ieee80211_local* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %26, %23
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @ieee80211_hw_conf_chan(%struct.ieee80211_local*) #1

declare dso_local i32 @drv_config(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
