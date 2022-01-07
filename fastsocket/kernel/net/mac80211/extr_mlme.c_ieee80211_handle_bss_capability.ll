; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_handle_bss_capability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_handle_bss_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i32, i32 }

@WLAN_ERP_USE_PROTECTION = common dso_local global i32 0, align 4
@WLAN_ERP_BARKER_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i32, i32, i32)* @ieee80211_handle_bss_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_handle_bss_capability(%struct.ieee80211_sub_if_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_bss_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %16, %struct.ieee80211_bss_conf** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @WLAN_ERP_USE_PROTECTION, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @WLAN_ERP_BARKER_PREAMBLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %12, align 4
  br label %38

30:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %30, %19
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @WLAN_CAPABILITY_SHORT_SLOT_TIME, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %47 = call i64 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data* %46)
  %48 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32 1, i32* %13, align 4
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %57, %51
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %70, %64
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %80 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %86 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %83, %77
  %91 = load i32, i32* %10, align 4
  ret i32 %91
}

declare dso_local i64 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
