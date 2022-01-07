; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225_SetTXPowerLevel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225_SetTXPowerLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32*, i32*, i64 }

@USB = common dso_local global i64 0, align 8
@rtl8225_tx_power_cck_ch14 = common dso_local global i32* null, align 8
@rtl8225_tx_power_cck = common dso_local global i32* null, align 8
@TX_GAIN_CCK = common dso_local global i32 0, align 4
@rtl8225_tx_gain_cck_ofdm = common dso_local global i32* null, align 8
@RTL8225_ANAPARAM2_ON = common dso_local global i32 0, align 4
@TX_GAIN_OFDM = common dso_local global i32 0, align 4
@rtl8225_tx_power_ofdm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i16)* @rtl8225_SetTXPowerLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_SetTXPowerLevel(%struct.net_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.r8180_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %16)
  store %struct.r8180_priv* %17, %struct.r8180_priv** %5, align 8
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i16, i16* %4, align 2
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 255, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i16, i16* %4, align 2
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 255, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %35 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @USB, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 11, i32* %11, align 4
  store i32 25, i32* %12, align 4
  store i32 10, i32* %13, align 4
  br label %41

40:                                               ; preds = %2
  store i32 35, i32* %11, align 4
  store i32 35, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %14, align 4
  %49 = srem i32 %48, 6
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %14, align 4
  %51 = sdiv i32 %50, 6
  store i32 %51, i32* %7, align 4
  %52 = load i16, i16* %4, align 2
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %53, 14
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32*, i32** @rtl8225_tx_power_cck_ch14, align 8
  store i32* %56, i32** %10, align 8
  br label %59

57:                                               ; preds = %47
  %58 = load i32*, i32** @rtl8225_tx_power_cck, align 8
  store i32* %58, i32** %10, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load i32, i32* @TX_GAIN_CCK, align 4
  %62 = load i32*, i32** @rtl8225_tx_gain_cck_ofdm, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  %68 = call i32 @write_nic_byte(%struct.net_device* %60, i32 %61, i32 %67)
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %86, %59
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %74, 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 68, %82
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @write_phy_cck(%struct.net_device* %81, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %72
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %69

89:                                               ; preds = %69
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = call i32 @force_pci_posting(%struct.net_device* %90)
  %92 = call i32 @mdelay(i32 1)
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %94, %95
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %15, align 4
  br label %104

100:                                              ; preds = %89
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %100, %98
  %105 = load i32, i32* %15, align 4
  %106 = icmp sgt i32 %105, 35
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 35, i32* %15, align 4
  br label %108

108:                                              ; preds = %107, %104
  %109 = load i32, i32* %15, align 4
  %110 = srem i32 %109, 6
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %15, align 4
  %112 = sdiv i32 %111, 6
  store i32 %112, i32* %7, align 4
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = load i32, i32* @RTL8225_ANAPARAM2_ON, align 4
  %115 = call i32 @rtl8185_set_anaparam2(%struct.net_device* %113, i32 %114)
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = call i32 @write_phy_ofdm(%struct.net_device* %116, i32 2, i32 66)
  %118 = load %struct.net_device*, %struct.net_device** %3, align 8
  %119 = call i32 @write_phy_ofdm(%struct.net_device* %118, i32 6, i32 0)
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = call i32 @write_phy_ofdm(%struct.net_device* %120, i32 8, i32 0)
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = load i32, i32* @TX_GAIN_OFDM, align 4
  %124 = load i32*, i32** @rtl8225_tx_gain_cck_ofdm, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 1
  %130 = call i32 @write_nic_byte(%struct.net_device* %122, i32 %123, i32 %129)
  %131 = load i32*, i32** @rtl8225_tx_power_ofdm, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %9, align 4
  %136 = load %struct.net_device*, %struct.net_device** %3, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @write_phy_ofdm(%struct.net_device* %136, i32 5, i32 %137)
  %139 = load %struct.net_device*, %struct.net_device** %3, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @write_phy_ofdm(%struct.net_device* %139, i32 7, i32 %140)
  %142 = load %struct.net_device*, %struct.net_device** %3, align 8
  %143 = call i32 @force_pci_posting(%struct.net_device* %142)
  %144 = call i32 @mdelay(i32 1)
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_phy_cck(%struct.net_device*, i32, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl8185_set_anaparam2(%struct.net_device*, i32) #1

declare dso_local i32 @write_phy_ofdm(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
