; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_rx.c_ieee80211_rx_mgt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_rx.c_ieee80211_rx_mgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.ieee80211_hdr_4addr = type { i32 }
%struct.ieee80211_rx_stats = type { i32 }
%struct.ieee80211_probe_response = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"received BEACON (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Beacon\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"received PROBE RESPONSE (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Probe response\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_rx_mgt(%struct.ieee80211_device* %0, %struct.ieee80211_hdr_4addr* %1, %struct.ieee80211_rx_stats* %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.ieee80211_hdr_4addr*, align 8
  %6 = alloca %struct.ieee80211_rx_stats*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.ieee80211_hdr_4addr* %1, %struct.ieee80211_hdr_4addr** %5, align 8
  store %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats** %6, align 8
  %7 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @WLAN_FC_GET_STYPE(i32 %9)
  switch i32 %10, label %35 [
    i32 129, label %11
    i32 128, label %23
  ]

11:                                               ; preds = %3
  %12 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @WLAN_FC_GET_STYPE(i32 %14)
  %16 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @IEEE80211_DEBUG_SCAN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %19 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %20 = bitcast %struct.ieee80211_hdr_4addr* %19 to %struct.ieee80211_probe_response*
  %21 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %22 = call i32 @ieee80211_process_probe_response(%struct.ieee80211_device* %18, %struct.ieee80211_probe_response* %20, %struct.ieee80211_rx_stats* %21)
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @WLAN_FC_GET_STYPE(i32 %26)
  %28 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = call i32 @IEEE80211_DEBUG_SCAN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %31 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %32 = bitcast %struct.ieee80211_hdr_4addr* %31 to %struct.ieee80211_probe_response*
  %33 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %34 = call i32 @ieee80211_process_probe_response(%struct.ieee80211_device* %30, %struct.ieee80211_probe_response* %32, %struct.ieee80211_rx_stats* %33)
  br label %35

35:                                               ; preds = %3, %23, %11
  ret void
}

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #1

declare dso_local i32 @IEEE80211_DEBUG_MGMT(i8*, i32) #1

declare dso_local i32 @IEEE80211_DEBUG_SCAN(i8*) #1

declare dso_local i32 @ieee80211_process_probe_response(%struct.ieee80211_device*, %struct.ieee80211_probe_response*, %struct.ieee80211_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
