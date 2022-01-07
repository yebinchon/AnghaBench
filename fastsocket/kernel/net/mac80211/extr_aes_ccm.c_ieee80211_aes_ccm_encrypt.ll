; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_ccm.c_ieee80211_aes_ccm_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_ccm.c_ieee80211_aes_ccm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CCMP_MIC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_aes_ccm_encrypt(%struct.crypto_cipher* %0, i32* %1, i32* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.crypto_cipher*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %24 = load i32*, i32** %8, align 8
  store i32* %24, i32** %19, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %20, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %21, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %36 = mul nsw i32 3, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32* %38, i32** %22, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %41 = call i32 @DIV_ROUND_UP(i64 %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = urem i64 %42, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %19, align 8
  %50 = call i32 @aes_ccm_prepare(%struct.crypto_cipher* %47, i32* %48, i32* %49)
  %51 = load i32*, i32** %9, align 8
  store i32* %51, i32** %17, align 8
  %52 = load i32*, i32** %11, align 8
  store i32* %52, i32** %18, align 8
  store i32 1, i32* %14, align 4
  br label %53

53:                                               ; preds = %127, %6
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %130

57:                                               ; preds = %53
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %15, align 4
  br label %68

66:                                               ; preds = %61, %57
  %67 = load i32, i32* @AES_BLOCK_SIZE, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %23, align 4
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %86, %68
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %23, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %19, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = xor i32 %84, %79
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %70

89:                                               ; preds = %70
  %90 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %91 = load i32*, i32** %19, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %90, i32* %91, i32* %92)
  %94 = load i32, i32* %14, align 4
  %95 = ashr i32 %94, 8
  %96 = and i32 %95, 255
  %97 = load i32*, i32** %22, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 14
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %99, 255
  %101 = load i32*, i32** %22, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 15
  store i32 %100, i32* %102, align 4
  %103 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %104 = load i32*, i32** %21, align 8
  %105 = load i32*, i32** %22, align 8
  %106 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %103, i32* %104, i32* %105)
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %123, %89
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %23, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load i32*, i32** %17, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %17, align 8
  %114 = load i32, i32* %112, align 4
  %115 = load i32*, i32** %21, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %114, %119
  %121 = load i32*, i32** %18, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %18, align 8
  store i32 %120, i32* %121, align 4
  br label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %107

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %53

130:                                              ; preds = %53
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %151, %130
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @CCMP_MIC_LEN, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %131
  %136 = load i32*, i32** %19, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %20, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %140, %145
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %146, i32* %150, align 4
  br label %151

151:                                              ; preds = %135
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %131

154:                                              ; preds = %131
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @aes_ccm_prepare(%struct.crypto_cipher*, i32*, i32*) #1

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
