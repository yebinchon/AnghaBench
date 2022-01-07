; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.ieee80211_ccmp_data = type { i32, i32*, i32*, i32*, i32*, i32, i32* }
%struct.ieee80211_hdr_4addr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@CCMP_HDR_LEN = common dso_local global i64 0, align 8
@CCMP_MIC_LEN = common dso_local global i32 0, align 4
@CCMP_PN_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i8*)* @ieee80211_ccmp_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ccmp_encrypt(%struct.sk_buff* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_ccmp_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ieee80211_hdr_4addr*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.ieee80211_ccmp_data*
  store %struct.ieee80211_ccmp_data* %23, %struct.ieee80211_ccmp_data** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %28 = add nsw i64 %26, %27
  %29 = inttoptr i64 %28 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %13, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i64 @skb_headroom(%struct.sk_buff* %30)
  %32 = load i64, i64* @CCMP_HDR_LEN, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @skb_tailroom(%struct.sk_buff* %35)
  %37 = load i32, i32* @CCMP_MIC_LEN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %34, %3
  store i32 -1, i32* %4, align 4
  br label %267

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load i64, i64* @CCMP_HDR_LEN, align 8
  %54 = call i32* @skb_push(%struct.sk_buff* %52, i64 %53)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i64, i64* @CCMP_HDR_LEN, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @memmove(i32* %55, i32* %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %11, align 8
  %65 = load i32, i32* @CCMP_PN_LEN, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %88, %46
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %70
  br label %91

88:                                               ; preds = %70
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %10, align 4
  br label %67

91:                                               ; preds = %87, %67
  %92 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %93 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 5
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  %99 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %100 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %11, align 8
  store i32 %103, i32* %104, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %11, align 8
  store i32 0, i32* %106, align 4
  %108 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %109 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 6
  %112 = or i32 %111, 32
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %11, align 8
  store i32 %112, i32* %113, align 4
  %115 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %116 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %11, align 8
  store i32 %119, i32* %120, align 4
  %122 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %123 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %11, align 8
  store i32 %126, i32* %127, align 4
  %129 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %130 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %129, i32 0, i32 6
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %11, align 8
  store i32 %133, i32* %134, align 4
  %136 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %137 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %11, align 8
  store i32 %140, i32* %141, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to %struct.ieee80211_hdr_4addr*
  store %struct.ieee80211_hdr_4addr* %146, %struct.ieee80211_hdr_4addr** %12, align 8
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %266, label %151

151:                                              ; preds = %91
  %152 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %153 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %18, align 8
  %155 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %156 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %19, align 8
  %158 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %159 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  store i32* %160, i32** %20, align 8
  %161 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %162 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %21, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = load i32, i32* @CCMP_MIC_LEN, align 4
  %166 = call i32* @skb_put(%struct.sk_buff* %164, i32 %165)
  store i32* %166, i32** %17, align 8
  %167 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %168 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %12, align 8
  %171 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %172 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load i32*, i32** %18, align 8
  %176 = load i32*, i32** %19, align 8
  %177 = load i32*, i32** %21, align 8
  %178 = call i32 @ccmp_init_blocks(i32 %169, %struct.ieee80211_hdr_4addr* %170, i32* %173, i32 %174, i32* %175, i32* %176, i32* %177)
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @AES_BLOCK_LEN, align 4
  %181 = add nsw i32 %179, %180
  %182 = sub nsw i32 %181, 1
  %183 = load i32, i32* @AES_BLOCK_LEN, align 4
  %184 = sdiv i32 %182, %183
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @AES_BLOCK_LEN, align 4
  %187 = srem i32 %185, %186
  store i32 %187, i32* %15, align 4
  store i32 1, i32* %10, align 4
  br label %188

188:                                              ; preds = %238, %151
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %14, align 4
  %191 = icmp sle i32 %189, %190
  br i1 %191, label %192, label %241

192:                                              ; preds = %188
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %14, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* %15, align 4
  br label %203

201:                                              ; preds = %196, %192
  %202 = load i32, i32* @AES_BLOCK_LEN, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  store i32 %204, i32* %16, align 4
  %205 = load i32*, i32** %19, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = load i32, i32* %16, align 4
  %208 = call i32 @xor_block(i32* %205, i32* %206, i32 %207)
  %209 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %210 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = load i32*, i32** %19, align 8
  %213 = load i32*, i32** %19, align 8
  %214 = call i32 @ieee80211_ccmp_aes_encrypt(i32 %211, i32* %212, i32* %213)
  %215 = load i32, i32* %10, align 4
  %216 = ashr i32 %215, 8
  %217 = and i32 %216, 255
  %218 = load i32*, i32** %18, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 14
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %10, align 4
  %221 = and i32 %220, 255
  %222 = load i32*, i32** %18, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 15
  store i32 %221, i32* %223, align 4
  %224 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %225 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = load i32*, i32** %18, align 8
  %228 = load i32*, i32** %20, align 8
  %229 = call i32 @ieee80211_ccmp_aes_encrypt(i32 %226, i32* %227, i32* %228)
  %230 = load i32*, i32** %11, align 8
  %231 = load i32*, i32** %20, align 8
  %232 = load i32, i32* %16, align 4
  %233 = call i32 @xor_block(i32* %230, i32* %231, i32 %232)
  %234 = load i32, i32* %16, align 4
  %235 = load i32*, i32** %11, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32* %237, i32** %11, align 8
  br label %238

238:                                              ; preds = %203
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  br label %188

241:                                              ; preds = %188
  store i32 0, i32* %10, align 4
  br label %242

242:                                              ; preds = %262, %241
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* @CCMP_MIC_LEN, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %265

246:                                              ; preds = %242
  %247 = load i32*, i32** %19, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %21, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = xor i32 %251, %256
  %258 = load i32*, i32** %17, align 8
  %259 = load i32, i32* %10, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %257, i32* %261, align 4
  br label %262

262:                                              ; preds = %246
  %263 = load i32, i32* %10, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %10, align 4
  br label %242

265:                                              ; preds = %242
  br label %266

266:                                              ; preds = %265, %91
  store i32 0, i32* %4, align 4
  br label %267

267:                                              ; preds = %266, %45
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ccmp_init_blocks(i32, %struct.ieee80211_hdr_4addr*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @xor_block(i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_ccmp_aes_encrypt(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
