; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_ccmp_data = type { i32*, i32*, i32*, i32*, i32, i32, i32* }
%struct.ieee80211_hdr_4addr = type { i32 }

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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.ieee80211_ccmp_data*
  store %struct.ieee80211_ccmp_data* %22, %struct.ieee80211_ccmp_data** %8, align 8
  %23 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %17, align 8
  %26 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %18, align 8
  %29 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %19, align 8
  %32 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %20, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i64 @skb_headroom(%struct.sk_buff* %35)
  %37 = load i64, i64* @CCMP_HDR_LEN, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %50, label %39

39:                                               ; preds = %3
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_tailroom(%struct.sk_buff* %40)
  %42 = load i32, i32* @CCMP_MIC_LEN, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %39, %3
  store i32 -1, i32* %4, align 4
  br label %254

51:                                               ; preds = %44
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i64, i64* @CCMP_HDR_LEN, align 8
  %59 = call i32* @skb_push(%struct.sk_buff* %57, i64 %58)
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* @CCMP_HDR_LEN, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @memmove(i32* %60, i32* %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %11, align 8
  %70 = load i32, i32* @CCMP_PN_LEN, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %93, %51
  %73 = load i32, i32* %10, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %77 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %85 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  br label %96

93:                                               ; preds = %75
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %10, align 4
  br label %72

96:                                               ; preds = %92, %72
  %97 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  %104 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %105 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %11, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %11, align 8
  store i32 0, i32* %111, align 4
  %113 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %115, 6
  %117 = or i32 %116, 32
  %118 = load i32*, i32** %11, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %11, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %121 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  %127 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %128 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %127, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %11, align 8
  store i32 %131, i32* %132, align 4
  %134 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %135 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %134, i32 0, i32 6
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %11, align 8
  store i32 %138, i32* %139, align 4
  %141 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %142 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %141, i32 0, i32 6
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %11, align 8
  store i32 %145, i32* %146, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to %struct.ieee80211_hdr_4addr*
  store %struct.ieee80211_hdr_4addr* %151, %struct.ieee80211_hdr_4addr** %12, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = load i32, i32* @CCMP_MIC_LEN, align 4
  %154 = call i32* @skb_put(%struct.sk_buff* %152, i32 %153)
  store i32* %154, i32** %16, align 8
  %155 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %156 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %12, align 8
  %159 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %160 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %159, i32 0, i32 6
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32*, i32** %17, align 8
  %164 = load i32*, i32** %18, align 8
  %165 = load i32*, i32** %20, align 8
  %166 = call i32 @ccmp_init_blocks(i32 %157, %struct.ieee80211_hdr_4addr* %158, i32* %161, i32 %162, i32* %163, i32* %164, i32* %165)
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @AES_BLOCK_LEN, align 4
  %169 = add nsw i32 %167, %168
  %170 = sub nsw i32 %169, 1
  %171 = load i32, i32* @AES_BLOCK_LEN, align 4
  %172 = sdiv i32 %170, %171
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @AES_BLOCK_LEN, align 4
  %175 = srem i32 %173, %174
  store i32 %175, i32* %14, align 4
  store i32 1, i32* %10, align 4
  br label %176

176:                                              ; preds = %226, %96
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %229

180:                                              ; preds = %176
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32, i32* %14, align 4
  br label %191

189:                                              ; preds = %184, %180
  %190 = load i32, i32* @AES_BLOCK_LEN, align 4
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32 [ %188, %187 ], [ %190, %189 ]
  store i32 %192, i32* %15, align 4
  %193 = load i32*, i32** %18, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @xor_block(i32* %193, i32* %194, i32 %195)
  %197 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %198 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %18, align 8
  %201 = load i32*, i32** %18, align 8
  %202 = call i32 @ieee80211_ccmp_aes_encrypt(i32 %199, i32* %200, i32* %201)
  %203 = load i32, i32* %10, align 4
  %204 = ashr i32 %203, 8
  %205 = and i32 %204, 255
  %206 = load i32*, i32** %17, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 14
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %10, align 4
  %209 = and i32 %208, 255
  %210 = load i32*, i32** %17, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 15
  store i32 %209, i32* %211, align 4
  %212 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %213 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %17, align 8
  %216 = load i32*, i32** %19, align 8
  %217 = call i32 @ieee80211_ccmp_aes_encrypt(i32 %214, i32* %215, i32* %216)
  %218 = load i32*, i32** %11, align 8
  %219 = load i32*, i32** %19, align 8
  %220 = load i32, i32* %15, align 4
  %221 = call i32 @xor_block(i32* %218, i32* %219, i32 %220)
  %222 = load i32, i32* %15, align 4
  %223 = load i32*, i32** %11, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %11, align 8
  br label %226

226:                                              ; preds = %191
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %176

229:                                              ; preds = %176
  store i32 0, i32* %10, align 4
  br label %230

230:                                              ; preds = %250, %229
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @CCMP_MIC_LEN, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %253

234:                                              ; preds = %230
  %235 = load i32*, i32** %18, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %20, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = xor i32 %239, %244
  %246 = load i32*, i32** %16, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %245, i32* %249, align 4
  br label %250

250:                                              ; preds = %234
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  br label %230

253:                                              ; preds = %230
  store i32 0, i32* %4, align 4
  br label %254

254:                                              ; preds = %253, %50
  %255 = load i32, i32* %4, align 4
  ret i32 %255
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
