; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_esp6.c_esp6_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_esp6.c_esp6_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_5__, %struct.esp_data* }
%struct.TYPE_5__ = type { i32 }
%struct.esp_data = type { i32, %struct.crypto_aead* }
%struct.crypto_aead = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ip_esp_hdr = type { i64, i32, i32 }
%struct.aead_givcrypt_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@IPPROTO_ESP = common dso_local global i32 0, align 4
@esp_output_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @esp6_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp6_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_esp_hdr*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.aead_givcrypt_request*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.esp_data*, align 8
  %20 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 1
  %23 = load %struct.esp_data*, %struct.esp_data** %22, align 8
  store %struct.esp_data* %23, %struct.esp_data** %19, align 8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load %struct.esp_data*, %struct.esp_data** %19, align 8
  %30 = getelementptr inbounds %struct.esp_data, %struct.esp_data* %29, i32 0, i32 1
  %31 = load %struct.crypto_aead*, %struct.crypto_aead** %30, align 8
  store %struct.crypto_aead* %31, %struct.crypto_aead** %7, align 8
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %33 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %35 = call i32 @crypto_aead_blocksize(%struct.crypto_aead* %34)
  %36 = call i32 @ALIGN(i32 %35, i32 4)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 2
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @ALIGN(i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.esp_data*, %struct.esp_data** %19, align 8
  %42 = getelementptr inbounds %struct.esp_data, %struct.esp_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.esp_data*, %struct.esp_data** %19, align 8
  %48 = getelementptr inbounds %struct.esp_data, %struct.esp_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ALIGN(i32 %46, i32 %49)
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %45, %2
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i32 @skb_cow_data(%struct.sk_buff* %52, i32 %59, %struct.sk_buff** %11)
  store i32 %60, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %235

63:                                               ; preds = %51
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %16, align 4
  %65 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i8* @esp_alloc_tmp(%struct.crypto_aead* %65, i32 %67)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %235

72:                                               ; preds = %63
  %73 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32* @esp_tmp_iv(%struct.crypto_aead* %73, i8* %74)
  store i32* %75, i32** %17, align 8
  %76 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = call %struct.aead_givcrypt_request* @esp_tmp_givreq(%struct.crypto_aead* %76, i32* %77)
  store %struct.aead_givcrypt_request* %78, %struct.aead_givcrypt_request** %8, align 8
  %79 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %80 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %81 = call %struct.scatterlist* @esp_givreq_sg(%struct.crypto_aead* %79, %struct.aead_givcrypt_request* %80)
  store %struct.scatterlist* %81, %struct.scatterlist** %10, align 8
  %82 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %83 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %82, i64 1
  store %struct.scatterlist* %83, %struct.scatterlist** %9, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %85 = call i32* @skb_tail_pointer(%struct.sk_buff* %84)
  store i32* %85, i32** %18, align 8
  br label %86

86:                                               ; preds = %72
  store i32 0, i32* %20, align 4
  br label %87

87:                                               ; preds = %103, %86
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %89, %92
  %94 = sub nsw i32 %93, 2
  %95 = icmp slt i32 %88, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %87
  %97 = load i32, i32* %20, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i32*, i32** %18, align 8
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %20, align 4
  br label %87

106:                                              ; preds = %87
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  %113 = sub nsw i32 %112, 2
  %114 = load i32*, i32** %18, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %115, %118
  %120 = sub nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %114, i64 %121
  store i32 %113, i32* %122, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = call i32* @skb_mac_header(%struct.sk_buff* %123)
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %18, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %127, %130
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %126, i64 %133
  store i32 %125, i32* %134, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %137, %140
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i32 @pskb_put(%struct.sk_buff* %135, %struct.sk_buff* %136, i32 %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32 @skb_network_offset(%struct.sk_buff* %146)
  %148 = sub nsw i32 0, %147
  %149 = call i32 @skb_push(%struct.sk_buff* %145, i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = call %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff* %150)
  store %struct.ip_esp_hdr* %151, %struct.ip_esp_hdr** %6, align 8
  %152 = load i32, i32* @IPPROTO_ESP, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = call i32* @skb_mac_header(%struct.sk_buff* %153)
  store i32 %152, i32* %154, align 4
  %155 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %156 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %160 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = call %struct.TYPE_7__* @XFRM_SKB_CB(%struct.sk_buff* %161)
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @htonl(i32 %165)
  %167 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %168 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 8
  %169 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @sg_init_table(%struct.scatterlist* %169, i32 %170)
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %173 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %174 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %175 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %178 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %177)
  %179 = add nsw i64 %176, %178
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %179, %182
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %184, %185
  %187 = call i32 @skb_to_sgvec(%struct.sk_buff* %172, %struct.scatterlist* %173, i64 %183, i32 %186)
  %188 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %189 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %190 = call i32 @sg_init_one(%struct.scatterlist* %188, %struct.ip_esp_hdr* %189, i32 16)
  %191 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %192 = load i32, i32* @esp_output_done, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = call i32 @aead_givcrypt_set_callback(%struct.aead_givcrypt_request* %191, i32 0, i32 %192, %struct.sk_buff* %193)
  %195 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %196 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %197 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %198 = load i32, i32* %14, align 4
  %199 = load i32*, i32** %17, align 8
  %200 = call i32 @aead_givcrypt_set_crypt(%struct.aead_givcrypt_request* %195, %struct.scatterlist* %196, %struct.scatterlist* %197, i32 %198, i32* %199)
  %201 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %202 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %203 = call i32 @aead_givcrypt_set_assoc(%struct.aead_givcrypt_request* %201, %struct.scatterlist* %202, i32 16)
  %204 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %205 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %206 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %209 = call %struct.TYPE_7__* @XFRM_SKB_CB(%struct.sk_buff* %208)
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @aead_givcrypt_set_giv(%struct.aead_givcrypt_request* %204, i64 %207, i32 %212)
  %214 = load i8*, i8** %12, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %216 = call %struct.TYPE_8__* @ESP_SKB_CB(%struct.sk_buff* %215)
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  store i8* %214, i8** %217, align 8
  %218 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %8, align 8
  %219 = call i32 @crypto_aead_givencrypt(%struct.aead_givcrypt_request* %218)
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @EINPROGRESS, align 4
  %222 = sub nsw i32 0, %221
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %107
  br label %235

225:                                              ; preds = %107
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @EBUSY, align 4
  %228 = sub nsw i32 0, %227
  %229 = icmp eq i32 %226, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %230, %225
  %233 = load i8*, i8** %12, align 8
  %234 = call i32 @kfree(i8* %233)
  br label %235

235:                                              ; preds = %232, %224, %71, %62
  %236 = load i32, i32* %5, align 4
  ret i32 %236
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
