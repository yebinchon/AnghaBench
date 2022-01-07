; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_update_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_update_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.ieee80211_network }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_network = type { i32 }

@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@IEEE_N_24G = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_SLOT = common dso_local global i32 0, align 4
@SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@NON_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@SLOT_TIME = common dso_local global i64 0, align 8
@RRSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_update_cap(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.ieee80211_network*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %5, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.ieee80211_network* %13, %struct.ieee80211_network** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %16 = and i32 %14, %15
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ieee80211_network*, %struct.ieee80211_network** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE_G, align 4
  %23 = load i32, i32* @IEEE_N_24G, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @WLAN_CAPABILITY_SHORT_SLOT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @SHORT_SLOT_TIME, align 4
  store i32 %42, i32* %7, align 4
  br label %45

43:                                               ; preds = %32, %27
  %44 = load i32, i32* @NON_SHORT_SLOT_TIME, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = load i64, i64* @SLOT_TIME, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @write_nic_byte(%struct.net_device* %49, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %2
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
