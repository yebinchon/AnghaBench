; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_ieee80211_indicate_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_ieee80211_indicate_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32 }
%struct.ieee80211_rxb = type { i64, i32*, i32*, %struct.sk_buff** }
%struct.sk_buff = type { i32*, i32, i32, i32, i32, i32 }

@rfc1042_header = common dso_local global i32 0, align 4
@SNAP_SIZE = common dso_local global i32 0, align 4
@ETH_P_AARP = common dso_local global i32 0, align 4
@ETH_P_IPX = common dso_local global i32 0, align 4
@bridge_tunnel_header = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_indicate_packets(%struct.ieee80211_device* %0, %struct.ieee80211_rxb** %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.ieee80211_rxb**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rxb*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.ieee80211_rxb** %1, %struct.ieee80211_rxb*** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %154, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %157

17:                                               ; preds = %13
  %18 = load %struct.ieee80211_rxb**, %struct.ieee80211_rxb*** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %18, i64 %19
  %21 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %20, align 8
  store %struct.ieee80211_rxb* %21, %struct.ieee80211_rxb** %10, align 8
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %148, %17
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %151

28:                                               ; preds = %22
  %29 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %30 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %29, i32 0, i32 3
  %31 = load %struct.sk_buff**, %struct.sk_buff*** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %31, i64 %32
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %11, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 7
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %40, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %49, 8
  br i1 %50, label %51, label %95

51:                                               ; preds = %28
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @rfc1042_header, align 4
  %56 = load i32, i32* @SNAP_SIZE, align 4
  %57 = call i64 @memcmp(i32* %54, i32 %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ETH_P_AARP, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ETH_P_IPX, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %63, %59, %51
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @bridge_tunnel_header, align 4
  %72 = load i32, i32* @SNAP_SIZE, align 4
  %73 = call i64 @memcmp(i32* %70, i32 %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %67, %63
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = load i32, i32* @SNAP_SIZE, align 4
  %78 = call i32 @skb_pull(%struct.sk_buff* %76, i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = call i32 @skb_push(%struct.sk_buff* %79, i32 %80)
  %82 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @ETH_ALEN, align 4
  %86 = call i32 @memcpy(i32 %81, i32* %84, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @skb_push(%struct.sk_buff* %87, i32 %88)
  %90 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @ETH_ALEN, align 4
  %94 = call i32 @memcpy(i32 %89, i32* %92, i32 %93)
  br label %119

95:                                               ; preds = %67, %28
  %96 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @htons(i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = call i32 @skb_push(%struct.sk_buff* %100, i32 2)
  %102 = call i32 @memcpy(i32 %101, i32* %12, i32 2)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %104 = load i32, i32* @ETH_ALEN, align 4
  %105 = call i32 @skb_push(%struct.sk_buff* %103, i32 %104)
  %106 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %107 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @ETH_ALEN, align 4
  %110 = call i32 @memcpy(i32 %105, i32* %108, i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = load i32, i32* @ETH_ALEN, align 4
  %113 = call i32 @skb_push(%struct.sk_buff* %111, i32 %112)
  %114 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %115 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @ETH_ALEN, align 4
  %118 = call i32 @memcpy(i32 %113, i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %95, %75
  %120 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %121 = icmp ne %struct.sk_buff* %120, null
  br i1 %121, label %122, label %147

122:                                              ; preds = %119
  %123 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %124 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %125 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @eth_type_trans(%struct.sk_buff* %123, i32 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @memset(i32 %132, i32 0, i32 4)
  %134 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %135 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @CHECKSUM_NONE, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @jiffies, align 4
  %143 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %144 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %146 = call i32 @netif_rx(%struct.sk_buff* %145)
  br label %147

147:                                              ; preds = %122, %119
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %7, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %7, align 8
  br label %22

151:                                              ; preds = %22
  %152 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %153 = call i32 @kfree(%struct.ieee80211_rxb* %152)
  store %struct.ieee80211_rxb* null, %struct.ieee80211_rxb** %10, align 8
  br label %154

154:                                              ; preds = %151
  %155 = load i64, i64* %8, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %8, align 8
  br label %13

157:                                              ; preds = %13
  ret void
}

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.ieee80211_rxb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
