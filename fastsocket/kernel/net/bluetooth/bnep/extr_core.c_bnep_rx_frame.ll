; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_rx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_session = type { %struct.TYPE_5__, %struct.net_device* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }

@BNEP_TYPE_MASK = common dso_local global i64 0, align 8
@BNEP_RX_TYPES = common dso_local global i64 0, align 8
@BNEP_CONTROL = common dso_local global i64 0, align 8
@__bnep_rx_hlen = common dso_local global i32* null, align 8
@BNEP_EXT_HEADER = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnep_session*, %struct.sk_buff*)* @bnep_rx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnep_rx_frame(%struct.bnep_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnep_session*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  store %struct.bnep_session* %0, %struct.bnep_session** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %10 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @skb_pull(%struct.sk_buff* %26, i32 1)
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @BNEP_TYPE_MASK, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* @BNEP_RX_TYPES, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %234

34:                                               ; preds = %2
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @BNEP_TYPE_MASK, align 8
  %37 = and i64 %35, %36
  %38 = load i64, i64* @BNEP_CONTROL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bnep_rx_control(%struct.bnep_session* %41, i32 %44, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  store i32 0, i32* %3, align 4
  br label %242

51:                                               ; preds = %34
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @skb_reset_mac_header(%struct.sk_buff* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32*, i32** @__bnep_rx_hlen, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @BNEP_TYPE_MASK, align 8
  %58 = and i64 %56, %57
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @skb_pull(%struct.sk_buff* %54, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %51
  br label %234

64:                                               ; preds = %51
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i32*
  %71 = call i8* @get_unaligned(i32* %70)
  %72 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %73 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @BNEP_EXT_HEADER, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %64
  %80 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i64 @bnep_rx_extension(%struct.bnep_session* %80, %struct.sk_buff* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %234

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %64
  %87 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %88 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @ntohs(i8* %90)
  %92 = icmp eq i32 %91, 33024
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @skb_pull(%struct.sk_buff* %94, i32 4)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %234

98:                                               ; preds = %93
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i32*
  %105 = call i8* @get_unaligned(i32* %104)
  %106 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %107 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  br label %109

109:                                              ; preds = %98, %86
  %110 = load i32, i32* @ETH_HLEN, align 4
  %111 = add nsw i32 2, %110
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.sk_buff* @alloc_skb(i32 %115, i32 %116)
  store %struct.sk_buff* %117, %struct.sk_buff** %7, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %130, label %120

120:                                              ; preds = %109
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = call i32 @kfree_skb(%struct.sk_buff* %126)
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %242

130:                                              ; preds = %109
  %131 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %132 = call i32 @skb_reserve(%struct.sk_buff* %131, i32 2)
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @BNEP_TYPE_MASK, align 8
  %135 = and i64 %133, %134
  switch i64 %135, label %206 [
    i64 131, label %136
    i64 129, label %144
    i64 130, label %169
    i64 128, label %188
  ]

136:                                              ; preds = %130
  %137 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %138 = load i32, i32* @ETH_HLEN, align 4
  %139 = call i64 @__skb_put(%struct.sk_buff* %137, i32 %138)
  %140 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %141 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %140, i32 0, i32 0
  %142 = load i32, i32* @ETH_HLEN, align 4
  %143 = call i32 @memcpy(i64 %139, %struct.TYPE_5__* %141, i32 %142)
  br label %206

144:                                              ; preds = %130
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = load i32, i32* @ETH_ALEN, align 4
  %147 = call i64 @__skb_put(%struct.sk_buff* %145, i32 %146)
  %148 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %149 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = load i32, i32* @ETH_ALEN, align 4
  %153 = call i32 @memcpy(i64 %147, %struct.TYPE_5__* %151, i32 %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = load i32, i32* @ETH_ALEN, align 4
  %156 = call i64 @__skb_put(%struct.sk_buff* %154, i32 %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = call %struct.TYPE_5__* @skb_mac_header(%struct.sk_buff* %157)
  %159 = load i32, i32* @ETH_ALEN, align 4
  %160 = call i32 @memcpy(i64 %156, %struct.TYPE_5__* %158, i32 %159)
  %161 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %162 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %166 = call i64 @__skb_put(%struct.sk_buff* %165, i32 2)
  %167 = inttoptr i64 %166 to i32*
  %168 = call i32 @put_unaligned(i8* %164, i32* %167)
  br label %206

169:                                              ; preds = %130
  %170 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %171 = load i32, i32* @ETH_ALEN, align 4
  %172 = call i64 @__skb_put(%struct.sk_buff* %170, i32 %171)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = call %struct.TYPE_5__* @skb_mac_header(%struct.sk_buff* %173)
  %175 = load i32, i32* @ETH_ALEN, align 4
  %176 = call i32 @memcpy(i64 %172, %struct.TYPE_5__* %174, i32 %175)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %178 = load i32, i32* @ETH_ALEN, align 4
  %179 = add nsw i32 %178, 2
  %180 = call i64 @__skb_put(%struct.sk_buff* %177, i32 %179)
  %181 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %182 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = load i32, i32* @ETH_ALEN, align 4
  %186 = add nsw i32 %185, 2
  %187 = call i32 @memcpy(i64 %180, %struct.TYPE_5__* %184, i32 %186)
  br label %206

188:                                              ; preds = %130
  %189 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %190 = load i32, i32* @ETH_ALEN, align 4
  %191 = mul nsw i32 %190, 2
  %192 = call i64 @__skb_put(%struct.sk_buff* %189, i32 %191)
  %193 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %194 = call %struct.TYPE_5__* @skb_mac_header(%struct.sk_buff* %193)
  %195 = load i32, i32* @ETH_ALEN, align 4
  %196 = mul nsw i32 %195, 2
  %197 = call i32 @memcpy(i64 %192, %struct.TYPE_5__* %194, i32 %196)
  %198 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %199 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %203 = call i64 @__skb_put(%struct.sk_buff* %202, i32 2)
  %204 = inttoptr i64 %203 to i32*
  %205 = call i32 @put_unaligned(i8* %201, i32* %204)
  br label %206

206:                                              ; preds = %130, %188, %169, %144, %136
  %207 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @__skb_put(%struct.sk_buff* %208, i32 %211)
  %213 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %207, i64 %212, i32 %215)
  %217 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %218 = call i32 @kfree_skb(%struct.sk_buff* %217)
  %219 = load %struct.net_device*, %struct.net_device** %6, align 8
  %220 = getelementptr inbounds %struct.net_device, %struct.net_device* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  %224 = load i32, i32* @CHECKSUM_NONE, align 4
  %225 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 4
  %227 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %228 = load %struct.net_device*, %struct.net_device** %6, align 8
  %229 = call i32 @eth_type_trans(%struct.sk_buff* %227, %struct.net_device* %228)
  %230 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  %232 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %233 = call i32 @netif_rx_ni(%struct.sk_buff* %232)
  store i32 0, i32* %3, align 4
  br label %242

234:                                              ; preds = %97, %84, %63, %33
  %235 = load %struct.net_device*, %struct.net_device** %6, align 8
  %236 = getelementptr inbounds %struct.net_device, %struct.net_device* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  %240 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %241 = call i32 @kfree_skb(%struct.sk_buff* %240)
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %234, %206, %120, %40
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @bnep_rx_control(%struct.bnep_session*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @get_unaligned(i32*) #1

declare dso_local i64 @bnep_rx_extension(%struct.bnep_session*, %struct.sk_buff*) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i64, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_5__* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @put_unaligned(i8*, i32*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
