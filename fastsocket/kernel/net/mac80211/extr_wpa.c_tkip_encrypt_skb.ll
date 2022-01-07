; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_tkip_encrypt_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_tkip_encrypt_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_12__*, %struct.ieee80211_key* }
%struct.TYPE_12__ = type { i32 }
%struct.ieee80211_key = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@TKIP_ICV_LEN = common dso_local global i32 0, align 4
@TKIP_IV_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*, %struct.sk_buff*)* @tkip_encrypt_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tkip_encrypt_skb(%struct.ieee80211_tx_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_tx_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %6, align 8
  %17 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %17, i32 0, i32 1
  %19 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  store %struct.ieee80211_key* %19, %struct.ieee80211_key** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %20)
  store %struct.ieee80211_tx_info* %21, %struct.ieee80211_tx_info** %8, align 8
  %22 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %2
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %27
  %38 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %175

48:                                               ; preds = %37, %27, %2
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ieee80211_hdrlen(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sub i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %66

64:                                               ; preds = %48
  %65 = load i32, i32* @TKIP_ICV_LEN, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 @skb_tailroom(%struct.sk_buff* %67)
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i64 @skb_headroom(%struct.sk_buff* %72)
  %74 = load i64, i64* @TKIP_IV_LEN, align 8
  %75 = icmp slt i64 %73, %74
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ true, %66 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @WARN_ON(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 -1, i32* %3, align 4
  br label %175

82:                                               ; preds = %76
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load i64, i64* @TKIP_IV_LEN, align 8
  %85 = call i32* @skb_push(%struct.sk_buff* %83, i64 %84)
  store i32* %85, i32** %12, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i64, i64* @TKIP_IV_LEN, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @memmove(i32* %86, i32* %89, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call i64 @skb_network_offset(%struct.sk_buff* %93)
  %95 = load i64, i64* @TKIP_IV_LEN, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @skb_set_network_header(%struct.sk_buff* %92, i64 %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %12, align 8
  %102 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %82
  %108 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %109 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %175

118:                                              ; preds = %107, %82
  %119 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = call i32 @spin_lock(i32* %122)
  %124 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %132 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %118
  %139 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %138, %118
  %147 = load i32*, i32** %12, align 8
  %148 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %149 = call i32* @ieee80211_tkip_add_iv(i32* %147, %struct.ieee80211_key* %148)
  store i32* %149, i32** %12, align 8
  %150 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %151 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = call i32 @spin_unlock(i32* %153)
  %155 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %156 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = icmp ne %struct.TYPE_10__* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %175

161:                                              ; preds = %146
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = load i32, i32* @TKIP_ICV_LEN, align 4
  %164 = call i32 @skb_put(%struct.sk_buff* %162, i32 %163)
  %165 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %166 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @ieee80211_tkip_encrypt_data(i32 %169, %struct.ieee80211_key* %170, %struct.sk_buff* %171, i32* %172, i32 %173)
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %161, %160, %117, %81, %47
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @ieee80211_tkip_add_iv(i32*, %struct.ieee80211_key*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_tkip_encrypt_data(i32, %struct.ieee80211_key*, %struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
