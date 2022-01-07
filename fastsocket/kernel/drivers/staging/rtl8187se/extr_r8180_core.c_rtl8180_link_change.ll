; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_link_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ieee80211_network }
%struct.ieee80211_network = type { i32, i64 }

@EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@BSSID = common dso_local global i64 0, align 8
@BEACON_INTERVAL = common dso_local global i64 0, align 8
@BEACON_INTERVAL_MASK = common dso_local global i32 0, align 4
@EPROM_CMD_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_link_change(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_network*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8180_priv* %7, %struct.r8180_priv** %3, align 8
  %8 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ieee80211_network* %11, %struct.ieee80211_network** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @rtl8180_update_msr(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = load i32, i32* @EPROM_CMD_CONFIG, align 4
  %16 = call i32 @rtl8180_set_mode(%struct.net_device* %14, i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i64, i64* @BSSID, align 8
  %19 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @write_nic_dword(%struct.net_device* %17, i64 %18, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load i64, i64* @BSSID, align 8
  %28 = add nsw i64 %27, 4
  %29 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @write_nic_word(%struct.net_device* %26, i64 %28, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i64, i64* @BEACON_INTERVAL, align 8
  %38 = call i32 @read_nic_dword(%struct.net_device* %36, i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @BEACON_INTERVAL_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = load i64, i64* @BEACON_INTERVAL, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @write_nic_dword(%struct.net_device* %48, i64 %49, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = load i32, i32* @EPROM_CMD_NORMAL, align 4
  %54 = call i32 @rtl8180_set_mode(%struct.net_device* %52, i32 %53)
  %55 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %56 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %1
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %62 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @rtl8180_set_chan(%struct.net_device* %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %1
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8180_update_msr(%struct.net_device*) #1

declare dso_local i32 @rtl8180_set_mode(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i64, i32) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i64) #1

declare dso_local i32 @rtl8180_set_chan(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
