; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_ieee80211_crypto_ccmp_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_ieee80211_crypto_ccmp_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { i32, %struct.sk_buff*, i32, %struct.ieee80211_key* }
%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@CCMP_PN_LEN = common dso_local global i32 0, align 4
@RX_CONTINUE = common dso_local global i32 0, align 4
@CCMP_HDR_LEN = common dso_local global i32 0, align 4
@CCMP_MIC_LEN = common dso_local global i32 0, align 4
@RX_DROP_UNUSABLE = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_ccmp_decrypt(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %16 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %16, i32 0, i32 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %4, align 8
  %23 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %23, i32 0, i32 3
  %25 = load %struct.ieee80211_key*, %struct.ieee80211_key** %24, align 8
  store %struct.ieee80211_key* %25, %struct.ieee80211_key** %6, align 8
  %26 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %26, i32 0, i32 1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %29)
  store %struct.ieee80211_rx_status* %30, %struct.ieee80211_rx_status** %8, align 8
  %31 = load i32, i32* @CCMP_PN_LEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %9, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %10, align 8
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ieee80211_hdrlen(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ieee80211_is_data(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %1
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %46 = call i32 @ieee80211_is_robust_mgmt_frame(%struct.ieee80211_hdr* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %217

50:                                               ; preds = %44, %1
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* @CCMP_HDR_LEN, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* @CCMP_MIC_LEN, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %61 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %50
  %68 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %217

69:                                               ; preds = %64
  %70 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %78 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %77, i32 0, i32 1
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @CCMP_HDR_LEN, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @pskb_may_pull(%struct.sk_buff* %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %217

87:                                               ; preds = %76
  br label %97

88:                                               ; preds = %69
  %89 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %89, i32 0, i32 1
  %91 = load %struct.sk_buff*, %struct.sk_buff** %90, align 8
  %92 = call i64 @skb_linearize(%struct.sk_buff* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %95, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %217

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %87
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @ccmp_hdr2pn(i32* %34, i32 %102)
  %104 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %105 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %12, align 4
  %107 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %108 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CCMP_PN_LEN, align 4
  %117 = call i64 @memcmp(i32* %34, i32 %115, i32 %116)
  %118 = icmp sle i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %97
  %120 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %121 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %126, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %217

127:                                              ; preds = %97
  %128 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %129 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %180, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %136 = mul nsw i32 6, %135
  %137 = zext i32 %136 to i64
  %138 = call i8* @llvm.stacksave()
  store i8* %138, i8** %14, align 8
  %139 = alloca i32, i64 %137, align 16
  store i64 %137, i64* %15, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %141 = call i32 @ccmp_special_blocks(%struct.sk_buff* %140, i32* %34, i32* %139, i32 1)
  %142 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %143 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* @CCMP_HDR_LEN, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %157, %160
  %162 = load i32, i32* @CCMP_MIC_LEN, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* @CCMP_HDR_LEN, align 4
  %170 = add nsw i32 %168, %169
  %171 = call i64 @ieee80211_aes_ccm_decrypt(i32 %146, i32* %139, i32 %153, i32 %154, i32 %163, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %134
  %174 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %174, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %176

175:                                              ; preds = %134
  store i32 0, i32* %13, align 4
  br label %176

176:                                              ; preds = %175, %173
  %177 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %13, align 4
  switch i32 %178, label %217 [
    i32 0, label %179
  ]

179:                                              ; preds = %176
  br label %180

180:                                              ; preds = %179, %127
  %181 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %182 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @CCMP_PN_LEN, align 4
  %191 = call i32 @memcpy(i32 %189, i32* %34, i32 %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @CCMP_MIC_LEN, align 4
  %197 = sub nsw i32 %195, %196
  %198 = call i64 @pskb_trim(%struct.sk_buff* %192, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %180
  %201 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %201, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %217

202:                                              ; preds = %180
  %203 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @CCMP_HDR_LEN, align 4
  %207 = add nsw i32 %205, %206
  %208 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @memmove(i32 %207, i32 %210, i32 %211)
  %213 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %214 = load i32, i32* @CCMP_HDR_LEN, align 4
  %215 = call i32 @skb_pull(%struct.sk_buff* %213, i32 %214)
  %216 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %216, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %217

217:                                              ; preds = %202, %200, %176, %119, %94, %85, %67, %48
  %218 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_robust_mgmt_frame(%struct.ieee80211_hdr*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @ccmp_hdr2pn(i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @ccmp_special_blocks(%struct.sk_buff*, i32*, i32*, i32) #1

declare dso_local i64 @ieee80211_aes_ccm_decrypt(i32, i32*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
