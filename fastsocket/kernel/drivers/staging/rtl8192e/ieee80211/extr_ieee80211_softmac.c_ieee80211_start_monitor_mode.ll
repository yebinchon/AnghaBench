; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_start_monitor_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_start_monitor_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32 (i32)*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_start_monitor_mode(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %3 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 1
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = icmp ne i32 (i32)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 1
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18)
  br label %20

20:                                               ; preds = %12, %7
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netif_carrier_on(i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
