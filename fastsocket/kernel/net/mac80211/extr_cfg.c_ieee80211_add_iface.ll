; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_add_iface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_add_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.wiphy = type { i32 }
%struct.vif_params = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wireless_dev* (%struct.wiphy*, i8*, i32, i32*, %struct.vif_params*)* @ieee80211_add_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wireless_dev* @ieee80211_add_iface(%struct.wiphy* %0, i8* %1, i32 %2, i32* %3, %struct.vif_params* %4) #0 {
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca %struct.wireless_dev*, align 8
  %14 = alloca %struct.ieee80211_sub_if_data*, align 8
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  %16 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %17 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %16)
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %12, align 8
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %22 = call i32 @ieee80211_if_add(%struct.ieee80211_local* %18, i8* %19, %struct.wireless_dev** %13, i32 %20, %struct.vif_params* %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* %15, align 4
  %27 = call %struct.wireless_dev* @ERR_PTR(i32 %26)
  store %struct.wireless_dev* %27, %struct.wireless_dev** %6, align 8
  br label %45

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %37 = call %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev* %36)
  store %struct.ieee80211_sub_if_data* %37, %struct.ieee80211_sub_if_data** %14, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %32, %28
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %44, %struct.wireless_dev** %6, align 8
  br label %45

45:                                               ; preds = %43, %25
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  ret %struct.wireless_dev* %46
}

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @ieee80211_if_add(%struct.ieee80211_local*, i8*, %struct.wireless_dev**, i32, %struct.vif_params*) #1

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
