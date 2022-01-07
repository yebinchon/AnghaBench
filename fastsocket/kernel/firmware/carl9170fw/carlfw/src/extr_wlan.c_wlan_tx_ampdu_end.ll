; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_tx_ampdu_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_tx_ampdu_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.carl9170_tx_superframe** }
%struct.carl9170_tx_superframe = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@fw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wlan_tx_ampdu_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_tx_ampdu_end(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.carl9170_tx_superframe*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.carl9170_tx_superframe**, %struct.carl9170_tx_superframe*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 0, i32 0), align 8
  %5 = load i32, i32* %2, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %4, i64 %6
  %8 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %7, align 8
  store %struct.carl9170_tx_superframe* %8, %struct.carl9170_tx_superframe** %3, align 8
  %9 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %10 = icmp ne %struct.carl9170_tx_superframe* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %13 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @wlan_tx_ampdu_reset(i32 %18)
  ret void
}

declare dso_local i32 @wlan_tx_ampdu_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
