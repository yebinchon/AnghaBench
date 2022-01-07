; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225z2_set_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225z2_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IEEE_B = common dso_local global i64 0, align 8
@IEEE_G = common dso_local global i64 0, align 8
@rtl8225z2_gain_bg = common dso_local global i64* null, align 8
@rtl8225z2_gain_a = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8225z2_set_gain(%struct.net_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64*, align 8
  %6 = alloca %struct.r8180_priv*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8180_priv* %9, %struct.r8180_priv** %6, align 8
  %10 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %11 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @IEEE_B, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @IEEE_G, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %2
  %23 = load i64*, i64** @rtl8225z2_gain_bg, align 8
  store i64* %23, i64** %5, align 8
  br label %26

24:                                               ; preds = %18
  %25 = load i64*, i64** @rtl8225z2_gain_a, align 8
  store i64* %25, i64** %5, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i16, i16* %4, align 2
  %30 = sext i16 %29 to i32
  %31 = mul nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @write_phy_ofdm(%struct.net_device* %27, i32 11, i64 %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = load i16, i16* %4, align 2
  %39 = sext i16 %38 to i32
  %40 = mul nsw i32 %39, 3
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %37, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @write_phy_ofdm(%struct.net_device* %36, i32 27, i64 %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = load i16, i16* %4, align 2
  %49 = sext i16 %48 to i32
  %50 = mul nsw i32 %49, 3
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %47, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @write_phy_ofdm(%struct.net_device* %46, i32 29, i64 %54)
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @write_phy_ofdm(%struct.net_device* %56, i32 33, i64 55)
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_phy_ofdm(%struct.net_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
