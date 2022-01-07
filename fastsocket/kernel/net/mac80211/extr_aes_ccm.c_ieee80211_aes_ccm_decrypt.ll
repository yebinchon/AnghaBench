; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_ccm.c_ieee80211_aes_ccm_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_ccm.c_ieee80211_aes_ccm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CCMP_MIC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_aes_ccm_decrypt(%struct.crypto_cipher* %0, i32* %1, i32* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_cipher*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %20, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %21, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %32 = mul nsw i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32* %34, i32** %22, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %37 = mul nsw i32 3, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32* %39, i32** %23, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %42 = call i32 @DIV_ROUND_UP(i64 %40, i32 %41)
  store i32 %42, i32* %17, align 4
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = urem i64 %43, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %16, align 4
  %48 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %22, align 8
  %51 = call i32 @aes_ccm_prepare(%struct.crypto_cipher* %48, i32* %49, i32* %50)
  %52 = load i32*, i32** %10, align 8
  store i32* %52, i32** %19, align 8
  %53 = load i32*, i32** %13, align 8
  store i32* %53, i32** %18, align 8
  store i32 1, i32* %15, align 4
  br label %54

54:                                               ; preds = %116, %6
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %119

58:                                               ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  br label %69

67:                                               ; preds = %62, %58
  %68 = load i32, i32* @AES_BLOCK_SIZE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %24, align 4
  %71 = load i32, i32* %15, align 4
  %72 = ashr i32 %71, 8
  %73 = and i32 %72, 255
  %74 = load i32*, i32** %23, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 14
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %15, align 4
  %77 = and i32 %76, 255
  %78 = load i32*, i32** %23, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 15
  store i32 %77, i32* %79, align 4
  %80 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %81 = load i32*, i32** %20, align 8
  %82 = load i32*, i32** %23, align 8
  %83 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %80, i32* %81, i32* %82)
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %108, %69
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %24, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %84
  %89 = load i32*, i32** %19, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %19, align 8
  %91 = load i32, i32* %89, align 4
  %92 = load i32*, i32** %20, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %91, %96
  %98 = load i32*, i32** %18, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %18, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %18, align 8
  %101 = load i32, i32* %99, align 4
  %102 = load i32*, i32** %22, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %106, %101
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %88
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %84

111:                                              ; preds = %84
  %112 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %113 = load i32*, i32** %22, align 8
  %114 = load i32*, i32** %22, align 8
  %115 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %112, i32* %113, i32* %114)
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %54

119:                                              ; preds = %54
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %144, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @CCMP_MIC_LEN, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %120
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %21, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = xor i32 %129, %134
  %136 = load i32*, i32** %22, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %135, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %124
  store i32 -1, i32* %7, align 4
  br label %148

143:                                              ; preds = %124
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %120

147:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %147, %142
  %149 = load i32, i32* %7, align 4
  ret i32 %149
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
