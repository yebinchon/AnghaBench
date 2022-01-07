; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211netdev_rx_bh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211netdev_rx_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i8*, i32 }
%struct.sk_buff = type { i64, %struct.TYPE_10__*, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }

@WLAN_DEVICE_OPEN = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_80211_RAW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"p80211_to_ether failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @p80211netdev_rx_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p80211netdev_rx_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %5, align 8
  br label %13

13:                                               ; preds = %150, %124, %111, %79, %30, %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = call %struct.sk_buff* @skb_dequeue(i32* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %153

18:                                               ; preds = %13
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WLAN_DEVICE_OPEN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %150

24:                                               ; preds = %18
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ARPHRD_ETHER, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %24
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @skb_reset_mac_header(%struct.sk_buff* %34)
  %36 = load i32, i32* @CHECKSUM_NONE, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @PACKET_OTHERHOST, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ETH_P_80211_RAW, align 4
  %43 = call i32 @htons(i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** @jiffies, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %56
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @netif_rx_ni(%struct.sk_buff* %64)
  br label %13

66:                                               ; preds = %24
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %6, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le16_to_cpu(i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @p80211_rx_typedrop(%struct.TYPE_8__* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @dev_kfree_skb(%struct.sk_buff* %80)
  br label %13

82:                                               ; preds = %66
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IFF_ALLMULTI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %82
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ETH_ALEN, align 4
  %101 = call i64 @memcmp(i32* %94, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %91
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %103
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = call i32 @dev_kfree_skb(%struct.sk_buff* %112)
  br label %13

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %91
  br label %116

116:                                              ; preds = %115, %82
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i64 @skb_p80211_to_ether(%struct.TYPE_8__* %117, i32 %120, %struct.sk_buff* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %116
  %125 = load i8*, i8** @jiffies, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  store i8* %125, i8** %129, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %137
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = call i32 @netif_rx_ni(%struct.sk_buff* %145)
  br label %13

147:                                              ; preds = %116
  %148 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149, %18
  %151 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %152 = call i32 @dev_kfree_skb(%struct.sk_buff* %151)
  br label %13

153:                                              ; preds = %13
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @p80211_rx_typedrop(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i64 @skb_p80211_to_ether(%struct.TYPE_8__*, i32, %struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
