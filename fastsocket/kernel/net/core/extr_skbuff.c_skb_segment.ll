; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32, i64, i32, %struct.sk_buff*, i32, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.sk_buff*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @skb_segment(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @skb_mac_header(%struct.sk_buff* %38)
  %40 = sub i32 %37, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @skb_tnl_header_len(%struct.sk_buff* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @NETIF_F_SG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %17, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @skb_network_protocol(%struct.sk_buff* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %2
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.sk_buff* @ERR_PTR(i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %3, align 8
  br label %497

69:                                               ; preds = %2
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @can_checksum_protocol(i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %16, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @__skb_push(%struct.sk_buff* %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @skb_headroom(%struct.sk_buff* %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @skb_headlen(%struct.sk_buff* %82)
  store i32 %83, i32* %21, align 4
  br label %84

84:                                               ; preds = %474, %69
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub i32 %87, %88
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %93, %84
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i32 @skb_headlen(%struct.sk_buff* %96)
  %98 = load i32, i32* %11, align 4
  %99 = sub i32 %97, %98
  store i32 %99, i32* %24, align 4
  %100 = load i32, i32* %24, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 0, i32* %24, align 4
  br label %103

103:                                              ; preds = %102, %95
  %104 = load i32, i32* %24, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ugt i32 %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107, %103
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %24, align 4
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i32, i32* %24, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %177, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %177

119:                                              ; preds = %115
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @BUG_ON(i32 %125)
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %21, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %21, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = load i32, i32* @GFP_ATOMIC, align 4
  %132 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %130, i32 %131)
  store %struct.sk_buff* %132, %struct.sk_buff** %22, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 6
  %135 = load %struct.sk_buff*, %struct.sk_buff** %134, align 8
  store %struct.sk_buff* %135, %struct.sk_buff** %8, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %137 = icmp ne %struct.sk_buff* %136, null
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %119
  br label %484

143:                                              ; preds = %119
  %144 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %145 = call i32 @skb_end_pointer(%struct.sk_buff* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %145, %148
  store i32 %149, i32* %24, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %13, align 4
  %153 = add i32 %151, %152
  %154 = call i64 @skb_cow_head(%struct.sk_buff* %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %143
  %157 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %158 = call i32 @kfree_skb(%struct.sk_buff* %157)
  br label %484

159:                                              ; preds = %143
  %160 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %161 = call i32 @skb_end_pointer(%struct.sk_buff* %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %161, %164
  %166 = load i32, i32* %24, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %173 = call i32 @skb_release_head_state(%struct.sk_buff* %172)
  %174 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @__skb_push(%struct.sk_buff* %174, i32 %175)
  br label %199

177:                                              ; preds = %115, %112
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %10, align 4
  %180 = add i32 %178, %179
  %181 = load i32, i32* %13, align 4
  %182 = add i32 %180, %181
  %183 = load i32, i32* @GFP_ATOMIC, align 4
  %184 = call %struct.sk_buff* @alloc_skb(i32 %182, i32 %183)
  store %struct.sk_buff* %184, %struct.sk_buff** %22, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %186 = icmp ne %struct.sk_buff* %185, null
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %177
  br label %484

192:                                              ; preds = %177
  %193 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @skb_reserve(%struct.sk_buff* %193, i32 %194)
  %196 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @__skb_put(%struct.sk_buff* %196, i32 %197)
  br label %199

199:                                              ; preds = %192, %159
  %200 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %201 = icmp ne %struct.sk_buff* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 6
  store %struct.sk_buff* %203, %struct.sk_buff** %205, align 8
  br label %208

206:                                              ; preds = %199
  %207 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %207, %struct.sk_buff** %6, align 8
  br label %208

208:                                              ; preds = %206, %202
  %209 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %209, %struct.sk_buff** %7, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %212 = call i32 @__copy_skb_header(%struct.sk_buff* %210, %struct.sk_buff* %211)
  %213 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %217 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %216, i32 0, i32 10
  store i32 %215, i32* %217, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %208
  %224 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %225 = call i32 @skb_headroom(%struct.sk_buff* %224)
  %226 = load i32, i32* %13, align 4
  %227 = sub i32 %225, %226
  %228 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 4
  %231 = add i32 %230, %227
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %223, %208
  %233 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %234 = call i32 @skb_reset_mac_header(%struct.sk_buff* %233)
  %235 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %236 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 10
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @skb_set_network_header(%struct.sk_buff* %235, i32 %238)
  %240 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 8
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %244 = call i64 @skb_network_header_len(%struct.sk_buff* %243)
  %245 = add nsw i64 %242, %244
  %246 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %247 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %246, i32 0, i32 9
  store i64 %245, i64* %247, align 8
  %248 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sub i32 0, %249
  %251 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %252 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sub i32 %253, %254
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* %12, align 4
  %258 = add i32 %256, %257
  %259 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %248, i32 %250, i32 %255, i32 %258)
  %260 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %261 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %262 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %261)
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 2
  %264 = load %struct.sk_buff*, %struct.sk_buff** %263, align 8
  %265 = icmp ne %struct.sk_buff* %260, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %232
  br label %455

267:                                              ; preds = %232
  %268 = load i32, i32* %17, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %284, label %270

270:                                              ; preds = %267
  %271 = load i8*, i8** @CHECKSUM_NONE, align 8
  %272 = ptrtoint i8* %271 to i64
  %273 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %274 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %273, i32 0, i32 4
  store i64 %272, i64* %274, align 8
  %275 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %276 = load i32, i32* %11, align 4
  %277 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %278 = load i32, i32* %14, align 4
  %279 = call i32 @skb_put(%struct.sk_buff* %277, i32 %278)
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @skb_copy_and_csum_bits(%struct.sk_buff* %275, i32 %276, i32 %279, i32 %280, i32 0)
  %282 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %283 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %282, i32 0, i32 7
  store i32 %281, i32* %283, align 8
  br label %474

284:                                              ; preds = %267
  %285 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %286 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %285)
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 3
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  store %struct.TYPE_4__* %288, %struct.TYPE_4__** %23, align 8
  %289 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %290 = load i32, i32* %11, align 4
  %291 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %292 = load i32, i32* %24, align 4
  %293 = call i32 @skb_put(%struct.sk_buff* %291, i32 %292)
  %294 = load i32, i32* %24, align 4
  %295 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %289, i32 %290, i32 %293, i32 %294)
  %296 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %297 = call %struct.TYPE_5__* @skb_tx(%struct.sk_buff* %296)
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %301 = call %struct.TYPE_5__* @skb_tx(%struct.sk_buff* %300)
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 0
  store i32 %299, i32* %302, align 4
  br label %303

303:                                              ; preds = %382, %284
  %304 = load i32, i32* %21, align 4
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* %14, align 4
  %307 = add i32 %305, %306
  %308 = icmp ult i32 %304, %307
  br i1 %308, label %309, label %313

309:                                              ; preds = %303
  %310 = load i32, i32* %20, align 4
  %311 = load i32, i32* %18, align 4
  %312 = icmp slt i32 %310, %311
  br label %313

313:                                              ; preds = %309, %303
  %314 = phi i1 [ false, %303 ], [ %312, %309 ]
  br i1 %314, label %315, label %385

315:                                              ; preds = %313
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %317 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %318 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %317)
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 3
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = load i32, i32* %20, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i64 %322
  %324 = bitcast %struct.TYPE_4__* %316 to i8*
  %325 = bitcast %struct.TYPE_4__* %323 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %324, i8* align 4 %325, i64 12, i1 false)
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @get_page(i32 %328)
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %25, align 4
  %333 = load i32, i32* %21, align 4
  %334 = load i32, i32* %11, align 4
  %335 = icmp ult i32 %333, %334
  br i1 %335, label %336, label %351

336:                                              ; preds = %315
  %337 = load i32, i32* %11, align 4
  %338 = load i32, i32* %21, align 4
  %339 = sub i32 %337, %338
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = add i32 %342, %339
  store i32 %343, i32* %341, align 4
  %344 = load i32, i32* %11, align 4
  %345 = load i32, i32* %21, align 4
  %346 = sub i32 %344, %345
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = sub i32 %349, %346
  store i32 %350, i32* %348, align 4
  br label %351

351:                                              ; preds = %336, %315
  %352 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %353 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %352)
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %354, align 4
  %357 = load i32, i32* %21, align 4
  %358 = load i32, i32* %25, align 4
  %359 = add nsw i32 %357, %358
  %360 = load i32, i32* %11, align 4
  %361 = load i32, i32* %14, align 4
  %362 = add i32 %360, %361
  %363 = icmp ule i32 %359, %362
  br i1 %363, label %364, label %370

364:                                              ; preds = %351
  %365 = load i32, i32* %20, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %20, align 4
  %367 = load i32, i32* %25, align 4
  %368 = load i32, i32* %21, align 4
  %369 = add nsw i32 %368, %367
  store i32 %369, i32* %21, align 4
  br label %382

370:                                              ; preds = %351
  %371 = load i32, i32* %21, align 4
  %372 = load i32, i32* %25, align 4
  %373 = add nsw i32 %371, %372
  %374 = load i32, i32* %11, align 4
  %375 = load i32, i32* %14, align 4
  %376 = add i32 %374, %375
  %377 = sub i32 %373, %376
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = sub i32 %380, %377
  store i32 %381, i32* %379, align 4
  br label %435

382:                                              ; preds = %364
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 1
  store %struct.TYPE_4__* %384, %struct.TYPE_4__** %23, align 8
  br label %303

385:                                              ; preds = %313
  %386 = load i32, i32* %21, align 4
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* %14, align 4
  %389 = add i32 %387, %388
  %390 = icmp ult i32 %386, %389
  br i1 %390, label %391, label %434

391:                                              ; preds = %385
  %392 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %392, %struct.sk_buff** %26, align 8
  %393 = load i32, i32* %21, align 4
  %394 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %395 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = add i32 %393, %396
  %398 = load i32, i32* %11, align 4
  %399 = load i32, i32* %14, align 4
  %400 = add i32 %398, %399
  %401 = icmp ne i32 %397, %400
  %402 = zext i1 %401 to i32
  %403 = call i32 @BUG_ON(i32 %402)
  %404 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %405 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %21, align 4
  %408 = add i32 %407, %406
  store i32 %408, i32* %21, align 4
  %409 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %410 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %409, i32 0, i32 6
  %411 = load %struct.sk_buff*, %struct.sk_buff** %410, align 8
  store %struct.sk_buff* %411, %struct.sk_buff** %8, align 8
  %412 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %413 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %412, i32 0, i32 6
  %414 = load %struct.sk_buff*, %struct.sk_buff** %413, align 8
  %415 = icmp ne %struct.sk_buff* %414, null
  br i1 %415, label %416, label %424

416:                                              ; preds = %391
  %417 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %418 = load i32, i32* @GFP_ATOMIC, align 4
  %419 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %417, i32 %418)
  store %struct.sk_buff* %419, %struct.sk_buff** %26, align 8
  %420 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %421 = icmp ne %struct.sk_buff* %420, null
  br i1 %421, label %423, label %422

422:                                              ; preds = %416
  br label %484

423:                                              ; preds = %416
  br label %427

424:                                              ; preds = %391
  %425 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %426 = call i32 @skb_get(%struct.sk_buff* %425)
  br label %427

427:                                              ; preds = %424, %423
  %428 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %429 = call i32 @SKB_FRAG_ASSERT(%struct.sk_buff* %428)
  %430 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %431 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %432 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %431)
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 2
  store %struct.sk_buff* %430, %struct.sk_buff** %433, align 8
  br label %434

434:                                              ; preds = %427, %385
  br label %435

435:                                              ; preds = %434, %370
  %436 = load i32, i32* %14, align 4
  %437 = load i32, i32* %24, align 4
  %438 = sub i32 %436, %437
  %439 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %440 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %439, i32 0, i32 5
  store i32 %438, i32* %440, align 8
  %441 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %442 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %441, i32 0, i32 5
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %445 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = add i32 %446, %443
  store i32 %447, i32* %445, align 4
  %448 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %449 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %448, i32 0, i32 5
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %452 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = add i32 %453, %450
  store i32 %454, i32* %452, align 4
  br label %455

455:                                              ; preds = %435, %266
  %456 = load i32, i32* %16, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %473, label %458

458:                                              ; preds = %455
  %459 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %460 = load i32, i32* %10, align 4
  %461 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %462 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* %10, align 4
  %465 = sub i32 %463, %464
  %466 = call i32 @skb_checksum(%struct.sk_buff* %459, i32 %460, i32 %465, i32 0)
  %467 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %468 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %467, i32 0, i32 7
  store i32 %466, i32* %468, align 8
  %469 = load i8*, i8** @CHECKSUM_NONE, align 8
  %470 = ptrtoint i8* %469 to i64
  %471 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %472 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %471, i32 0, i32 4
  store i64 %470, i64* %472, align 8
  br label %473

473:                                              ; preds = %458, %455
  br label %474

474:                                              ; preds = %473, %270
  %475 = load i32, i32* %14, align 4
  %476 = load i32, i32* %11, align 4
  %477 = add i32 %476, %475
  store i32 %477, i32* %11, align 4
  %478 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %479 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = icmp ult i32 %477, %480
  br i1 %481, label %84, label %482

482:                                              ; preds = %474
  %483 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %483, %struct.sk_buff** %3, align 8
  br label %497

484:                                              ; preds = %422, %191, %156, %142
  br label %485

485:                                              ; preds = %488, %484
  %486 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %486, %struct.sk_buff** %4, align 8
  %487 = icmp ne %struct.sk_buff* %486, null
  br i1 %487, label %488, label %494

488:                                              ; preds = %485
  %489 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %490 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %489, i32 0, i32 6
  %491 = load %struct.sk_buff*, %struct.sk_buff** %490, align 8
  store %struct.sk_buff* %491, %struct.sk_buff** %6, align 8
  %492 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %493 = call i32 @kfree_skb(%struct.sk_buff* %492)
  br label %485

494:                                              ; preds = %485
  %495 = load i32, i32* %19, align 4
  %496 = call %struct.sk_buff* @ERR_PTR(i32 %495)
  store %struct.sk_buff* %496, %struct.sk_buff** %3, align 8
  br label %497

497:                                              ; preds = %494, %482, %65
  %498 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %498
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_tnl_header_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_protocol(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @can_checksum_protocol(i32, i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_end_pointer(%struct.sk_buff*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_release_head_state(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @__copy_skb_header(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_copy_and_csum_bits(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_5__* @skb_tx(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @SKB_FRAG_ASSERT(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
