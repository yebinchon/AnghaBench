; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_should_drop_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_should_drop_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_rx_status = type { i64, i32 }
%struct.ieee80211_hdr = type { i32 }

@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_PLCP_CRC = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_IS_ZEROLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @should_drop_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_drop_frame(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %8)
  store %struct.ieee80211_rx_status* %9, %struct.ieee80211_rx_status** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %7, align 8
  %19 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %23 = load i32, i32* @RX_FLAG_FAILED_PLCP_CRC, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RX_FLAG_AMPDU_IS_ZEROLEN, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %21, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %66

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 16, %34
  %36 = sext i32 %35 to i64
  %37 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = icmp slt i64 %33, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %66

46:                                               ; preds = %30
  %47 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ieee80211_is_ctl(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ieee80211_is_pspoll(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ieee80211_is_back_req(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %58, %52, %46
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %45, %29
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @ieee80211_is_pspoll(i32) #1

declare dso_local i32 @ieee80211_is_back_req(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
