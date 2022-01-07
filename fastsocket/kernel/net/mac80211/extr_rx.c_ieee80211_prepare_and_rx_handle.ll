; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_prepare_and_rx_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_prepare_and_rx_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.sk_buff*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_local* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_RX_RA_MATCH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to copy skb for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_data*, %struct.sk_buff*, i32)* @ieee80211_prepare_and_rx_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_prepare_and_rx_handle(%struct.ieee80211_rx_data* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_rx_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %13, i32 0, i32 2
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %8, align 8
  %16 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %17, align 8
  store %struct.ieee80211_sub_if_data* %18, %struct.ieee80211_sub_if_data** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %19)
  store %struct.ieee80211_rx_status* %20, %struct.ieee80211_rx_status** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %25, %struct.ieee80211_hdr** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %27, i32 0, i32 0
  store %struct.sk_buff* %26, %struct.sk_buff** %28, align 8
  %29 = load i32, i32* @IEEE80211_RX_RA_MATCH, align 4
  %30 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %36 = call i32 @prepare_for_handlers(%struct.ieee80211_rx_data* %34, %struct.ieee80211_hdr* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %40
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %44, i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %6, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %43
  %50 = call i64 (...) @net_ratelimit()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wiphy_debug(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %52, %49
  store i32 1, i32* %4, align 4
  br label %69

62:                                               ; preds = %43
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %64, i32 0, i32 0
  store %struct.sk_buff* %63, %struct.sk_buff** %65, align 8
  br label %66

66:                                               ; preds = %62, %40
  %67 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %68 = call i32 @ieee80211_invoke_rx_handlers(%struct.ieee80211_rx_data* %67)
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %61, %39
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @prepare_for_handlers(%struct.ieee80211_rx_data*, %struct.ieee80211_hdr*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_invoke_rx_handlers(%struct.ieee80211_rx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
