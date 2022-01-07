; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_link_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i64, i64, i64 }

@IEEE80211_LINKED = common dso_local global i64 0, align 8
@KEY_TYPE_WEP40 = common dso_local global i64 0, align 8
@KEY_TYPE_WEP104 = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@RCR = common dso_local global i32 0, align 4
@RCR_CBSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_link_change(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 1
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %9, align 8
  store %struct.ieee80211_device* %10, %struct.ieee80211_device** %4, align 8
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_LINKED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @rtl8192_net_update(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @rtl8192_update_ratr_table(%struct.net_device* %19)
  %21 = load i64, i64* @KEY_TYPE_WEP40, align 8
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load i64, i64* @KEY_TYPE_WEP104, align 8
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %16
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @EnableHWSecurityConfig8192(%struct.net_device* %33)
  br label %35

35:                                               ; preds = %32, %26
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @write_nic_byte(%struct.net_device* %37, i32 371, i32 0)
  br label %39

39:                                               ; preds = %36, %35
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @rtl8192_update_msr(%struct.net_device* %40)
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IW_MODE_INFRA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IW_MODE_ADHOC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %47, %39
  store i32 0, i32* %5, align 4
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i32, i32* @RCR, align 4
  %56 = call i32 @read_nic_dword(%struct.net_device* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %58 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %57, i32 0, i32 1
  %59 = load %struct.ieee80211_device*, %struct.ieee80211_device** %58, align 8
  %60 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IEEE80211_LINKED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load i32, i32* @RCR_CBSSID, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %77

70:                                               ; preds = %53
  %71 = load i32, i32* @RCR_CBSSID, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %70, %64
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = load i32, i32* @RCR, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @write_nic_dword(%struct.net_device* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %47
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_net_update(%struct.net_device*) #1

declare dso_local i32 @rtl8192_update_ratr_table(%struct.net_device*) #1

declare dso_local i32 @EnableHWSecurityConfig8192(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_update_msr(%struct.net_device*) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
