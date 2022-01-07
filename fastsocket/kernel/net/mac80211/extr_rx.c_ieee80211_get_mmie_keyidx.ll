; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_get_mmie_keyidx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_get_mmie_keyidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_mgmt = type { i32 }
%struct.ieee80211_mmie = type { i64, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@WLAN_EID_MMIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ieee80211_get_mmie_keyidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_get_mmie_keyidx(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_mgmt*, align 8
  %5 = alloca %struct.ieee80211_mmie*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %10, %struct.ieee80211_mgmt** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 40
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @is_multicast_ether_addr(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %1
  store i32 -1, i32* %2, align 4
  br label %57

23:                                               ; preds = %16
  %24 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %4, align 8
  %25 = bitcast %struct.ieee80211_mgmt* %24 to %struct.ieee80211_hdr*
  %26 = call i32 @ieee80211_is_robust_mgmt_frame(%struct.ieee80211_hdr* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %57

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 16
  %39 = inttoptr i64 %38 to %struct.ieee80211_mmie*
  store %struct.ieee80211_mmie* %39, %struct.ieee80211_mmie** %5, align 8
  %40 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WLAN_EID_MMIE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %29
  %46 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 14
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %29
  store i32 -1, i32* %2, align 4
  br label %57

52:                                               ; preds = %45
  %53 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %51, %28, %22
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_is_robust_mgmt_frame(%struct.ieee80211_hdr*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
