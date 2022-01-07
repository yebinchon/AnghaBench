; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_led.c_ieee80211_led_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_led.c_ieee80211_led_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_led_tx(%struct.ieee80211_local* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 2, %15
  %17 = sub nsw i32 %16, 1
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LED_OFF, align 4
  %32 = call i32 @led_trigger_event(i32 %30, i32 %31)
  br label %39

33:                                               ; preds = %14
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LED_FULL, align 4
  %38 = call i32 @led_trigger_event(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %13, %33, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
