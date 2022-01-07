; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32 (%struct.carl9170_tx_superframe*, i32)*, %struct.dma_desc*, %struct.carl9170_tx_superframe*, i32, i64* }
%struct.dma_desc = type { i32 }
%struct.carl9170_tx_superframe = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.dma_queue = type { i32 }

@fw = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@AR9170_CTRL_FAIL = common dso_local global i32 0, align 4
@AR9170_CTRL_TXFAIL = common dso_local global i32 0, align 4
@AR9170_CTRL_BAFAIL = common dso_local global i32 0, align 4
@IEEE80211_FCTL_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_queue*, %struct.dma_desc*)* @wlan_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_tx_status(%struct.dma_queue* %0, %struct.dma_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_queue*, align 8
  %5 = alloca %struct.dma_desc*, align 8
  %6 = alloca %struct.carl9170_tx_superframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dma_queue* %0, %struct.dma_queue** %4, align 8
  store %struct.dma_desc* %1, %struct.dma_desc** %5, align 8
  %10 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %11 = call %struct.carl9170_tx_superframe* @get_super(%struct.dma_desc* %10)
  store %struct.carl9170_tx_superframe* %11, %struct.carl9170_tx_superframe** %6, align 8
  %12 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %6, align 8
  %13 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %16 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 1, i32 7), align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 0, i64* %19, align 8
  %20 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %21 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AR9170_CTRL_FAIL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %80

26:                                               ; preds = %2
  %27 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %28 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AR9170_CTRL_TXFAIL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @AR9170_CTRL_TXFAIL, align 4
  %37 = load i32, i32* @AR9170_CTRL_BAFAIL, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %41 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %6, align 8
  %45 = call i64 @wlan_tx_consume_retry(%struct.carl9170_tx_superframe* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %26
  %48 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %6, align 8
  %49 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @IEEE80211_FCTL_RETRY, align 4
  %57 = call i32 @cpu_to_le16(i32 %56)
  %58 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %6, align 8
  %59 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %57
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %55, %47
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %70 = call i32 @dma_rearm(%struct.dma_desc* %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @wlan_txunstuck(i32 %71)
  store i32 0, i32* %3, align 4
  br label %126

73:                                               ; preds = %65
  %74 = load %struct.dma_queue*, %struct.dma_queue** %4, align 8
  %75 = call %struct.dma_desc* @dma_unlink_head(%struct.dma_queue* %74)
  %76 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %77 = call i32 @dma_put(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 1, i32 6), %struct.dma_desc* %76)
  store i32 1, i32* %3, align 4
  br label %126

78:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %2
  %81 = load %struct.dma_queue*, %struct.dma_queue** %4, align 8
  %82 = call %struct.dma_desc* @dma_unlink_head(%struct.dma_queue* %81)
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @wlan_txunstuck(i32 %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %90 = call i32 @unhide_super(%struct.dma_desc* %89)
  %91 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %6, align 8
  %92 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 1, i32 5), align 8
  %93 = icmp eq %struct.carl9170_tx_superframe* %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  store %struct.dma_desc* %98, %struct.dma_desc** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 1, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 1, i32 0), align 8
  %99 = load i32 (%struct.carl9170_tx_superframe*, i32)*, i32 (%struct.carl9170_tx_superframe*, i32)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 1, i32 3), align 8
  %100 = icmp ne i32 (%struct.carl9170_tx_superframe*, i32)* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32 (%struct.carl9170_tx_superframe*, i32)*, i32 (%struct.carl9170_tx_superframe*, i32)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 1, i32 3), align 8
  %103 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 %102(%struct.carl9170_tx_superframe* %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %97
  store i32 1, i32* %3, align 4
  br label %126

107:                                              ; preds = %88
  %108 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @wlan_tx_complete(%struct.carl9170_tx_superframe* %108, i32 %109)
  %111 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %6, align 8
  %112 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @ieee80211_is_back_req(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %107
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 1, i32 1), align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 1, i32 1), align 4
  br label %122

122:                                              ; preds = %119, %107
  %123 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %124 = call i32 @dma_reclaim(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fw, i32 0, i32 0, i32 0), %struct.dma_desc* %123)
  %125 = call i32 (...) @down_trigger()
  store i32 1, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %106, %73, %68
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.carl9170_tx_superframe* @get_super(%struct.dma_desc*) #1

declare dso_local i64 @wlan_tx_consume_retry(%struct.carl9170_tx_superframe*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dma_rearm(%struct.dma_desc*) #1

declare dso_local i32 @wlan_txunstuck(i32) #1

declare dso_local %struct.dma_desc* @dma_unlink_head(%struct.dma_queue*) #1

declare dso_local i32 @dma_put(i32*, %struct.dma_desc*) #1

declare dso_local i32 @unhide_super(%struct.dma_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wlan_tx_complete(%struct.carl9170_tx_superframe*, i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i32 @dma_reclaim(i32*, %struct.dma_desc*) #1

declare dso_local i32 @down_trigger(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
