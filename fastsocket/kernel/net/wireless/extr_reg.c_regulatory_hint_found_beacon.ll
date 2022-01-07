; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_regulatory_hint_found_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_regulatory_hint_found_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i64, i32, i64 }
%struct.reg_beacon = type { i32, i32 }

@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@reg_pending_beacons_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Found new beacon on frequency: %d MHz (Ch %d) on %s\0A\00", align 1
@reg_pending_beacons = common dso_local global i32 0, align 4
@reg_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulatory_hint_found_beacon(%struct.wiphy* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reg_beacon*, align 8
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %14
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @freq_is_chan_12_13_14(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %14, %3
  store i32 0, i32* %4, align 4
  br label %71

34:                                               ; preds = %27, %21
  %35 = call i32 @spin_lock_bh(i32* @reg_pending_beacons_lock)
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %37 = call i32 @pending_reg_beacon(%struct.ieee80211_channel* %36)
  store i32 %37, i32* %9, align 4
  %38 = call i32 @spin_unlock_bh(i32* @reg_pending_beacons_lock)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %71

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.reg_beacon* @kzalloc(i32 8, i32 %43)
  store %struct.reg_beacon* %44, %struct.reg_beacon** %8, align 8
  %45 = load %struct.reg_beacon*, %struct.reg_beacon** %8, align 8
  %46 = icmp ne %struct.reg_beacon* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %71

50:                                               ; preds = %42
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ieee80211_frequency_to_channel(i32 %56)
  %58 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %59 = call i32 @wiphy_name(%struct.wiphy* %58)
  %60 = call i32 @REG_DBG_PRINT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %57, i32 %59)
  %61 = load %struct.reg_beacon*, %struct.reg_beacon** %8, align 8
  %62 = getelementptr inbounds %struct.reg_beacon, %struct.reg_beacon* %61, i32 0, i32 1
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %64 = call i32 @memcpy(i32* %62, %struct.ieee80211_channel* %63, i32 32)
  %65 = call i32 @spin_lock_bh(i32* @reg_pending_beacons_lock)
  %66 = load %struct.reg_beacon*, %struct.reg_beacon** %8, align 8
  %67 = getelementptr inbounds %struct.reg_beacon, %struct.reg_beacon* %66, i32 0, i32 0
  %68 = call i32 @list_add_tail(i32* %67, i32* @reg_pending_beacons)
  %69 = call i32 @spin_unlock_bh(i32* @reg_pending_beacons_lock)
  %70 = call i32 @schedule_work(i32* @reg_work)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %50, %47, %41, %33
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @freq_is_chan_12_13_14(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @pending_reg_beacon(%struct.ieee80211_channel*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.reg_beacon* @kzalloc(i32, i32) #1

declare dso_local i32 @REG_DBG_PRINT(i8*, i32, i32, i32) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wiphy_name(%struct.wiphy*) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
