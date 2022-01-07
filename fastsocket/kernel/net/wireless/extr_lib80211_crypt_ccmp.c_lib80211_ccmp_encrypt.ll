; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_ccmp.c_lib80211_ccmp_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_ccmp.c_lib80211_ccmp_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.lib80211_ccmp_data = type { i32*, i32*, i32*, i32*, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@CCMP_MIC_LEN = common dso_local global i32 0, align 4
@CCMP_HDR_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i8*)* @lib80211_ccmp_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lib80211_ccmp_encrypt(%struct.sk_buff* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lib80211_ccmp_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ieee80211_hdr*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.lib80211_ccmp_data*
  store %struct.lib80211_ccmp_data* %22, %struct.lib80211_ccmp_data** %8, align 8
  %23 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %24 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %17, align 8
  %26 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %27 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %18, align 8
  %29 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %30 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %19, align 8
  %32 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %33 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %20, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @skb_tailroom(%struct.sk_buff* %35)
  %37 = load i32, i32* @CCMP_MIC_LEN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %3
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %3
  store i32 -1, i32* %4, align 4
  br label %172

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @lib80211_ccmp_hdr(%struct.sk_buff* %52, i32 %53, i32* null, i32 0, i8* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %172

59:                                               ; preds = %46
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* @CCMP_HDR_LEN, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32* %68, i32** %14, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = bitcast i32* %71 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %72, %struct.ieee80211_hdr** %16, align 8
  %73 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %74 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %77 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %78 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32*, i32** %17, align 8
  %82 = load i32*, i32** %18, align 8
  %83 = load i32*, i32** %20, align 8
  %84 = call i32 @ccmp_init_blocks(i32 %75, %struct.ieee80211_hdr* %76, i32 %79, i32 %80, i32* %81, i32* %82, i32* %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @AES_BLOCK_LEN, align 4
  %87 = call i32 @DIV_ROUND_UP(i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @AES_BLOCK_LEN, align 4
  %90 = srem i32 %88, %89
  store i32 %90, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %91

91:                                               ; preds = %141, %59
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %144

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  br label %106

104:                                              ; preds = %99, %95
  %105 = load i32, i32* @AES_BLOCK_LEN, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %13, align 4
  %108 = load i32*, i32** %18, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @xor_block(i32* %108, i32* %109, i32 %110)
  %112 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %113 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %18, align 8
  %116 = load i32*, i32** %18, align 8
  %117 = call i32 @lib80211_ccmp_aes_encrypt(i32 %114, i32* %115, i32* %116)
  %118 = load i32, i32* %10, align 4
  %119 = ashr i32 %118, 8
  %120 = and i32 %119, 255
  %121 = load i32*, i32** %17, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 14
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, 255
  %125 = load i32*, i32** %17, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 15
  store i32 %124, i32* %126, align 4
  %127 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %128 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = load i32*, i32** %19, align 8
  %132 = call i32 @lib80211_ccmp_aes_encrypt(i32 %129, i32* %130, i32* %131)
  %133 = load i32*, i32** %14, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @xor_block(i32* %133, i32* %134, i32 %135)
  %137 = load i32, i32* %13, align 4
  %138 = load i32*, i32** %14, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %14, align 8
  br label %141

141:                                              ; preds = %106
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %91

144:                                              ; preds = %91
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = load i32, i32* @CCMP_MIC_LEN, align 4
  %147 = call i32* @skb_put(%struct.sk_buff* %145, i32 %146)
  store i32* %147, i32** %15, align 8
  store i32 0, i32* %10, align 4
  br label %148

148:                                              ; preds = %168, %144
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @CCMP_MIC_LEN, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %171

152:                                              ; preds = %148
  %153 = load i32*, i32** %18, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %20, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = xor i32 %157, %162
  %164 = load i32*, i32** %15, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %152
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %148

171:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %171, %58, %45
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @lib80211_ccmp_hdr(%struct.sk_buff*, i32, i32*, i32, i8*) #1

declare dso_local i32 @ccmp_init_blocks(i32, %struct.ieee80211_hdr*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @xor_block(i32*, i32*, i32) #1

declare dso_local i32 @lib80211_ccmp_aes_encrypt(i32, i32*, i32*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
