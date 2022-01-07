; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225z2_rf_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225z2_rf_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IEEE_A = common dso_local global i64 0, align 8
@RF_PARA = common dso_local global i32 0, align 4
@RF_TIMING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8225z2_rf_set_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8180_priv* %5, %struct.r8180_priv** %3, align 8
  %6 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IEEE_A, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @write_rtl8225(%struct.net_device* %14, i32 5, i32 6245)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load i32, i32* @RF_PARA, align 4
  %18 = call i32 @write_nic_dword(%struct.net_device* %16, i32 %17, i32 65668)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load i32, i32* @RF_TIMING, align 4
  %21 = call i32 @write_nic_dword(%struct.net_device* %19, i32 %20, i32 688136)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @write_phy_ofdm(%struct.net_device* %22, i32 0, i32 0)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @write_phy_ofdm(%struct.net_device* %24, i32 10, i32 6)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @write_phy_ofdm(%struct.net_device* %26, i32 11, i32 153)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @write_phy_ofdm(%struct.net_device* %28, i32 15, i32 32)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @write_phy_ofdm(%struct.net_device* %30, i32 17, i32 7)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @rtl8225z2_set_gain(%struct.net_device* %32, i32 4)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @write_phy_ofdm(%struct.net_device* %34, i32 21, i32 64)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @write_phy_ofdm(%struct.net_device* %36, i32 23, i32 64)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @write_nic_dword(%struct.net_device* %38, i32 148, i32 268435456)
  br label %67

40:                                               ; preds = %1
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @write_rtl8225(%struct.net_device* %41, i32 5, i32 6244)
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = load i32, i32* @RF_PARA, align 4
  %45 = call i32 @write_nic_dword(%struct.net_device* %43, i32 %44, i32 65604)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = load i32, i32* @RF_TIMING, align 4
  %48 = call i32 @write_nic_dword(%struct.net_device* %46, i32 %47, i32 688136)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @write_phy_ofdm(%struct.net_device* %49, i32 0, i32 1)
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @write_phy_ofdm(%struct.net_device* %51, i32 10, i32 6)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @write_phy_ofdm(%struct.net_device* %53, i32 11, i32 153)
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @write_phy_ofdm(%struct.net_device* %55, i32 15, i32 32)
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = call i32 @write_phy_ofdm(%struct.net_device* %57, i32 17, i32 7)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = call i32 @rtl8225z2_set_gain(%struct.net_device* %59, i32 4)
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @write_phy_ofdm(%struct.net_device* %61, i32 21, i32 64)
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = call i32 @write_phy_ofdm(%struct.net_device* %63, i32 23, i32 64)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = call i32 @write_nic_dword(%struct.net_device* %65, i32 148, i32 67108866)
  br label %67

67:                                               ; preds = %40, %13
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_rtl8225(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_phy_ofdm(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8225z2_set_gain(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
