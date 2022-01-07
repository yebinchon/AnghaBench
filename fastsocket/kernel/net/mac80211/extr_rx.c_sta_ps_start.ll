; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_sta_ps_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_sta_ps_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_8__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_6__ = type { %struct.ps_data }
%struct.ps_data = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_local = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@IEEE80211_HW_AP_LINK_PS = common dso_local global i32 0, align 4
@STA_NOTIFY_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"STA %pM aid %d enters power save mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*)* @sta_ps_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_ps_start(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ps_data*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %6 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %7 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %6, i32 0, i32 1
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.ieee80211_sub_if_data* %8, %struct.ieee80211_sub_if_data** %3, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 2
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  store %struct.ieee80211_local* %11, %struct.ieee80211_local** %4, align 8
  %12 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 1
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 1
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20, %1
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store %struct.ps_data* %33, %struct.ps_data** %5, align 8
  br label %35

34:                                               ; preds = %20
  br label %67

35:                                               ; preds = %29
  %36 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %37 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %36, i32 0, i32 0
  %38 = call i32 @atomic_inc(i32* %37)
  %39 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %40 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %41 = call i32 @set_sta_flag(%struct.sta_info* %39, i32 %40)
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_HW_AP_LINK_PS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %35
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %52 = load i32, i32* @STA_NOTIFY_SLEEP, align 4
  %53 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 0
  %55 = call i32 @drv_sta_notify(%struct.ieee80211_local* %50, %struct.ieee80211_sub_if_data* %51, i32 %52, %struct.TYPE_8__* %54)
  br label %56

56:                                               ; preds = %49, %35
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %58 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %59 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ps_dbg(%struct.ieee80211_sub_if_data* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %56, %34
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @drv_sta_notify(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ps_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
