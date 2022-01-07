; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225_rf_set_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225_rf_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@IEEE80211_LINKED = common dso_local global i64 0, align 8
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@rtl8225_chan = common dso_local global i32* null, align 8
@SIFS = common dso_local global i32 0, align 4
@DIFS = common dso_local global i32 0, align 4
@SLOT = common dso_local global i32 0, align 4
@EIFS = common dso_local global i32 0, align 4
@CW_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i16)* @rtl8225_rf_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_rf_set_chan(%struct.net_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.r8180_priv*, align 8
  %6 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8180_priv* %8, %struct.r8180_priv** %5, align 8
  %9 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %10 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_LINKED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %18 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @ieee80211_is_54g(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %26 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IW_MODE_MONITOR, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %24, %16
  %33 = phi i1 [ true, %16 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %6, align 2
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load i16, i16* %4, align 2
  %38 = call i32 @rtl8225_SetTXPowerLevel(%struct.net_device* %36, i16 signext %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i32*, i32** @rtl8225_chan, align 8
  %41 = load i16, i16* %4, align 2
  %42 = sext i16 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @write_rtl8225(%struct.net_device* %39, i32 7, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @force_pci_posting(%struct.net_device* %46)
  %48 = call i32 @mdelay(i32 10)
  %49 = load i16, i16* %6, align 2
  %50 = icmp ne i16 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %32
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load i32, i32* @SIFS, align 4
  %54 = call i32 @write_nic_byte(%struct.net_device* %52, i32 %53, i32 34)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load i32, i32* @DIFS, align 4
  %57 = call i32 @write_nic_byte(%struct.net_device* %55, i32 %56, i32 20)
  br label %65

58:                                               ; preds = %32
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = load i32, i32* @SIFS, align 4
  %61 = call i32 @write_nic_byte(%struct.net_device* %59, i32 %60, i32 68)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = load i32, i32* @DIFS, align 4
  %64 = call i32 @write_nic_byte(%struct.net_device* %62, i32 %63, i32 36)
  br label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %67 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IEEE80211_LINKED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %75 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @ieee80211_is_shortslot(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = load i32, i32* @SLOT, align 4
  %84 = call i32 @write_nic_byte(%struct.net_device* %82, i32 %83, i32 9)
  br label %89

85:                                               ; preds = %73, %65
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = load i32, i32* @SLOT, align 4
  %88 = call i32 @write_nic_byte(%struct.net_device* %86, i32 %87, i32 20)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i16, i16* %6, align 2
  %91 = icmp ne i16 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = load i32, i32* @EIFS, align 4
  %95 = call i32 @write_nic_byte(%struct.net_device* %93, i32 %94, i32 81)
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = load i32, i32* @CW_VAL, align 4
  %98 = call i32 @write_nic_byte(%struct.net_device* %96, i32 %97, i32 115)
  br label %106

99:                                               ; preds = %89
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = load i32, i32* @EIFS, align 4
  %102 = call i32 @write_nic_byte(%struct.net_device* %100, i32 %101, i32 81)
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = load i32, i32* @CW_VAL, align 4
  %105 = call i32 @write_nic_byte(%struct.net_device* %103, i32 %104, i32 165)
  br label %106

106:                                              ; preds = %99, %92
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @ieee80211_is_54g(i32) #1

declare dso_local i32 @rtl8225_SetTXPowerLevel(%struct.net_device*, i16 signext) #1

declare dso_local i32 @write_rtl8225(%struct.net_device*, i32, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i64 @ieee80211_is_shortslot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
