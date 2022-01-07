; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c___wlan_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c___wlan_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.dma_desc = type { i32 }
%struct.carl9170_tx_superframe = type { %struct.TYPE_15__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@fw = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@CARL9170_PSM_WAKE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*)* @__wlan_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wlan_tx(%struct.dma_desc* %0) #0 {
  %2 = alloca %struct.dma_desc*, align 8
  %3 = alloca %struct.carl9170_tx_superframe*, align 8
  %4 = alloca %struct.ieee80211_mgmt*, align 8
  %5 = alloca i32*, align 8
  store %struct.dma_desc* %0, %struct.dma_desc** %2, align 8
  %6 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %7 = call %struct.carl9170_tx_superframe* @get_super(%struct.dma_desc* %6)
  store %struct.carl9170_tx_superframe* %7, %struct.carl9170_tx_superframe** %3, align 8
  %8 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %9 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %16 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i8*
  %20 = bitcast i8* %19 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %20, %struct.ieee80211_mgmt** %4, align 8
  %21 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @read_tsf(i32* %25)
  br label %27

27:                                               ; preds = %14, %1
  %28 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %29 = call i32 @wlan_tx_ampdu(%struct.carl9170_tx_superframe* %28)
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 0, i32 0), align 8
  %31 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %32 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %37 = call i32 @dma_put(i32* %35, %struct.dma_desc* %36)
  ret void
}

declare dso_local %struct.carl9170_tx_superframe* @get_super(%struct.dma_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @read_tsf(i32*) #1

declare dso_local i32 @wlan_tx_ampdu(%struct.carl9170_tx_superframe*) #1

declare dso_local i32 @dma_put(i32*, %struct.dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
