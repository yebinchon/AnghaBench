; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_led.c_ieee80211_mod_tpt_led_trig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_led.c_ieee80211_mod_tpt_led_trig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.tpt_led_trigger* }
%struct.tpt_led_trigger = type { i32, i32 }

@IEEE80211_TPT_LEDTRIG_FL_RADIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mod_tpt_led_trig(%struct.ieee80211_local* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpt_led_trigger*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 0
  %11 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %10, align 8
  store %struct.tpt_led_trigger* %11, %struct.tpt_led_trigger** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %7, align 8
  %17 = icmp ne %struct.tpt_led_trigger* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %53

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %7, align 8
  %23 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %7, align 8
  %28 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %7, align 8
  %32 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_TPT_LEDTRIG_FL_RADIO, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %19
  %39 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %7, align 8
  %40 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %7, align 8
  %43 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38, %19
  %48 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %49 = call i32 @ieee80211_stop_tpt_led_trig(%struct.ieee80211_local* %48)
  br label %53

50:                                               ; preds = %38
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %52 = call i32 @ieee80211_start_tpt_led_trig(%struct.ieee80211_local* %51)
  br label %53

53:                                               ; preds = %18, %50, %47
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_stop_tpt_led_trig(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_start_tpt_led_trig(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
