; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_free_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_free_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@WLAN_CIPHER_SUITE_CCMP = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_key*)* @ieee80211_key_free_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_key_free_common(%struct.ieee80211_key* %0) #0 {
  %2 = alloca %struct.ieee80211_key*, align 8
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %2, align 8
  %3 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WLAN_CIPHER_SUITE_CCMP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ieee80211_aes_key_free(i32 %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ieee80211_aes_cmac_key_free(i32 %28)
  br label %30

30:                                               ; preds = %23, %16
  %31 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %32 = call i32 @kfree(%struct.ieee80211_key* %31)
  ret void
}

declare dso_local i32 @ieee80211_aes_key_free(i32) #1

declare dso_local i32 @ieee80211_aes_cmac_key_free(i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
