; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_rx.c_ieee80211_rx_mgt_rsl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_rx.c_ieee80211_rx_mgt_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i64, i64, i32, i32, i64 }
%struct.ieee80211_hdr_4addr = type { i32 }
%struct.ieee80211_rx_stats = type { i32 }
%struct.ieee80211_probe_response = type { i32 }

@IEEE80211_PS_DISABLED = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
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
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %3
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IEEE80211_PS_DISABLED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IW_MODE_INFRA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IEEE80211_LINKED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %3
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 4
  %32 = call i32 @tasklet_schedule(i32* %31)
  br label %33

33:                                               ; preds = %29, %23, %17, %11
  %34 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @WLAN_FC_GET_STYPE(i32 %36)
  %38 = icmp ne i32 %37, 128
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WLAN_FC_GET_STYPE(i32 %42)
  %44 = icmp ne i32 %43, 129
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @jiffies, align 4
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %39, %33
  %50 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @WLAN_FC_GET_STYPE(i32 %52)
  switch i32 %53, label %78 [
    i32 129, label %54
    i32 128, label %66
  ]

54:                                               ; preds = %49
  %55 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @WLAN_FC_GET_STYPE(i32 %57)
  %59 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = call i32 @IEEE80211_DEBUG_SCAN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %62 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %63 = bitcast %struct.ieee80211_hdr_4addr* %62 to %struct.ieee80211_probe_response*
  %64 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %65 = call i32 @ieee80211_process_probe_response(%struct.ieee80211_device* %61, %struct.ieee80211_probe_response* %63, %struct.ieee80211_rx_stats* %64)
  br label %78

66:                                               ; preds = %49
  %67 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @WLAN_FC_GET_STYPE(i32 %69)
  %71 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = call i32 @IEEE80211_DEBUG_SCAN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %74 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %75 = bitcast %struct.ieee80211_hdr_4addr* %74 to %struct.ieee80211_probe_response*
  %76 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %77 = call i32 @ieee80211_process_probe_response(%struct.ieee80211_device* %73, %struct.ieee80211_probe_response* %75, %struct.ieee80211_rx_stats* %76)
  br label %78

78:                                               ; preds = %49, %66, %54
  ret void
}

declare dso_local i32 @tasklet_schedule(i32*) #1

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
