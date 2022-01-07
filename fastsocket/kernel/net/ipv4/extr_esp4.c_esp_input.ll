; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_esp4.c_esp_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_esp4.c_esp_input.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @esp_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_esp_hdr*, align 8
  %6 = alloca %struct.esp_data*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.aead_request*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32, align 4
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
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %16, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %37 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %36)
  %38 = sext i32 %37 to i64
  %39 = add i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @pskb_may_pull(%struct.sk_buff* %35, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  br label %129

44:                                               ; preds = %2
  %45 = load i32, i32* %10, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %129

48:                                               ; preds = %44
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 @skb_cow_data(%struct.sk_buff* %49, i32 0, %struct.sk_buff** %9)
  store i32 %50, i32* %16, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %129

53:                                               ; preds = %48
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %16, align 4
  %57 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i8* @esp_alloc_tmp(%struct.crypto_aead* %57, i32 %59)
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %129

64:                                               ; preds = %53
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call %struct.TYPE_2__* @ESP_SKB_CB(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32* @esp_tmp_iv(%struct.crypto_aead* %69, i8* %70)
  store i32* %71, i32** %13, align 8
  %72 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = call %struct.aead_request* @esp_tmp_req(%struct.crypto_aead* %72, i32* %73)
  store %struct.aead_request* %74, %struct.aead_request** %8, align 8
  %75 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %76 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %77 = call %struct.scatterlist* @esp_req_sg(%struct.crypto_aead* %75, %struct.aead_request* %76)
  store %struct.scatterlist* %77, %struct.scatterlist** %15, align 8
  %78 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %79 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %78, i64 1
  store %struct.scatterlist* %79, %struct.scatterlist** %14, align 8
  %80 = load i32, i32* @CHECKSUM_NONE, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %86, %struct.ip_esp_hdr** %5, align 8
  %87 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %5, align 8
  %88 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %13, align 8
  %90 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @sg_init_table(%struct.scatterlist* %90, i32 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %95 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %96 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %95)
  %97 = sext i32 %96 to i64
  %98 = add i64 8, %97
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @skb_to_sgvec(%struct.sk_buff* %93, %struct.scatterlist* %94, i32 %99, i32 %100)
  %102 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %103 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %5, align 8
  %104 = call i32 @sg_init_one(%struct.scatterlist* %102, %struct.ip_esp_hdr* %103, i32 8)
  %105 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %106 = load i32, i32* @esp_input_done, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call i32 @aead_request_set_callback(%struct.aead_request* %105, i32 0, i32 %106, %struct.sk_buff* %107)
  %109 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %110 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %111 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @aead_request_set_crypt(%struct.aead_request* %109, %struct.scatterlist* %110, %struct.scatterlist* %111, i32 %112, i32* %113)
  %115 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %116 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %117 = call i32 @aead_request_set_assoc(%struct.aead_request* %115, %struct.scatterlist* %116, i32 8)
  %118 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %119 = call i32 @crypto_aead_decrypt(%struct.aead_request* %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @EINPROGRESS, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %64
  br label %129

125:                                              ; preds = %64
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @esp_input_done2(%struct.sk_buff* %126, i32 %127)
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %125, %124, %63, %52, %47, %43
  %130 = load i32, i32* %16, align 4
  ret i32 %130
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
