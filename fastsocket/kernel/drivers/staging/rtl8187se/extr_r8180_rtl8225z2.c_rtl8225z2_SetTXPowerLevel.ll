; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225z2_SetTXPowerLevel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225z2_SetTXPowerLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32*, i32*, i64, i32 }

@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@CCK_TXAGC = common dso_local global i32 0, align 4
@ZEBRA2_CCK_OFDM_GAIN_SETTING = common dso_local global i32* null, align 8
@OFDM_TXAGC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8225z2_SetTXPowerLevel(%struct.net_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.r8180_priv*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %14)
  store %struct.r8180_priv* %15, %struct.r8180_priv** %5, align 8
  %16 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %17 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i16, i16* %4, align 2
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 255, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %9, align 1
  %25 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %26 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i16, i16* %4, align 2
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 255, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %10, align 1
  %34 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %35 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_DOT11D_ENABLE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %2
  %40 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %41 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IS_DOT11D_STATE_DONE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %39
  %46 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %47 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i16, i16* %4, align 2
  %50 = call signext i8 @DOT11D_GetMaxTxPwrInDbm(i32 %48, i16 signext %49)
  store i8 %50, i8* %11, align 1
  %51 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %52 = load i32, i32* @WIRELESS_MODE_B, align 4
  %53 = load i8, i8* %11, align 1
  %54 = call signext i8 @DbmToTxPwrIdx(%struct.r8180_priv* %51, i32 %52, i8 signext %53)
  store i8 %54, i8* %12, align 1
  %55 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %56 = load i32, i32* @WIRELESS_MODE_G, align 4
  %57 = load i8, i8* %11, align 1
  %58 = call signext i8 @DbmToTxPwrIdx(%struct.r8180_priv* %55, i32 %56, i8 signext %57)
  store i8 %58, i8* %13, align 1
  %59 = load i8, i8* %9, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* %12, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %45
  %65 = load i8, i8* %12, align 1
  store i8 %65, i8* %9, align 1
  br label %66

66:                                               ; preds = %64, %45
  %67 = load i8, i8* %10, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* %13, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i8, i8* %13, align 1
  store i8 %73, i8* %10, align 1
  br label %74

74:                                               ; preds = %72, %66
  br label %75

75:                                               ; preds = %74, %39, %2
  store i8 15, i8* %6, align 1
  store i8 25, i8* %7, align 1
  store i8 10, i8* %8, align 1
  %76 = load i8, i8* %9, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sgt i32 %77, 35
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i8 35, i8* %9, align 1
  br label %80

80:                                               ; preds = %79, %75
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = load i32, i32* @CCK_TXAGC, align 4
  %83 = load i32*, i32** @ZEBRA2_CCK_OFDM_GAIN_SETTING, align 8
  %84 = load i8, i8* %9, align 1
  %85 = sext i8 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @write_nic_byte(%struct.net_device* %81, i32 %82, i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = call i32 @force_pci_posting(%struct.net_device* %89)
  %91 = call i32 @mdelay(i32 1)
  %92 = load i8, i8* %10, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sgt i32 %93, 35
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  store i8 35, i8* %10, align 1
  br label %96

96:                                               ; preds = %95, %80
  %97 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %98 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = call i32 @write_phy_ofdm(%struct.net_device* %102, i32 2, i32 66)
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = call i32 @write_phy_ofdm(%struct.net_device* %104, i32 5, i32 0)
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = call i32 @write_phy_ofdm(%struct.net_device* %106, i32 6, i32 64)
  %108 = load %struct.net_device*, %struct.net_device** %3, align 8
  %109 = call i32 @write_phy_ofdm(%struct.net_device* %108, i32 7, i32 0)
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = call i32 @write_phy_ofdm(%struct.net_device* %110, i32 8, i32 64)
  br label %112

112:                                              ; preds = %101, %96
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = load i32, i32* @OFDM_TXAGC, align 4
  %115 = load i32*, i32** @ZEBRA2_CCK_OFDM_GAIN_SETTING, align 8
  %116 = load i8, i8* %10, align 1
  %117 = sext i8 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @write_nic_byte(%struct.net_device* %113, i32 %114, i32 %119)
  %121 = load i8, i8* %10, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sle i32 %122, 11
  br i1 %123, label %124, label %129

124:                                              ; preds = %112
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = call i32 @write_phy_ofdm(%struct.net_device* %125, i32 7, i32 92)
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = call i32 @write_phy_ofdm(%struct.net_device* %127, i32 9, i32 92)
  br label %129

129:                                              ; preds = %124, %112
  %130 = load i8, i8* %10, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sle i32 %131, 17
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = call i32 @write_phy_ofdm(%struct.net_device* %134, i32 7, i32 84)
  %136 = load %struct.net_device*, %struct.net_device** %3, align 8
  %137 = call i32 @write_phy_ofdm(%struct.net_device* %136, i32 9, i32 84)
  br label %143

138:                                              ; preds = %129
  %139 = load %struct.net_device*, %struct.net_device** %3, align 8
  %140 = call i32 @write_phy_ofdm(%struct.net_device* %139, i32 7, i32 80)
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = call i32 @write_phy_ofdm(%struct.net_device* %141, i32 9, i32 80)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load %struct.net_device*, %struct.net_device** %3, align 8
  %145 = call i32 @force_pci_posting(%struct.net_device* %144)
  %146 = call i32 @mdelay(i32 1)
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @IS_DOT11D_ENABLE(i32) #1

declare dso_local i64 @IS_DOT11D_STATE_DONE(i32) #1

declare dso_local signext i8 @DOT11D_GetMaxTxPwrInDbm(i32, i16 signext) #1

declare dso_local signext i8 @DbmToTxPwrIdx(%struct.r8180_priv*, i32, i8 signext) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @write_phy_ofdm(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
