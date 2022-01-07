; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_start_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_start_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i32 (i32)*, i32, i32 }

@IEEE_SOFTMAC_SCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_start_scan(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %3 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %4 = call i64 @IS_DOT11D_ENABLE(%struct.ieee80211_device* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %8 = call i64 @IS_COUNTRY_IE_VALID(%struct.ieee80211_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %12 = call i32 @RESET_CIE_WATCHDOG(%struct.ieee80211_device* %11)
  br label %13

13:                                               ; preds = %10, %6
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE_SOFTMAC_SCAN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %32, i32 0, i32 4
  %34 = call i32 @queue_delayed_work(i32 %31, i32* %33, i32 0)
  br label %35

35:                                               ; preds = %26, %21
  br label %44

36:                                               ; preds = %14
  %37 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %37, i32 0, i32 3
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %39(i32 %42)
  br label %44

44:                                               ; preds = %36, %35
  ret void
}

declare dso_local i64 @IS_DOT11D_ENABLE(%struct.ieee80211_device*) #1

declare dso_local i64 @IS_COUNTRY_IE_VALID(%struct.ieee80211_device*) #1

declare dso_local i32 @RESET_CIE_WATCHDOG(%struct.ieee80211_device*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
