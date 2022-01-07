; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_esp4.c_esp_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_esp4.c_esp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_5__, i32, %struct.xfrm_encap_tmpl*, %struct.esp_data* }
%struct.TYPE_5__ = type { i32 }
%struct.xfrm_encap_tmpl = type { i32, i8*, i8* }
%struct.esp_data = type { i32, %struct.crypto_aead* }
%struct.crypto_aead = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ip_esp_hdr = type { i64, i32, i32 }
%struct.aead_givcrypt_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.udphdr = type { i64, i32, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@IPPROTO_ESP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@esp_output_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @esp_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_esp_hdr*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.aead_givcrypt_request*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.esp_data*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.xfrm_encap_tmpl*, align 8
  %22 = alloca %struct.udphdr*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %17, align 4
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 3
  %34 = load %struct.esp_data*, %struct.esp_data** %33, align 8
  store %struct.esp_data* %34, %struct.esp_data** %11, align 8
  %35 = load %struct.esp_data*, %struct.esp_data** %11, align 8
  %36 = getelementptr inbounds %struct.esp_data, %struct.esp_data* %35, i32 0, i32 1
  %37 = load %struct.crypto_aead*, %struct.crypto_aead** %36, align 8
  store %struct.crypto_aead* %37, %struct.crypto_aead** %7, align 8
  %38 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %39 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %38)
  store i32 %39, i32* %18, align 4
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %41 = call i32 @crypto_aead_blocksize(%struct.crypto_aead* %40)
  %42 = call i32 @ALIGN(i32 %41, i32 4)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 2
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @ALIGN(i32 %44, i32 %45)
  store i32 %46, i32* %17, align 4
  %47 = load %struct.esp_data*, %struct.esp_data** %11, align 8
  %48 = getelementptr inbounds %struct.esp_data, %struct.esp_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %2
  %52 = load i32, i32* %17, align 4
  %53 = load %struct.esp_data*, %struct.esp_data** %11, align 8
  %54 = getelementptr inbounds %struct.esp_data, %struct.esp_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ALIGN(i32 %52, i32 %55)
  store i32 %56, i32* %17, align 4
  br label %57

57:                                               ; preds = %51, %2
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %59, %62
  %64 = load i32, i32* %18, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @skb_cow_data(%struct.sk_buff* %58, i32 %65, %struct.sk_buff** %12)
  store i32 %66, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %306

69:                                               ; preds = %57
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %19, align 4
  %71 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %72 = load i32, i32* %19, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i8* @esp_alloc_tmp(%struct.crypto_aead* %71, i32 %73)
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %306

78:                                               ; preds = %69
  %79 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i32* @esp_tmp_iv(%struct.crypto_aead* %79, i8* %80)
  store i32* %81, i32** %14, align 8
  %82 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = call %struct.aead_givcrypt_request* @esp_tmp_givreq(%struct.crypto_aead* %82, i32* %83)
  store %struct.aead_givcrypt_request* %84, %struct.aead_givcrypt_request** %8, align 8
  %85 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %86 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %87 = call %struct.scatterlist* @esp_givreq_sg(%struct.crypto_aead* %85, %struct.aead_givcrypt_request* %86)
  store %struct.scatterlist* %87, %struct.scatterlist** %10, align 8
  %88 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %89 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %88, i64 1
  store %struct.scatterlist* %89, %struct.scatterlist** %9, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %91 = call i32* @skb_tail_pointer(%struct.sk_buff* %90)
  store i32* %91, i32** %15, align 8
  br label %92

92:                                               ; preds = %78
  store i32 0, i32* %20, align 4
  br label %93

93:                                               ; preds = %109, %92
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %95, %98
  %100 = sub nsw i32 %99, 2
  %101 = icmp slt i32 %94, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %93
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %20, align 4
  br label %93

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %114, %117
  %119 = sub nsw i32 %118, 2
  %120 = load i32*, i32** %15, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %121, %124
  %126 = sub nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %120, i64 %127
  store i32 %119, i32* %128, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call i32* @skb_mac_header(%struct.sk_buff* %129)
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %15, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %133, %136
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %132, i64 %139
  store i32 %131, i32* %140, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %143, %146
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @pskb_put(%struct.sk_buff* %141, %struct.sk_buff* %142, i32 %149)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = call i32 @skb_network_offset(%struct.sk_buff* %152)
  %154 = sub nsw i32 0, %153
  %155 = call i32 @skb_push(%struct.sk_buff* %151, i32 %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = call %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff* %156)
  store %struct.ip_esp_hdr* %157, %struct.ip_esp_hdr** %6, align 8
  %158 = load i32, i32* @IPPROTO_ESP, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %160 = call i32* @skb_mac_header(%struct.sk_buff* %159)
  store i32 %158, i32* %160, align 4
  %161 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %162 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %161, i32 0, i32 2
  %163 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %162, align 8
  %164 = icmp ne %struct.xfrm_encap_tmpl* %163, null
  br i1 %164, label %165, label %225

165:                                              ; preds = %113
  %166 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %167 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %166, i32 0, i32 2
  %168 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %167, align 8
  store %struct.xfrm_encap_tmpl* %168, %struct.xfrm_encap_tmpl** %21, align 8
  %169 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %170 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %169, i32 0, i32 1
  %171 = call i32 @spin_lock_bh(i32* %170)
  %172 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %21, align 8
  %173 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %24, align 8
  %175 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %21, align 8
  %176 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** %25, align 8
  %178 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %21, align 8
  %179 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %26, align 4
  %181 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %182 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %181, i32 0, i32 1
  %183 = call i32 @spin_unlock_bh(i32* %182)
  %184 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %185 = bitcast %struct.ip_esp_hdr* %184 to %struct.udphdr*
  store %struct.udphdr* %185, %struct.udphdr** %22, align 8
  %186 = load i8*, i8** %24, align 8
  %187 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %188 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %187, i32 0, i32 3
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** %25, align 8
  %190 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %191 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = call i64 @skb_transport_offset(%struct.sk_buff* %196)
  %198 = sub nsw i64 %195, %197
  %199 = call i32 @htons(i64 %198)
  %200 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %201 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 8
  %202 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %203 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %202, i32 0, i32 0
  store i64 0, i64* %203, align 8
  %204 = load i32, i32* %26, align 4
  switch i32 %204, label %205 [
    i32 129, label %206
    i32 128, label %210
  ]

205:                                              ; preds = %165
  br label %206

206:                                              ; preds = %165, %205
  %207 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %208 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %207, i64 1
  %209 = bitcast %struct.udphdr* %208 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %209, %struct.ip_esp_hdr** %6, align 8
  br label %221

210:                                              ; preds = %165
  %211 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %212 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %211, i64 1
  %213 = bitcast %struct.udphdr* %212 to i32*
  store i32* %213, i32** %23, align 8
  %214 = load i32*, i32** %23, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  store i32 0, i32* %215, align 4
  %216 = load i32*, i32** %23, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  store i32 0, i32* %217, align 4
  %218 = load i32*, i32** %23, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  %220 = bitcast i32* %219 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %220, %struct.ip_esp_hdr** %6, align 8
  br label %221

221:                                              ; preds = %210, %206
  %222 = load i32, i32* @IPPROTO_UDP, align 4
  %223 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %224 = call i32* @skb_mac_header(%struct.sk_buff* %223)
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %221, %113
  %226 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %227 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %231 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  %232 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %233 = call %struct.TYPE_7__* @XFRM_SKB_CB(%struct.sk_buff* %232)
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @htonl(i32 %236)
  %238 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %239 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  %240 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %241 = load i32, i32* %19, align 4
  %242 = call i32 @sg_init_table(%struct.scatterlist* %240, i32 %241)
  %243 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %244 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %245 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %246 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %249 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %248)
  %250 = add nsw i64 %247, %249
  %251 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %252 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = sub nsw i64 %250, %253
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %255, %256
  %258 = call i32 @skb_to_sgvec(%struct.sk_buff* %243, %struct.scatterlist* %244, i64 %254, i32 %257)
  %259 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %260 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %261 = call i32 @sg_init_one(%struct.scatterlist* %259, %struct.ip_esp_hdr* %260, i32 16)
  %262 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %263 = load i32, i32* @esp_output_done, align 4
  %264 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %265 = call i32 @aead_givcrypt_set_callback(%struct.aead_givcrypt_request* %262, i32 0, i32 %263, %struct.sk_buff* %264)
  %266 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %267 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %268 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %269 = load i32, i32* %17, align 4
  %270 = load i32*, i32** %14, align 8
  %271 = call i32 @aead_givcrypt_set_crypt(%struct.aead_givcrypt_request* %266, %struct.scatterlist* %267, %struct.scatterlist* %268, i32 %269, i32* %270)
  %272 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %273 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %274 = call i32 @aead_givcrypt_set_assoc(%struct.aead_givcrypt_request* %272, %struct.scatterlist* %273, i32 16)
  %275 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %276 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %277 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %280 = call %struct.TYPE_7__* @XFRM_SKB_CB(%struct.sk_buff* %279)
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @aead_givcrypt_set_giv(%struct.aead_givcrypt_request* %275, i64 %278, i32 %283)
  %285 = load i8*, i8** %13, align 8
  %286 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %287 = call %struct.TYPE_8__* @ESP_SKB_CB(%struct.sk_buff* %286)
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 0
  store i8* %285, i8** %288, align 8
  %289 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %290 = call i32 @crypto_aead_givencrypt(%struct.aead_givcrypt_request* %289)
  store i32 %290, i32* %5, align 4
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* @EINPROGRESS, align 4
  %293 = sub nsw i32 0, %292
  %294 = icmp eq i32 %291, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %225
  br label %306

296:                                              ; preds = %225
  %297 = load i32, i32* %5, align 4
  %298 = load i32, i32* @EBUSY, align 4
  %299 = sub nsw i32 0, %298
  %300 = icmp eq i32 %297, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %302, i32* %5, align 4
  br label %303

303:                                              ; preds = %301, %296
  %304 = load i8*, i8** %13, align 8
  %305 = call i32 @kfree(i8* %304)
  br label %306

306:                                              ; preds = %303, %295, %77, %68
  %307 = load i32, i32* %5, align 4
  ret i32 %307
}

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @crypto_aead_blocksize(%struct.crypto_aead*) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i8* @esp_alloc_tmp(%struct.crypto_aead*, i32) #1

declare dso_local i32* @esp_tmp_iv(%struct.crypto_aead*, i8*) #1

declare dso_local %struct.aead_givcrypt_request* @esp_tmp_givreq(%struct.crypto_aead*, i32*) #1

declare dso_local %struct.scatterlist* @esp_givreq_sg(%struct.crypto_aead*, %struct.aead_givcrypt_request*) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @pskb_put(%struct.sk_buff*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.TYPE_7__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i64, i32) #1

declare dso_local i64 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.ip_esp_hdr*, i32) #1

declare dso_local i32 @aead_givcrypt_set_callback(%struct.aead_givcrypt_request*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @aead_givcrypt_set_crypt(%struct.aead_givcrypt_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @aead_givcrypt_set_assoc(%struct.aead_givcrypt_request*, %struct.scatterlist*, i32) #1

declare dso_local i32 @aead_givcrypt_set_giv(%struct.aead_givcrypt_request*, i64, i32) #1

declare dso_local %struct.TYPE_8__* @ESP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @crypto_aead_givencrypt(%struct.aead_givcrypt_request*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
