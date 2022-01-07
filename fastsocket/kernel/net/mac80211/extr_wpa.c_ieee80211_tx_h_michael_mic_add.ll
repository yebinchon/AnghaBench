; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_ieee80211_tx_h_michael_mic_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_ieee80211_tx_h_michael_mic_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.sk_buff* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32, i32* }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@TX_CONTINUE = common dso_local global i32 0, align 4
@TX_DROP = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_TKIP_MIC_FAILURE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_DONTFRAG = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@MICHAEL_MIC_LEN = common dso_local global i32 0, align 4
@TKIP_ICV_LEN = common dso_local global i64 0, align 8
@TKIP_IV_LEN = common dso_local global i64 0, align 8
@NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_tx_h_michael_mic_add(%struct.ieee80211_tx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_tx_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %3, align 8
  %13 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %13, i32 0, i32 2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %21, %struct.ieee80211_hdr** %9, align 8
  %22 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %1
  %27 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 24
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ieee80211_is_data_present(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40, %35, %26, %1
  %47 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %47, i32* %2, align 4
  br label %180

48:                                               ; preds = %40
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ieee80211_hdrlen(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @TX_DROP, align 4
  store i32 %59, i32* %2, align 4
  br label %180

60:                                               ; preds = %48
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sub i32 %69, %70
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %7, align 8
  %73 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IEEE80211_TX_INTFL_TKIP_MIC_FAILURE, align 4
  %77 = and i32 %75, %76
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %60
  %81 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %82 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %80, %60
  %85 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %86 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %118

90:                                               ; preds = %84
  %91 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %92 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IEEE80211_TX_CTL_DONTFRAG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %90
  %98 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %97, %90
  %107 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %108 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %106
  %117 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %117, i32* %2, align 4
  br label %180

118:                                              ; preds = %106, %97, %84
  %119 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  store i32 %119, i32* %12, align 4
  %120 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %121 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %118
  %126 = load i64, i64* @TKIP_ICV_LEN, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %125, %118
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = call i32 @skb_tailroom(%struct.sk_buff* %132)
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %138 = call i64 @skb_headroom(%struct.sk_buff* %137)
  %139 = load i64, i64* @TKIP_IV_LEN, align 8
  %140 = icmp slt i64 %138, %139
  br label %141

141:                                              ; preds = %136, %131
  %142 = phi i1 [ true, %131 ], [ %140, %136 ]
  %143 = zext i1 %142 to i32
  %144 = call i64 @WARN_ON(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @TX_DROP, align 4
  store i32 %147, i32* %2, align 4
  br label %180

148:                                              ; preds = %141
  %149 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %150 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %5, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %158 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %159 = call i32* @skb_put(%struct.sk_buff* %157, i32 %158)
  store i32* %159, i32** %6, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = load i64, i64* %7, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @michael_mic(i32* %160, %struct.ieee80211_hdr* %161, i32* %162, i64 %163, i32* %164)
  %166 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %167 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @IEEE80211_TX_INTFL_TKIP_MIC_FAILURE, align 4
  %170 = and i32 %168, %169
  %171 = call i64 @unlikely(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %148
  %174 = load i32*, i32** %6, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %173, %148
  %179 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %146, %116, %58, %46
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data_present(i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @michael_mic(i32*, %struct.ieee80211_hdr*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
