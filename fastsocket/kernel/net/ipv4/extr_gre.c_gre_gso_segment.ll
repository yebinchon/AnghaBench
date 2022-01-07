; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_gso_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_gso_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, i64, %struct.sk_buff*, i64 }
%struct.gre_base_hdr = type { i32, i64 }
%struct.vlan_ethhdr = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GRE_HEADER_SECTION = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i32 0, align 4
@SKB_GSO_DODGY = common dso_local global i32 0, align 4
@SKB_GSO_TCP_ECN = common dso_local global i32 0, align 4
@SKB_GSO_GRE = common dso_local global i32 0, align 4
@GRE_KEY = common dso_local global i32 0, align 4
@GRE_SEQ = common dso_local global i32 0, align 4
@GRE_CSUM = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@NETIF_F_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32)* @gre_gso_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @gre_gso_segment(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gre_base_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vlan_ethhdr*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.sk_buff* @ERR_PTR(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @GRE_HEADER_SECTION, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %31 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SKB_GSO_UDP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SKB_GSO_DODGY, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SKB_GSO_TCP_ECN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SKB_GSO_GRE, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %29, %41
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  br label %264

46:                                               ; preds = %2
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = call i32 @pskb_may_pull(%struct.sk_buff* %47, i32 16)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %264

55:                                               ; preds = %46
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call i64 @skb_transport_header(%struct.sk_buff* %56)
  %58 = inttoptr i64 %57 to %struct.gre_base_hdr*
  store %struct.gre_base_hdr* %58, %struct.gre_base_hdr** %7, align 8
  %59 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %7, align 8
  %60 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GRE_KEY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @GRE_HEADER_SECTION, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %55
  %70 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %7, align 8
  %71 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GRE_SEQ, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @GRE_HEADER_SECTION, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %7, align 8
  %82 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @GRE_CSUM, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @GRE_HEADER_SECTION, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %6, align 4
  store i32 1, i32* %12, align 4
  br label %92

91:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %91, %87
  %93 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %7, align 8
  %94 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @ETH_P_TEB, align 4
  %97 = call i64 @htons(i32 %96)
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %99, label %156

99:                                               ; preds = %92
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @ETH_HLEN, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @pskb_may_pull(%struct.sk_buff* %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %264

111:                                              ; preds = %99
  %112 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = inttoptr i64 %117 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %118, %struct.vlan_ethhdr** %13, align 8
  %119 = load i32, i32* @ETH_HLEN, align 4
  store i32 %119, i32* %10, align 4
  %120 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %13, align 8
  %121 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @ETH_P_8021Q, align 4
  %124 = call i64 @htons(i32 %123)
  %125 = icmp eq i64 %122, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %111
  %127 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @pskb_may_pull(%struct.sk_buff* %127, i32 %130)
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %264

138:                                              ; preds = %126
  %139 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %13, align 8
  %140 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* @VLAN_HLEN, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %10, align 4
  br label %155

149:                                              ; preds = %111
  %150 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %13, align 8
  %151 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %149, %138
  br label %172

156:                                              ; preds = %92
  %157 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %7, align 8
  %158 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @pskb_may_pull(%struct.sk_buff* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %156
  br label %264

171:                                              ; preds = %156
  br label %172

172:                                              ; preds = %171, %155
  %173 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 5
  store i64 0, i64* %174, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @__skb_pull(%struct.sk_buff* %175, i32 %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %179 = call i32 @skb_reset_mac_header(%struct.sk_buff* %178)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @skb_set_network_header(%struct.sk_buff* %180, i32 %181)
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %187 = load i32, i32* @NETIF_F_SG, align 4
  %188 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %189 = call i32 @netif_skb_features(%struct.sk_buff* %188)
  %190 = and i32 %187, %189
  %191 = call %struct.sk_buff* @skb_mac_gso_segment(%struct.sk_buff* %186, i32 %190)
  store %struct.sk_buff* %191, %struct.sk_buff** %5, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %193 = icmp ne %struct.sk_buff* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %172
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = call i64 @IS_ERR(%struct.sk_buff* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194, %172
  br label %264

199:                                              ; preds = %194
  %200 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %200, %struct.sk_buff** %3, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %202 = call i32 @skb_tnl_header_len(%struct.sk_buff* %201)
  store i32 %202, i32* %11, align 4
  br label %203

203:                                              ; preds = %258, %199
  %204 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @__skb_push(%struct.sk_buff* %204, i32 %205)
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %241

209:                                              ; preds = %203
  %210 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %211 = call i64 @skb_has_shared_frag(%struct.sk_buff* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %209
  %214 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %215 = call i32 @__skb_linearize(%struct.sk_buff* %214)
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %220 = call i32 @kfree_skb(%struct.sk_buff* %219)
  %221 = load i32, i32* %15, align 4
  %222 = call %struct.sk_buff* @ERR_PTR(i32 %221)
  store %struct.sk_buff* %222, %struct.sk_buff** %5, align 8
  br label %264

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223, %209
  %225 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = inttoptr i64 %227 to %struct.gre_base_hdr*
  store %struct.gre_base_hdr* %228, %struct.gre_base_hdr** %7, align 8
  %229 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %7, align 8
  %230 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %229, i64 1
  %231 = bitcast %struct.gre_base_hdr* %230 to i64*
  store i64* %231, i64** %14, align 8
  %232 = load i64*, i64** %14, align 8
  store i64 0, i64* %232, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @skb_checksum(%struct.sk_buff* %233, i32 0, i32 %236, i32 0)
  %238 = call i32 @csum_fold(i32 %237)
  %239 = load i64*, i64** %14, align 8
  %240 = bitcast i64* %239 to i32*
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %224, %203
  %242 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* %6, align 4
  %245 = sub nsw i32 %243, %244
  %246 = call i32 @__skb_push(%struct.sk_buff* %242, i32 %245)
  %247 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %248 = call i32 @skb_reset_mac_header(%struct.sk_buff* %247)
  %249 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @skb_set_network_header(%struct.sk_buff* %249, i32 %250)
  %252 = load i32, i32* %8, align 4
  %253 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %254 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load i64, i64* %9, align 8
  %256 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %257 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %256, i32 0, i32 1
  store i64 %255, i64* %257, align 8
  br label %258

258:                                              ; preds = %241
  %259 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %260 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %259, i32 0, i32 4
  %261 = load %struct.sk_buff*, %struct.sk_buff** %260, align 8
  store %struct.sk_buff* %261, %struct.sk_buff** %3, align 8
  %262 = icmp ne %struct.sk_buff* %261, null
  br i1 %262, label %203, label %263

263:                                              ; preds = %258
  br label %264

264:                                              ; preds = %263, %218, %198, %170, %137, %110, %54, %45
  %265 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %265
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_mac_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_skb_features(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @skb_tnl_header_len(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_has_shared_frag(%struct.sk_buff*) #1

declare dso_local i32 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
