; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_esp4.c_esp_input_done2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_esp4.c_esp_input_done2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.iphdr = type { i32, i64 }
%struct.xfrm_state = type { %struct.TYPE_7__, %struct.xfrm_encap_tmpl*, %struct.esp_data* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.xfrm_encap_tmpl = type { i64 }
%struct.esp_data = type { %struct.crypto_aead* }
%struct.crypto_aead = type { i32 }
%struct.udphdr = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@XFRM_MODE_TRANSPORT = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@IPPROTO_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @esp_input_done2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_input_done2(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.esp_data*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfrm_encap_tmpl*, align 8
  %16 = alloca %struct.udphdr*, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %18)
  store %struct.xfrm_state* %19, %struct.xfrm_state** %6, align 8
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 2
  %22 = load %struct.esp_data*, %struct.esp_data** %21, align 8
  store %struct.esp_data* %22, %struct.esp_data** %7, align 8
  %23 = load %struct.esp_data*, %struct.esp_data** %7, align 8
  %24 = getelementptr inbounds %struct.esp_data, %struct.esp_data* %23, i32 0, i32 0
  %25 = load %struct.crypto_aead*, %struct.crypto_aead** %24, align 8
  store %struct.crypto_aead* %25, %struct.crypto_aead** %8, align 8
  %26 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %27 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %29 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %28)
  %30 = sext i32 %29 to i64
  %31 = add i64 4, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call %struct.TYPE_9__* @ESP_SKB_CB(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kfree(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %160

47:                                               ; preds = %2
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sub nsw i32 %53, 2
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %56 = call i64 @skb_copy_bits(%struct.sk_buff* %48, i32 %54, i32* %55, i32 2)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = call i32 (...) @BUG()
  br label %60

60:                                               ; preds = %58, %47
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 2
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %11, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %160

72:                                               ; preds = %60
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %73)
  store %struct.iphdr* %74, %struct.iphdr** %5, align 8
  %75 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %80 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %79, i32 0, i32 1
  %81 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %80, align 8
  %82 = icmp ne %struct.xfrm_encap_tmpl* %81, null
  br i1 %82, label %83, label %133

83:                                               ; preds = %72
  %84 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %85 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %84, i32 0, i32 1
  %86 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %85, align 8
  store %struct.xfrm_encap_tmpl* %86, %struct.xfrm_encap_tmpl** %15, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = call i64 @skb_network_header(%struct.sk_buff* %87)
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = inttoptr i64 %91 to i8*
  %93 = bitcast i8* %92 to %struct.udphdr*
  store %struct.udphdr* %93, %struct.udphdr** %16, align 8
  %94 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %95 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %98 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %96, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %83
  %104 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %105 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %15, align 8
  %108 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %103, %83
  %112 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %113 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i64 %114, i64* %115, align 8
  %116 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %117 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %118 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @km_new_mapping(%struct.xfrm_state* %116, %struct.TYPE_8__* %17, i64 %119)
  br label %121

121:                                              ; preds = %111, %103
  %122 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %123 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @XFRM_MODE_TRANSPORT, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %121
  br label %133

133:                                              ; preds = %132, %72
  %134 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %9, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %14, align 4
  %141 = sub nsw i32 %139, %140
  %142 = sub nsw i32 %141, 2
  %143 = call i32 @pskb_trim(%struct.sk_buff* %134, i32 %142)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @__skb_pull(%struct.sk_buff* %144, i32 %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 0, %148
  %150 = call i32 @skb_set_transport_header(%struct.sk_buff* %147, i32 %149)
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @IPPROTO_NONE, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %133
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %156, %133
  br label %160

160:                                              ; preds = %159, %71, %46
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.TYPE_9__* @ESP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @km_new_mapping(%struct.xfrm_state*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
