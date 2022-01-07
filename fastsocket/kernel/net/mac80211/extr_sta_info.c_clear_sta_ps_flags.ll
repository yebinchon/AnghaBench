; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_clear_sta_ps_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_clear_sta_ps_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ps_data }
%struct.ps_data = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { %struct.ps_data }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@WLAN_STA_PS_DRIVER = common dso_local global i32 0, align 4
@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @clear_sta_ps_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_sta_ps_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ps_data*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sta_info*
  store %struct.sta_info* %7, %struct.sta_info** %3, align 8
  %8 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  store %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17, %1
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.ps_data* %28, %struct.ps_data** %5, align 8
  br label %41

29:                                               ; preds = %17
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 1
  %32 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_8__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store %struct.ps_data* %38, %struct.ps_data** %5, align 8
  br label %40

39:                                               ; preds = %29
  br label %53

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %43 = load i32, i32* @WLAN_STA_PS_DRIVER, align 4
  %44 = call i32 @clear_sta_flag(%struct.sta_info* %42, i32 %43)
  %45 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %46 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %47 = call i64 @test_and_clear_sta_flag(%struct.sta_info* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %51 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %50, i32 0, i32 0
  %52 = call i32 @atomic_dec(i32* %51)
  br label %53

53:                                               ; preds = %39, %49, %41
  ret void
}

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_8__*) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i64 @test_and_clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
