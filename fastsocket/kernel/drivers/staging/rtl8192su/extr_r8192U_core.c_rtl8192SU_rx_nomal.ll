; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_rx_nomal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_rx_nomal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.rtl8192_rx_info = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ieee80211_rx_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_hdr_1addr = type { i32 }

@IEEE80211_24GHZ_BAND = common dso_local global i32 0, align 4
@RX_URB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"actual_length:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192SU_rx_nomal(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rtl8192_rx_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.ieee80211_rx_stats, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_hdr_1addr*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.rtl8192_rx_info*
  store %struct.rtl8192_rx_info* %13, %struct.rtl8192_rx_info** %3, align 8
  %14 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %3, align 8
  %15 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i64 @ieee80211_priv(%struct.net_device* %17)
  %19 = inttoptr i64 %18 to %struct.r8192_priv*
  store %struct.r8192_priv* %19, %struct.r8192_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 0
  store i32 -98, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 1
  %22 = load i32, i32* @IEEE80211_24GHZ_BAND, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 3
  store i32 0, i32* %24, align 4
  store i32 0, i32* %7, align 4
  store %struct.ieee80211_hdr_1addr* null, %struct.ieee80211_hdr_1addr** %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 24
  br i1 %29, label %30, label %94

30:                                               ; preds = %1
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RX_URB_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = call i32 @rtl8192SU_query_rxdesc_status(%struct.sk_buff* %37, %struct.ieee80211_rx_stats* %6, i32 0)
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 4
  %49 = call i32 @skb_trim(%struct.sk_buff* %44, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %7, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.ieee80211_hdr_1addr*
  store %struct.ieee80211_hdr_1addr* %56, %struct.ieee80211_hdr_1addr** %8, align 8
  store i32 0, i32* %9, align 4
  %57 = load %struct.ieee80211_hdr_1addr*, %struct.ieee80211_hdr_1addr** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hdr_1addr, %struct.ieee80211_hdr_1addr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @is_broadcast_ether_addr(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %36
  br label %72

63:                                               ; preds = %36
  %64 = load %struct.ieee80211_hdr_1addr*, %struct.ieee80211_hdr_1addr** %8, align 8
  %65 = getelementptr inbounds %struct.ieee80211_hdr_1addr, %struct.ieee80211_hdr_1addr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @is_multicast_ether_addr(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %71

70:                                               ; preds = %63
  store i32 1, i32* %9, align 4
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %62
  %73 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %74 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %77 = call i32 @ieee80211_rx(i32 %75, %struct.sk_buff* %76, %struct.ieee80211_rx_stats* %6)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  br label %93

82:                                               ; preds = %72
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %88 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %82
  br label %93

93:                                               ; preds = %92, %79
  br label %106

94:                                               ; preds = %30, %1
  %95 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %96 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %105 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %104)
  br label %106

106:                                              ; preds = %94, %93
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192SU_query_rxdesc_status(%struct.sk_buff*, %struct.ieee80211_rx_stats*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_rx(i32, %struct.sk_buff*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
