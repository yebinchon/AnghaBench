; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_esp6.c_esp6_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_esp6.c_esp6_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.esp_data* }
%struct.esp_data = type { %struct.crypto_aead* }
%struct.crypto_aead = type { i32 }
%struct.sk_buff = type { i32, i64, i32 }
%struct.ip_esp_hdr = type { i32* }
%struct.aead_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.TYPE_2__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@esp_input_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @esp6_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp6_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_esp_hdr*, align 8
  %6 = alloca %struct.esp_data*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.aead_request*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 0
  %19 = load %struct.esp_data*, %struct.esp_data** %18, align 8
  store %struct.esp_data* %19, %struct.esp_data** %6, align 8
  %20 = load %struct.esp_data*, %struct.esp_data** %6, align 8
  %21 = getelementptr inbounds %struct.esp_data, %struct.esp_data* %20, i32 0, i32 0
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %21, align 8
  store %struct.crypto_aead* %22, %struct.crypto_aead** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 8
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %29 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %28)
  %30 = sext i32 %29 to i64
  %31 = sub i64 %27, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %35 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %34)
  %36 = sext i32 %35 to i64
  %37 = add i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @pskb_may_pull(%struct.sk_buff* %33, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  br label %132

44:                                               ; preds = %2
  %45 = load i32, i32* %10, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %132

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @skb_cow_data(%struct.sk_buff* %51, i32 0, %struct.sk_buff** %9)
  store i32 %52, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %132

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  %60 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i8* @esp_alloc_tmp(%struct.crypto_aead* %60, i32 %62)
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br label %132

67:                                               ; preds = %57
  %68 = load i8*, i8** %13, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call %struct.TYPE_2__* @ESP_SKB_CB(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i32* @esp_tmp_iv(%struct.crypto_aead* %72, i8* %73)
  store i32* %74, i32** %14, align 8
  %75 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = call %struct.aead_request* @esp_tmp_req(%struct.crypto_aead* %75, i32* %76)
  store %struct.aead_request* %77, %struct.aead_request** %8, align 8
  %78 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %79 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %80 = call %struct.scatterlist* @esp_req_sg(%struct.crypto_aead* %78, %struct.aead_request* %79)
  store %struct.scatterlist* %80, %struct.scatterlist** %16, align 8
  %81 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %82 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %81, i64 1
  store %struct.scatterlist* %82, %struct.scatterlist** %15, align 8
  %83 = load i32, i32* @CHECKSUM_NONE, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %89, %struct.ip_esp_hdr** %5, align 8
  %90 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %5, align 8
  %91 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %14, align 8
  %93 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @sg_init_table(%struct.scatterlist* %93, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %98 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %99 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %98)
  %100 = sext i32 %99 to i64
  %101 = add i64 8, %100
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @skb_to_sgvec(%struct.sk_buff* %96, %struct.scatterlist* %97, i32 %102, i32 %103)
  %105 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %106 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %5, align 8
  %107 = call i32 @sg_init_one(%struct.scatterlist* %105, %struct.ip_esp_hdr* %106, i32 8)
  %108 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %109 = load i32, i32* @esp_input_done, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = call i32 @aead_request_set_callback(%struct.aead_request* %108, i32 0, i32 %109, %struct.sk_buff* %110)
  %112 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %113 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %114 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32*, i32** %14, align 8
  %117 = call i32 @aead_request_set_crypt(%struct.aead_request* %112, %struct.scatterlist* %113, %struct.scatterlist* %114, i32 %115, i32* %116)
  %118 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %119 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %120 = call i32 @aead_request_set_assoc(%struct.aead_request* %118, %struct.scatterlist* %119, i32 8)
  %121 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %122 = call i32 @crypto_aead_decrypt(%struct.aead_request* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @EINPROGRESS, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %67
  br label %132

128:                                              ; preds = %67
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @esp_input_done2(%struct.sk_buff* %129, i32 %130)
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %128, %127, %66, %54, %47, %41
  %133 = load i32, i32* %12, align 4
  ret i32 %133
}

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i8* @esp_alloc_tmp(%struct.crypto_aead*, i32) #1

declare dso_local %struct.TYPE_2__* @ESP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @esp_tmp_iv(%struct.crypto_aead*, i8*) #1

declare dso_local %struct.aead_request* @esp_tmp_req(%struct.crypto_aead*, i32*) #1

declare dso_local %struct.scatterlist* @esp_req_sg(%struct.crypto_aead*, %struct.aead_request*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.ip_esp_hdr*, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @aead_request_set_assoc(%struct.aead_request*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

declare dso_local i32 @esp_input_done2(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
