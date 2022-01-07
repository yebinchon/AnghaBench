; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_GetTxPowerLevel8192S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_GetTxPowerLevel8192S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i64 }

@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_24G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_GetTxPowerLevel8192S(%struct.net_device* %0, i64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = load i32, i32* @WIRELESS_MODE_B, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @phy_TxPwrIdxToDbm(%struct.net_device* %13, i32 %14, i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  store i64 %23, i64* %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load i32, i32* @WIRELESS_MODE_G, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @phy_TxPwrIdxToDbm(%struct.net_device* %24, i32 %25, i64 %26)
  %28 = load i64, i64* %7, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i32, i32* @WIRELESS_MODE_G, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @phy_TxPwrIdxToDbm(%struct.net_device* %31, i32 %32, i64 %33)
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i32, i32* @WIRELESS_MODE_N_24G, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @phy_TxPwrIdxToDbm(%struct.net_device* %39, i32 %40, i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load i32, i32* @WIRELESS_MODE_N_24G, align 4
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @phy_TxPwrIdxToDbm(%struct.net_device* %46, i32 %47, i64 %48)
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %45, %35
  %51 = load i64, i64* %7, align 8
  %52 = load i64*, i64** %4, align 8
  store i64 %51, i64* %52, align 8
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @phy_TxPwrIdxToDbm(%struct.net_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
