; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_net_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_net_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i32, i32, i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i64, %struct.ieee80211_network }
%struct.ieee80211_network = type { i32, i32, i64 }

@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@RRSR = common dso_local global i64 0, align 8
@INIRTSMCS_SEL = common dso_local global i64 0, align 8
@BSSIDR = common dso_local global i64 0, align 8
@BCN_INTERVAL = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@RETRY_LIMIT = common dso_local global i64 0, align 8
@RETRY_LIMIT_SHORT_SHIFT = common dso_local global i32 0, align 4
@RETRY_LIMIT_LONG_SHIFT = common dso_local global i32 0, align 4
@IMR_BcnInt = common dso_local global i32 0, align 4
@IMR_TBDER = common dso_local global i32 0, align 4
@IMR_TBDOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192SU_net_update(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.ieee80211_network*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %3, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 6
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %14, align 8
  store %struct.ieee80211_device* %15, %struct.ieee80211_device** %4, align 8
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 6
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %17, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 1
  store %struct.ieee80211_network* %19, %struct.ieee80211_network** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 48, i32* %9, align 4
  %20 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @rtl8192_config_rate(%struct.net_device* %28, i32* %6)
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 351
  store i32 %31, i32* %6, align 4
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load i64, i64* @RRSR, align 8
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  %38 = call i32 @write_nic_byte(%struct.net_device* %34, i64 %35, i32 %37)
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = load i64, i64* @RRSR, align 8
  %41 = add nsw i64 %40, 1
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = call i32 @write_nic_byte(%struct.net_device* %39, i64 %41, i32 %44)
  br label %46

46:                                               ; preds = %49, %1
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %46

54:                                               ; preds = %46
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = load i64, i64* @INIRTSMCS_SEL, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @write_nic_byte(%struct.net_device* %55, i64 %56, i32 %57)
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 5
  store i32 %62, i32* %7, align 4
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, 128
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %54
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = load i64, i64* @RRSR, align 8
  %73 = add nsw i64 %72, 2
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @write_nic_byte(%struct.net_device* %71, i64 %73, i32 %74)
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = load i64, i64* @BSSIDR, align 8
  %78 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @write_nic_dword(%struct.net_device* %76, i64 %77, i32 %83)
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = load i64, i64* @BSSIDR, align 8
  %87 = add nsw i64 %86, 4
  %88 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %89 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @write_nic_word(%struct.net_device* %85, i64 %87, i32 %93)
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = load i64, i64* @BCN_INTERVAL, align 8
  %97 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @write_nic_word(%struct.net_device* %95, i64 %96, i32 %99)
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %103 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PHY_SetBeaconHwReg(%struct.net_device* %101, i32 %104)
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @rtl8192_update_cap(%struct.net_device* %106, i32 %107)
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %110 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @IW_MODE_ADHOC, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %70
  store i32 7, i32* %9, align 4
  br label %116

115:                                              ; preds = %70
  br label %116

116:                                              ; preds = %115, %114
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %121 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %120, i32 0, i32 4
  store i32 %117, i32* %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = load i64, i64* @RETRY_LIMIT, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @RETRY_LIMIT_SHORT_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @RETRY_LIMIT_LONG_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = or i32 %126, %129
  %131 = call i32 @write_nic_word(%struct.net_device* %122, i64 %123, i32 %130)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_config_rate(%struct.net_device*, i32*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i64, i32) #1

declare dso_local i32 @PHY_SetBeaconHwReg(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8192_update_cap(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
