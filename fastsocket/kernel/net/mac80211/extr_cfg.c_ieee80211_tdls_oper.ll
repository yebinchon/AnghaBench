; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_tdls_oper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_tdls_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.sta_info = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TDLS oper %d peer %pM\0A\00", align 1
@ENOLINK = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_PEER_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32)* @ieee80211_tdls_oper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tdls_oper(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %12)
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %11, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %15 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %66

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %66

33:                                               ; preds = %23
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @tdls_dbg(%struct.ieee80211_sub_if_data* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35, i32* %36)
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %62 [
    i32 130, label %39
    i32 132, label %55
    i32 128, label %59
    i32 129, label %59
    i32 131, label %59
  ]

39:                                               ; preds = %33
  %40 = call i32 (...) @rcu_read_lock()
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %41, i32* %42)
  store %struct.sta_info* %43, %struct.sta_info** %10, align 8
  %44 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %45 = icmp ne %struct.sta_info* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = call i32 (...) @rcu_read_unlock()
  %48 = load i32, i32* @ENOLINK, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %66

50:                                               ; preds = %39
  %51 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %52 = load i32, i32* @WLAN_STA_TDLS_PEER_AUTH, align 4
  %53 = call i32 @set_sta_flag(%struct.sta_info* %51, i32 %52)
  %54 = call i32 (...) @rcu_read_unlock()
  br label %65

55:                                               ; preds = %33
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @sta_info_destroy_addr(%struct.ieee80211_sub_if_data* %56, i32* %57)
  store i32 %58, i32* %5, align 4
  br label %66

59:                                               ; preds = %33, %33, %33
  %60 = load i32, i32* @ENOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %66

62:                                               ; preds = %33
  %63 = load i32, i32* @ENOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %66

65:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %62, %59, %55, %46, %30, %20
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @tdls_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @sta_info_destroy_addr(%struct.ieee80211_sub_if_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
