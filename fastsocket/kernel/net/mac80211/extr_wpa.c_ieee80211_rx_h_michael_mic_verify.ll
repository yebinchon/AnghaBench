; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_ieee80211_rx_h_michael_mic_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_ieee80211_rx_h_michael_mic_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { i64, %struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32, %struct.sk_buff* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.sk_buff = type { i32, i32* }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@MICHAEL_MIC_LEN = common dso_local global i32 0, align 4
@RX_CONTINUE = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@RX_DROP_UNUSABLE = common dso_local global i32 0, align 4
@NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_rx_h_michael_mic_verify(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_rx_status*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  store i32* null, i32** %5, align 8
  %14 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %18, i32 0, i32 5
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %21)
  store %struct.ieee80211_rx_status* %22, %struct.ieee80211_rx_status** %11, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %26, %struct.ieee80211_hdr** %12, align 8
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ieee80211_is_data_present(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %261

34:                                               ; preds = %1
  %35 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %39 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %34
  %44 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %236

51:                                               ; preds = %43
  %52 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %51
  %59 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %65 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %195

73:                                               ; preds = %63, %58, %51
  %74 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %74, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %261

75:                                               ; preds = %34
  %76 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = icmp ne %struct.TYPE_13__* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %80
  %90 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %89, %80, %75
  %97 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %97, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %261

98:                                               ; preds = %89
  %99 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %99, i32 0, i32 2
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %98
  %108 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %108, i32 0, i32 1
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %116, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %261

117:                                              ; preds = %107, %98
  %118 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %119 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %227

125:                                              ; preds = %117
  %126 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %127 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ieee80211_hdrlen(i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %135 = add i32 %133, %134
  %136 = icmp ult i32 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %138, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %261

139:                                              ; preds = %125
  %140 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %141 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %140, i32 0, i32 5
  %142 = load %struct.sk_buff*, %struct.sk_buff** %141, align 8
  %143 = call i64 @skb_linearize(%struct.sk_buff* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %146, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %261

147:                                              ; preds = %139
  %148 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = bitcast i32* %150 to i8*
  %152 = bitcast i8* %151 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %152, %struct.ieee80211_hdr** %12, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32* %158, i32** %4, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sub i32 %161, %162
  %164 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %165 = sub i32 %163, %164
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %6, align 8
  %167 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %168 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %167, i32 0, i32 1
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %5, align 8
  %175 = load i32*, i32** %5, align 8
  %176 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %177 = load i32*, i32** %4, align 8
  %178 = load i64, i64* %6, align 8
  %179 = call i32 @michael_mic(i32* %175, %struct.ieee80211_hdr* %176, i32* %177, i64 %178, i32* %17)
  %180 = load i32*, i32** %4, align 8
  %181 = load i64, i64* %6, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %184 = call i64 @memcmp(i32* %17, i32* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %147
  br label %227

187:                                              ; preds = %147
  %188 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %193 = sub nsw i32 %191, %192
  %194 = call i32 @skb_trim(%struct.sk_buff* %188, i32 %193)
  br label %195

195:                                              ; preds = %187, %72
  %196 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %197 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %200 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %199, i32 0, i32 1
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %207 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  store i32 %198, i32* %210, align 4
  %211 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %212 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %215 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %214, i32 0, i32 1
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %222 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  store i32 %213, i32* %225, align 4
  %226 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %226, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %261

227:                                              ; preds = %186, %124
  %228 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %229 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %228, i32 0, i32 1
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %227, %50
  %237 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %238 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %237, i32 0, i32 2
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %238, align 8
  %240 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %241 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %240, i32 0, i32 1
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %241, align 8
  %243 = icmp ne %struct.TYPE_13__* %242, null
  br i1 %243, label %244, label %251

244:                                              ; preds = %236
  %245 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %246 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %245, i32 0, i32 1
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  br label %252

251:                                              ; preds = %236
  br label %252

252:                                              ; preds = %251, %244
  %253 = phi i32 [ %250, %244 ], [ -1, %251 ]
  %254 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %255 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = bitcast i32* %256 to i8*
  %258 = load i32, i32* @GFP_ATOMIC, align 4
  %259 = call i32 @mac80211_ev_michael_mic_failure(%struct.TYPE_14__* %239, i32 %253, i8* %257, i32* null, i32 %258)
  %260 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %260, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %261

261:                                              ; preds = %252, %195, %145, %137, %115, %96, %73, %32
  %262 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %262)
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #2

declare dso_local i32 @ieee80211_is_data_present(i32) #2

declare dso_local i32 @ieee80211_hdrlen(i32) #2

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #2

declare dso_local i32 @michael_mic(i32*, %struct.ieee80211_hdr*, i32*, i64, i32*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #2

declare dso_local i32 @mac80211_ev_michael_mic_failure(%struct.TYPE_14__*, i32, i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
