; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_use_mfp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_use_mfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@WLAN_STA_MFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sta_info*, %struct.sk_buff*)* @ieee80211_use_mfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_use_mfp(i32 %0, %struct.sta_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ieee80211_is_mgmt(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

12:                                               ; preds = %3
  %13 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %14 = icmp eq %struct.sta_info* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %17 = load i32, i32* @WLAN_STA_MFP, align 4
  %18 = call i32 @test_sta_flag(%struct.sta_info* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %12
  store i32 0, i32* %4, align 4
  br label %30

21:                                               ; preds = %15
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ieee80211_hdr*
  %26 = call i32 @ieee80211_is_robust_mgmt_frame(%struct.ieee80211_hdr* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %30

29:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28, %20, %11
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_is_robust_mgmt_frame(%struct.ieee80211_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
