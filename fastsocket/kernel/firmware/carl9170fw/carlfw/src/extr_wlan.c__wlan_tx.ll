; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c__wlan_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c__wlan_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }
%struct.carl9170_tx_superframe = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AR9170_MAC_REG_AMPDU_DENSITY = common dso_local global i32 0, align 4
@AR9170_MAC_AMPDU_DENSITY = common dso_local global i32 0, align 4
@AR9170_MAC_REG_AMPDU_FACTOR = common dso_local global i32 0, align 4
@AR9170_MAC_AMPDU_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*)* @_wlan_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_wlan_tx(%struct.dma_desc* %0) #0 {
  %2 = alloca %struct.dma_desc*, align 8
  %3 = alloca %struct.carl9170_tx_superframe*, align 8
  store %struct.dma_desc* %0, %struct.dma_desc** %2, align 8
  %4 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %5 = call %struct.carl9170_tx_superframe* @get_super(%struct.dma_desc* %4)
  store %struct.carl9170_tx_superframe* %5, %struct.carl9170_tx_superframe** %3, align 8
  %6 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %7 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %14 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %18 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wlan_assign_seq(i32* %16, i32 %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %24 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load i32, i32* @AR9170_MAC_REG_AMPDU_DENSITY, align 4
  %31 = load i32, i32* @AR9170_MAC_AMPDU_DENSITY, align 4
  %32 = load i32, i32* @AR9170_MAC_REG_AMPDU_DENSITY, align 4
  %33 = call i32 @get(i32 %32)
  %34 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %35 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MOD_VAL(i32 %31, i32 %33, i32 %37)
  %39 = call i32 @set(i32 %30, i32 %38)
  br label %40

40:                                               ; preds = %29, %22
  %41 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %42 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load i32, i32* @AR9170_MAC_REG_AMPDU_FACTOR, align 4
  %49 = load i32, i32* @AR9170_MAC_AMPDU_FACTOR, align 4
  %50 = load i32, i32* @AR9170_MAC_REG_AMPDU_FACTOR, align 4
  %51 = call i32 @get(i32 %50)
  %52 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %53 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 8, %55
  %57 = call i32 @MOD_VAL(i32 %49, i32 %51, i32 %56)
  %58 = call i32 @set(i32 %48, i32 %57)
  br label %59

59:                                               ; preds = %47, %40
  ret void
}

declare dso_local %struct.carl9170_tx_superframe* @get_super(%struct.dma_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wlan_assign_seq(i32*, i32) #1

declare dso_local i32 @set(i32, i32) #1

declare dso_local i32 @MOD_VAL(i32, i32, i32) #1

declare dso_local i32 @get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
