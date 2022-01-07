; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_is_unicast_robust_mgmt_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_is_unicast_robust_mgmt_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ieee80211_is_unicast_robust_mgmt_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_is_unicast_robust_mgmt_frame(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %8, %struct.ieee80211_hdr** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 24
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @is_multicast_ether_addr(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %23

20:                                               ; preds = %13
  %21 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %22 = call i32 @ieee80211_is_robust_mgmt_frame(%struct.ieee80211_hdr* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %19
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_is_robust_mgmt_frame(%struct.ieee80211_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
