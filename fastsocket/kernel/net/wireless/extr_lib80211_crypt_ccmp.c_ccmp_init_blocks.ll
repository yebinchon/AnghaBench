; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_ccmp.c_ccmp_init_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_ccmp.c_ccmp_init_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }
%struct.ieee80211_hdr = type { i32*, i32*, i32*, i32, i32 }

@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CCMP_PN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_cipher*, %struct.ieee80211_hdr*, i32*, i64, i32*, i32*, i32*)* @ccmp_init_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccmp_init_blocks(%struct.crypto_cipher* %0, %struct.ieee80211_hdr* %1, i32* %2, i64 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.crypto_cipher*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %8, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @AES_BLOCK_LEN, align 4
  %23 = mul nsw i32 2, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %20, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %21, align 8
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ieee80211_has_a4(i32 %29)
  store i32 %30, i32* %18, align 4
  %31 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ieee80211_is_data_qos(i32 %33)
  store i32 %34, i32* %19, align 4
  store i64 22, i64* %17, align 8
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %7
  %38 = load i64, i64* %17, align 8
  %39 = add i64 %38, 6
  store i64 %39, i64* %17, align 8
  br label %40

40:                                               ; preds = %37, %7
  %41 = load i32, i32* %19, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %44, i32 0, i32 0
  %46 = bitcast i32** %45 to i32*
  store i32* %46, i32** %15, align 8
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 6
  store i32* %51, i32** %15, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  store i32 %55, i32* %16, align 4
  %56 = load i64, i64* %17, align 8
  %57 = add i64 %56, 2
  store i64 %57, i64* %17, align 8
  br label %58

58:                                               ; preds = %52, %40
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 89, i32* %60, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = call i32 @memcpy(i32* %65, i32* %68, i32 %69)
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* @CCMP_PN_LEN, align 4
  %75 = call i32 @memcpy(i32* %72, i32* %73, i32 %74)
  %76 = load i64, i64* %11, align 8
  %77 = lshr i64 %76, 8
  %78 = and i64 %77, 255
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 14
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %11, align 8
  %83 = and i64 %82, 255
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 15
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %88 = bitcast %struct.ieee80211_hdr* %87 to i32*
  store i32* %88, i32** %15, align 8
  %89 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 0, i32* %89, align 16
  %90 = load i64, i64* %17, align 8
  %91 = and i64 %90, 255
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 143
  %98 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %97, i32* %98, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 199
  %103 = getelementptr inbounds i32, i32* %26, i64 3
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds i32, i32* %26, i64 4
  %105 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %106 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @ETH_ALEN, align 4
  %109 = mul nsw i32 3, %108
  %110 = call i32 @memcpy(i32* %104, i32* %107, i32 %109)
  %111 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %112 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %111, i32 0, i32 3
  store i32* %112, i32** %15, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 15
  %117 = getelementptr inbounds i32, i32* %26, i64 22
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds i32, i32* %26, i64 23
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds i32, i32* %26, i64 24
  %120 = call i32 @memset(i32* %119, i32 0, i32 8)
  %121 = load i32, i32* %18, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %58
  %124 = getelementptr inbounds i32, i32* %26, i64 24
  %125 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %126 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* @ETH_ALEN, align 4
  %129 = call i32 @memcpy(i32* %124, i32* %127, i32 %128)
  br label %130

130:                                              ; preds = %123, %58
  %131 = load i32, i32* %19, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %18, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 30, i32 24
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %26, i64 %139
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %133, %130
  %142 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = load i32*, i32** %13, align 8
  %145 = call i32 @lib80211_ccmp_aes_encrypt(%struct.crypto_cipher* %142, i32* %143, i32* %144)
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* @AES_BLOCK_LEN, align 4
  %148 = call i32 @xor_block(i32* %146, i32* %26, i32 %147)
  %149 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = load i32*, i32** %13, align 8
  %152 = call i32 @lib80211_ccmp_aes_encrypt(%struct.crypto_cipher* %149, i32* %150, i32* %151)
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* @AES_BLOCK_LEN, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %26, i64 %155
  %157 = load i32, i32* @AES_BLOCK_LEN, align 4
  %158 = call i32 @xor_block(i32* %153, i32* %156, i32 %157)
  %159 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %160 = load i32*, i32** %13, align 8
  %161 = load i32*, i32** %13, align 8
  %162 = call i32 @lib80211_ccmp_aes_encrypt(%struct.crypto_cipher* %159, i32* %160, i32* %161)
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 7
  store i32 %166, i32* %164, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 15
  store i32 0, i32* %168, align 4
  %169 = load i32*, i32** %12, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 14
  store i32 0, i32* %170, align 4
  %171 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = load i32*, i32** %14, align 8
  %174 = call i32 @lib80211_ccmp_aes_encrypt(%struct.crypto_cipher* %171, i32* %172, i32* %173)
  %175 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %175)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ieee80211_has_a4(i32) #2

declare dso_local i32 @ieee80211_is_data_qos(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @lib80211_ccmp_aes_encrypt(%struct.crypto_cipher*, i32*, i32*) #2

declare dso_local i32 @xor_block(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
