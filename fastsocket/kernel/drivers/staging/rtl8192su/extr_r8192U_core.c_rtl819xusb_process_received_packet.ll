; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl819xusb_process_received_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl819xusb_process_received_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i32, i32*)* }
%struct.net_device = type { i32 }
%struct.ieee80211_rx_stats = type { i32, i32* }
%struct.r8192_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@Adapter = common dso_local global %struct.TYPE_9__* null, align 8
@HW_VAR_RF_STATE = common dso_local global i32 0, align 4
@eRfOff = common dso_local global i64 0, align 8
@pRfd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl819xusb_process_received_packet(%struct.net_device* %0, %struct.ieee80211_rx_stats* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee80211_rx_stats*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %7, align 8
  %10 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %11 = call i32 @get_rxpacket_shiftbytes_819xusb(%struct.ieee80211_rx_stats* %10)
  %12 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %13, align 8
  %17 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %30 = call i64 @rtl819xusb_rx_command_packet(%struct.net_device* %28, %struct.ieee80211_rx_stats* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @get_rxpacket_shiftbytes_819xusb(%struct.ieee80211_rx_stats*) #1

declare dso_local i64 @rtl819xusb_rx_command_packet(%struct.net_device*, %struct.ieee80211_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
