; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_MFIE_rate_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_MFIE_rate_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }

@IEEE80211_CCK_MODULATION = common dso_local global i32 0, align 4
@IEEE80211_CCK_RATE_LEN = common dso_local global i32 0, align 4
@IEEE80211_OFDM_MODULATION = common dso_local global i32 0, align 4
@IEEE80211_OFDM_RATE_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_MFIE_rate_len(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IEEE80211_CCK_MODULATION, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @IEEE80211_CCK_RATE_LEN, align 4
  %12 = add nsw i32 %11, 2
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_OFDM_MODULATION, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load i64, i64* @IEEE80211_OFDM_RATE_LEN, align 8
  %22 = add nsw i64 %21, 2
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
