; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_crypt_tkip.c_ieee80211_michael_mic_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_crypt_tkip.c_ieee80211_michael_mic_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee80211_hdr_4addr = type { i32*, i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iw_michaelmicfailure = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }

@IW_MICFAILURE_KEY_ID = common dso_local global i32 0, align 4
@IW_MICFAILURE_GROUP = common dso_local global i32 0, align 4
@IW_MICFAILURE_PAIRWISE = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IWEVMICHAELMICFAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ieee80211_hdr_4addr*, i32)* @ieee80211_michael_mic_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_michael_mic_failure(%struct.net_device* %0, %struct.ieee80211_hdr_4addr* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee80211_hdr_4addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.iwreq_data, align 4
  %8 = alloca %struct.iw_michaelmicfailure, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee80211_hdr_4addr* %1, %struct.ieee80211_hdr_4addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.iw_michaelmicfailure* %8 to %union.iwreq_data*
  %10 = call i32 @memset(%union.iwreq_data* %9, i32 0, i32 16)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IW_MICFAILURE_KEY_ID, align 4
  %13 = and i32 %11, %12
  %14 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %8, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @IW_MICFAILURE_GROUP, align 4
  %24 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @IW_MICFAILURE_PAIRWISE, align 4
  %29 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @ARPHRD_ETHER, align 4
  %34 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %8, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %8, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %38, i32 %41, i32 %42)
  %44 = call i32 @memset(%union.iwreq_data* %7, i32 0, i32 8)
  %45 = bitcast %union.iwreq_data* %7 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 16, i32* %46, align 4
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load i32, i32* @IWEVMICHAELMICFAILURE, align 4
  %49 = bitcast %struct.iw_michaelmicfailure* %8 to i8*
  %50 = call i32 @wireless_send_event(%struct.net_device* %47, i32 %48, %union.iwreq_data* %7, i8* %49)
  ret void
}

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %union.iwreq_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
