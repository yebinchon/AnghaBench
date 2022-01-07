; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_ccmp_encrypt_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_ccmp_encrypt_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.ieee80211_key* }
%struct.ieee80211_key = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@CCMP_MIC_LEN = common dso_local global i32 0, align 4
@CCMP_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*, %struct.sk_buff*)* @ccmp_encrypt_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccmp_encrypt_skb(%struct.ieee80211_tx_data* %0, %struct.sk_buff* %1) #0 {
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
  %13 = alloca [6 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %21, %struct.ieee80211_hdr** %6, align 8
  %22 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_key*, %struct.ieee80211_key** %23, align 8
  store %struct.ieee80211_key* %24, %struct.ieee80211_key** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %25)
  store %struct.ieee80211_tx_info* %26, %struct.ieee80211_tx_info** %8, align 8
  %27 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %28 = mul nsw i32 6, %27
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %15, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %32 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %2
  %38 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %37
  %48 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %185

58:                                               ; preds = %47, %37, %2
  %59 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ieee80211_hdrlen(i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %76

74:                                               ; preds = %58
  %75 = load i32, i32* @CCMP_MIC_LEN, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @skb_tailroom(%struct.sk_buff* %77)
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i64 @skb_headroom(%struct.sk_buff* %82)
  %84 = load i64, i64* @CCMP_HDR_LEN, align 8
  %85 = icmp slt i64 %83, %84
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ true, %76 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %185

92:                                               ; preds = %86
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = load i64, i64* @CCMP_HDR_LEN, align 8
  %95 = call i32* @skb_push(%struct.sk_buff* %93, i64 %94)
  store i32* %95, i32** %12, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = load i64, i64* @CCMP_HDR_LEN, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @memmove(i32* %96, i32* %99, i32 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = call i64 @skb_network_offset(%struct.sk_buff* %103)
  %105 = load i64, i64* @CCMP_HDR_LEN, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @skb_set_network_header(%struct.sk_buff* %102, i64 %106)
  %108 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %109 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = icmp ne %struct.TYPE_7__* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %92
  %114 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %115 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %185

124:                                              ; preds = %113, %92
  %125 = load i32*, i32** %12, align 8
  %126 = bitcast i32* %125 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %126, %struct.ieee80211_hdr** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32*, i32** %12, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %12, align 8
  %131 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %132 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = call i32 @atomic64_inc_return(i32* %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %14, align 4
  %139 = ashr i32 %138, 8
  %140 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  store i32 %139, i32* %140, align 16
  %141 = load i32, i32* %14, align 4
  %142 = ashr i32 %141, 16
  %143 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %14, align 4
  %145 = ashr i32 %144, 24
  %146 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  store i32 %145, i32* %146, align 8
  %147 = load i32, i32* %14, align 4
  %148 = ashr i32 %147, 32
  %149 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %14, align 4
  %151 = ashr i32 %150, 40
  %152 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  store i32 %151, i32* %152, align 16
  %153 = load i32*, i32** %12, align 8
  %154 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %155 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %156 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ccmp_pn2hdr(i32* %153, i32* %154, i32 %158)
  %160 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %161 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = icmp ne %struct.TYPE_7__* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %185

166:                                              ; preds = %124
  %167 = load i64, i64* @CCMP_HDR_LEN, align 8
  %168 = load i32*, i32** %12, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 %167
  store i32* %169, i32** %12, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %172 = call i32 @ccmp_special_blocks(%struct.sk_buff* %170, i32* %171, i32* %31, i32 0)
  %173 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %174 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %12, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32*, i32** %12, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %182 = load i32, i32* @CCMP_MIC_LEN, align 4
  %183 = call i32 @skb_put(%struct.sk_buff* %181, i32 %182)
  %184 = call i32 @ieee80211_aes_ccm_encrypt(i32 %177, i32* %31, i32* %178, i32 %179, i32* %180, i32 %183)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %185

185:                                              ; preds = %166, %165, %123, %91, %57
  %186 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @ccmp_pn2hdr(i32*, i32*, i32) #1

declare dso_local i32 @ccmp_special_blocks(%struct.sk_buff*, i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_aes_ccm_encrypt(i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
