; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_crypt_ccmp.c_ccmp_init_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_crypt_ccmp.c_ccmp_init_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.ieee80211_hdr_4addr = type { i32*, i32*, i32*, i32, i32 }

@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@CCMP_PN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, %struct.ieee80211_hdr_4addr*, i32*, i64, i32*, i32*, i32*)* @ccmp_init_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccmp_init_blocks(%struct.crypto_tfm* %0, %struct.ieee80211_hdr_4addr* %1, i32* %2, i64 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.ieee80211_hdr_4addr*, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %8, align 8
  store %struct.ieee80211_hdr_4addr* %1, %struct.ieee80211_hdr_4addr** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* @AES_BLOCK_LEN, align 4
  %24 = mul nsw i32 2, %23
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %21, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %22, align 8
  %28 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %34 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %38 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %36, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %18, align 4
  %43 = call i64 @WLAN_FC_GET_TYPE(i32 %42)
  %44 = load i64, i64* @IEEE80211_FTYPE_DATA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %7
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @WLAN_FC_GET_STYPE(i32 %47)
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %46, %7
  %52 = phi i1 [ false, %7 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %20, align 4
  store i64 22, i64* %17, align 8
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i64, i64* %17, align 8
  %58 = add i64 %57, 6
  store i64 %58, i64* %17, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %20, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %63, i32 0, i32 0
  %65 = bitcast i32** %64 to i32*
  store i32* %65, i32** %15, align 8
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  store i32* %70, i32** %15, align 8
  br label %71

71:                                               ; preds = %68, %62
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 15
  store i32 %74, i32* %16, align 4
  %75 = load i64, i64* %17, align 8
  %76 = add i64 %75, 2
  store i64 %76, i64* %17, align 8
  br label %77

77:                                               ; preds = %71, %59
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 89, i32* %79, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %9, align 8
  %86 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(i32* %84, i32* %87, i32 %88)
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* @CCMP_PN_LEN, align 4
  %94 = call i32 @memcpy(i32* %91, i32* %92, i32 %93)
  %95 = load i64, i64* %11, align 8
  %96 = lshr i64 %95, 8
  %97 = and i64 %96, 255
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 14
  store i32 %98, i32* %100, align 4
  %101 = load i64, i64* %11, align 8
  %102 = and i64 %101, 255
  %103 = trunc i64 %102 to i32
  %104 = load i32*, i32** %12, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 15
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %9, align 8
  %107 = bitcast %struct.ieee80211_hdr_4addr* %106 to i32*
  store i32* %107, i32** %15, align 8
  %108 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 0, i32* %108, align 16
  %109 = load i64, i64* %17, align 8
  %110 = and i64 %109, 255
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 143
  %117 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %116, i32* %117, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 199
  %122 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds i32, i32* %27, i64 4
  %124 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %9, align 8
  %125 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @ETH_ALEN, align 4
  %128 = mul nsw i32 3, %127
  %129 = call i32 @memcpy(i32* %123, i32* %126, i32 %128)
  %130 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %9, align 8
  %131 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %130, i32 0, i32 3
  store i32* %131, i32** %15, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 15
  %136 = getelementptr inbounds i32, i32* %27, i64 22
  store i32 %135, i32* %136, align 8
  %137 = getelementptr inbounds i32, i32* %27, i64 23
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds i32, i32* %27, i64 24
  %139 = call i32 @memset(i32* %138, i32 0, i32 8)
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %77
  %143 = getelementptr inbounds i32, i32* %27, i64 24
  %144 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %9, align 8
  %145 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* @ETH_ALEN, align 4
  %148 = call i32 @memcpy(i32* %143, i32* %146, i32 %147)
  br label %149

149:                                              ; preds = %142, %77
  %150 = load i32, i32* %20, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 30, i32 24
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %27, i64 %158
  store i32 %153, i32* %159, align 4
  br label %160

160:                                              ; preds = %152, %149
  %161 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = call i32 @ieee80211_ccmp_aes_encrypt(%struct.crypto_tfm* %161, i32* %162, i32* %163)
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* @AES_BLOCK_LEN, align 4
  %167 = call i32 @xor_block(i32* %165, i32* %27, i32 %166)
  %168 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %169 = load i32*, i32** %13, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = call i32 @ieee80211_ccmp_aes_encrypt(%struct.crypto_tfm* %168, i32* %169, i32* %170)
  %172 = load i32*, i32** %13, align 8
  %173 = load i32, i32* @AES_BLOCK_LEN, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %27, i64 %174
  %176 = load i32, i32* @AES_BLOCK_LEN, align 4
  %177 = call i32 @xor_block(i32* %172, i32* %175, i32 %176)
  %178 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @ieee80211_ccmp_aes_encrypt(%struct.crypto_tfm* %178, i32* %179, i32* %180)
  %182 = load i32*, i32** %12, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 7
  store i32 %185, i32* %183, align 4
  %186 = load i32*, i32** %12, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 15
  store i32 0, i32* %187, align 4
  %188 = load i32*, i32** %12, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 14
  store i32 0, i32* %189, align 4
  %190 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %191 = load i32*, i32** %12, align 8
  %192 = load i32*, i32** %14, align 8
  %193 = call i32 @ieee80211_ccmp_aes_encrypt(%struct.crypto_tfm* %190, i32* %191, i32* %192)
  %194 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %194)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i64 @WLAN_FC_GET_TYPE(i32) #2

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ieee80211_ccmp_aes_encrypt(%struct.crypto_tfm*, i32*, i32*) #2

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
