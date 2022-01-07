; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_set_cqm_rssi_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_set_cqm_rssi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_vif, %struct.TYPE_4__ }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@BSS_CHANGED_CQM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i64)* @ieee80211_set_cqm_rssi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_cqm_rssi_config(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca %struct.ieee80211_vif*, align 8
  %12 = alloca %struct.ieee80211_bss_conf*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %13)
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %10, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 0
  store %struct.ieee80211_vif* %16, %struct.ieee80211_vif** %11, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %11, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 1
  store %struct.ieee80211_bss_conf* %18, %struct.ieee80211_bss_conf** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %12, align 8
  %21 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %12, align 8
  %27 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %57

31:                                               ; preds = %24, %4
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %12, align 8
  %34 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %12, align 8
  %37 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %31
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %54 = load i32, i32* @BSS_CHANGED_CQM, align 4
  %55 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %44, %31
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
