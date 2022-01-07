; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c_cfg80211_get_bss_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c_cfg80211_get_bss_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_ht_operation = type { i32 }

@WLAN_EID_DS_PARAMS = common dso_local global i32 0, align 4
@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_channel* (%struct.wiphy*, i32*, i64, %struct.ieee80211_channel*)* @cfg80211_get_bss_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_channel* @cfg80211_get_bss_channel(%struct.wiphy* %0, i32* %1, i64 %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_ht_operation*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %9, align 8
  store i32 -1, i32* %12, align 4
  %14 = load i32, i32* @WLAN_EID_DS_PARAMS, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32* @cfg80211_find_ie(i32 %14, i32* %15, i64 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  br label %51

29:                                               ; preds = %20, %4
  %30 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32* @cfg80211_find_ie(i32 %30, i32* %31, i64 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 %40, 4
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = bitcast i32* %44 to i8*
  %46 = bitcast i8* %45 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %46, %struct.ieee80211_ht_operation** %13, align 8
  %47 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %13, align 8
  %48 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %42, %36, %29
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_channel* %55, %struct.ieee80211_channel** %5, align 8
  br label %78

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ieee80211_channel_to_frequency(i32 %57, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %62, i32 %63)
  store %struct.ieee80211_channel* %64, %struct.ieee80211_channel** %9, align 8
  %65 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %66 = icmp ne %struct.ieee80211_channel* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %5, align 8
  br label %78

68:                                               ; preds = %56
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %70 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %5, align 8
  br label %78

76:                                               ; preds = %68
  %77 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_channel* %77, %struct.ieee80211_channel** %5, align 8
  br label %78

78:                                               ; preds = %76, %75, %67, %54
  %79 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  ret %struct.ieee80211_channel* %79
}

declare dso_local i32* @cfg80211_find_ie(i32, i32*, i64) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
