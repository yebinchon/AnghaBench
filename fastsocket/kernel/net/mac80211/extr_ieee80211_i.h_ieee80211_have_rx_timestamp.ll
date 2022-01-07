; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ieee80211_i.h_ieee80211_have_rx_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ieee80211_i.h_ieee80211_have_rx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_status = type { i32 }

@RX_FLAG_MACTIME_START = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_status*)* @ieee80211_have_rx_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status* %0) #0 {
  %2 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ieee80211_rx_status* %0, %struct.ieee80211_rx_status** %2, align 8
  %3 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RX_FLAG_MACTIME_START, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i1 [ false, %1 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RX_FLAG_MACTIME_START, align 4
  %24 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  ret i32 %26
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
