; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_extract.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethhdr = type { i32, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.sk_buff = type { i32, i32, i64, i32, i32, i32 }
%struct.sw_flow_key = type { %struct.TYPE_26__, %struct.TYPE_21__, %struct.TYPE_23__, %struct.TYPE_25__, %struct.TYPE_22__, i32 }
%struct.TYPE_26__ = type { i64, i64, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32*, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_19__, %struct.TYPE_24__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32*, i32* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.iphdr = type { i64, i32, i32, i32, i32, i32 }
%struct.tcphdr = type { i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.icmphdr = type { i32, i32 }
%struct.arp_eth_header = type { i32, i32, i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@eth = common dso_local global %struct.ethhdr* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ipv4 = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@OVS_FRAG_TYPE_LATER = common dso_local global i64 0, align 8
@IP_MF = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i32 0, align 4
@OVS_FRAG_TYPE_FIRST = common dso_local global i8* null, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_RARP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NEXTHDR_TCP = common dso_local global i64 0, align 8
@ipv6 = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@NEXTHDR_UDP = common dso_local global i64 0, align 8
@NEXTHDR_ICMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_flow_extract(%struct.sk_buff* %0, i32 %1, %struct.sw_flow_key* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sw_flow_key*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ethhdr*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca %struct.udphdr*, align 8
  %17 = alloca %struct.icmphdr*, align 8
  %18 = alloca %struct.arp_eth_header*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.tcphdr*, align 8
  %21 = alloca %struct.udphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.ethhdr*, %struct.ethhdr** @eth, align 8
  %23 = ptrtoint %struct.ethhdr* %22 to i32
  %24 = call i32 @SW_FLOW_KEY_OFFSET(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %26 = call i32 @memset(%struct.sw_flow_key* %25, i32 0, i32 104)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %31 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call %struct.TYPE_17__* @OVS_CB(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %4
  %39 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %40 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %39, i32 0, i32 5
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call %struct.TYPE_17__* @OVS_CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcpy(i32* %40, i64 %44, i32 4)
  br label %46

46:                                               ; preds = %38, %4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %49 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %55 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @skb_reset_mac_header(%struct.sk_buff* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %59)
  store %struct.ethhdr* %60, %struct.ethhdr** %12, align 8
  %61 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %62 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %66 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @ETH_ALEN, align 4
  %69 = call i32 @memcpy(i32* %64, i64 %67, i32 %68)
  %70 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %71 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %75 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = call i32 @memcpy(i32* %73, i64 %76, i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = mul nsw i32 2, %80
  %82 = call i32 @__skb_pull(%struct.sk_buff* %79, i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %46
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @htons(i32 %89)
  %91 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %92 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  br label %112

94:                                               ; preds = %46
  %95 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %96 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ETH_P_8021Q, align 4
  %99 = call i32 @htons(i32 %98)
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %104 = call i32 @parse_vlan(%struct.sk_buff* %102, %struct.sw_flow_key* %103)
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %590

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %86
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = call i32 @parse_ethertype(%struct.sk_buff* %113)
  %115 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %116 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %119 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @htons(i32 0)
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %112
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %590

130:                                              ; preds = %112
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = call i32 @skb_reset_network_header(%struct.sk_buff* %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = call i64 @skb_mac_header(%struct.sk_buff* %137)
  %139 = sub nsw i64 %136, %138
  %140 = call i32 @__skb_push(%struct.sk_buff* %133, i64 %139)
  %141 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %142 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ETH_P_IP, align 4
  %146 = call i32 @htons(i32 %145)
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %339

148:                                              ; preds = %130
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ipv4, i32 0, i32 2), align 4
  %150 = call i32 @SW_FLOW_KEY_OFFSET(i32 %149)
  store i32 %150, i32* %11, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = call i32 @check_iphdr(%struct.sk_buff* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %148
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  store i32 0, i32* %10, align 4
  br label %167

167:                                              ; preds = %161, %156
  br label %586

168:                                              ; preds = %148
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %169)
  store %struct.iphdr* %170, %struct.iphdr** %13, align 8
  %171 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %172 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %175 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 1
  store i32 %173, i32* %177, align 4
  %178 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %179 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %182 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  store i32 %180, i32* %184, align 8
  %185 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %186 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %189 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  store i64 %187, i64* %190, align 8
  %191 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %192 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %195 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 3
  store i32 %193, i32* %196, align 4
  %197 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %198 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %201 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 2
  store i32 %199, i32* %202, align 8
  %203 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %204 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @IP_OFFSET, align 4
  %207 = call i32 @htons(i32 %206)
  %208 = and i32 %205, %207
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %168
  %212 = load i64, i64* @OVS_FRAG_TYPE_LATER, align 8
  %213 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %214 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 1
  store i64 %212, i64* %215, align 8
  br label %586

216:                                              ; preds = %168
  %217 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %218 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IP_MF, align 4
  %221 = call i32 @htons(i32 %220)
  %222 = and i32 %219, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %216
  %225 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %226 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %225)
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @SKB_GSO_UDP, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %224, %216
  %233 = load i8*, i8** @OVS_FRAG_TYPE_FIRST, align 8
  %234 = ptrtoint i8* %233 to i64
  %235 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %236 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 1
  store i64 %234, i64* %237, align 8
  br label %238

238:                                              ; preds = %232, %224
  %239 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %240 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* @IPPROTO_TCP, align 4
  %244 = sext i32 %243 to i64
  %245 = icmp eq i64 %242, %244
  br i1 %245, label %246, label %270

246:                                              ; preds = %238
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ipv4, i32 0, i32 1), align 4
  %248 = call i32 @SW_FLOW_KEY_OFFSET(i32 %247)
  store i32 %248, i32* %11, align 4
  %249 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %250 = call i64 @tcphdr_ok(%struct.sk_buff* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %269

252:                                              ; preds = %246
  %253 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %254 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %253)
  store %struct.tcphdr* %254, %struct.tcphdr** %15, align 8
  %255 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %256 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %259 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  store i32 %257, i32* %261, align 8
  %262 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %263 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %266 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 1
  store i32 %264, i32* %268, align 4
  br label %269

269:                                              ; preds = %252, %246
  br label %338

270:                                              ; preds = %238
  %271 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %272 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* @IPPROTO_UDP, align 4
  %276 = sext i32 %275 to i64
  %277 = icmp eq i64 %274, %276
  br i1 %277, label %278, label %302

278:                                              ; preds = %270
  %279 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ipv4, i32 0, i32 1), align 4
  %280 = call i32 @SW_FLOW_KEY_OFFSET(i32 %279)
  store i32 %280, i32* %11, align 4
  %281 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %282 = call i64 @udphdr_ok(%struct.sk_buff* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %301

284:                                              ; preds = %278
  %285 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %286 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %285)
  store %struct.udphdr* %286, %struct.udphdr** %16, align 8
  %287 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %288 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %291 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  store i32 %289, i32* %293, align 8
  %294 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %295 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %298 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 1
  store i32 %296, i32* %300, align 4
  br label %301

301:                                              ; preds = %284, %278
  br label %337

302:                                              ; preds = %270
  %303 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %304 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i32, i32* @IPPROTO_ICMP, align 4
  %308 = sext i32 %307 to i64
  %309 = icmp eq i64 %306, %308
  br i1 %309, label %310, label %336

310:                                              ; preds = %302
  %311 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ipv4, i32 0, i32 1), align 4
  %312 = call i32 @SW_FLOW_KEY_OFFSET(i32 %311)
  store i32 %312, i32* %11, align 4
  %313 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %314 = call i64 @icmphdr_ok(%struct.sk_buff* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %335

316:                                              ; preds = %310
  %317 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %318 = call %struct.icmphdr* @icmp_hdr(%struct.sk_buff* %317)
  store %struct.icmphdr* %318, %struct.icmphdr** %17, align 8
  %319 = load %struct.icmphdr*, %struct.icmphdr** %17, align 8
  %320 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @htons(i32 %321)
  %323 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %324 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 0
  store i32 %322, i32* %326, align 8
  %327 = load %struct.icmphdr*, %struct.icmphdr** %17, align 8
  %328 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @htons(i32 %329)
  %331 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %332 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  store i32 %330, i32* %334, align 4
  br label %335

335:                                              ; preds = %316, %310
  br label %336

336:                                              ; preds = %335, %302
  br label %337

337:                                              ; preds = %336, %301
  br label %338

338:                                              ; preds = %337, %269
  br label %585

339:                                              ; preds = %130
  %340 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %341 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @ETH_P_ARP, align 4
  %345 = call i32 @htons(i32 %344)
  %346 = icmp eq i32 %343, %345
  br i1 %346, label %355, label %347

347:                                              ; preds = %339
  %348 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %349 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @ETH_P_RARP, align 4
  %353 = call i32 @htons(i32 %352)
  %354 = icmp eq i32 %351, %353
  br i1 %354, label %355, label %442

355:                                              ; preds = %347, %339
  %356 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %357 = call i64 @arphdr_ok(%struct.sk_buff* %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %442

359:                                              ; preds = %355
  %360 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %361 = call i64 @skb_network_header(%struct.sk_buff* %360)
  %362 = inttoptr i64 %361 to %struct.arp_eth_header*
  store %struct.arp_eth_header* %362, %struct.arp_eth_header** %18, align 8
  %363 = load %struct.arp_eth_header*, %struct.arp_eth_header** %18, align 8
  %364 = getelementptr inbounds %struct.arp_eth_header, %struct.arp_eth_header* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @ARPHRD_ETHER, align 4
  %367 = call i32 @htons(i32 %366)
  %368 = icmp eq i32 %365, %367
  br i1 %368, label %369, label %441

369:                                              ; preds = %359
  %370 = load %struct.arp_eth_header*, %struct.arp_eth_header** %18, align 8
  %371 = getelementptr inbounds %struct.arp_eth_header, %struct.arp_eth_header* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @ETH_P_IP, align 4
  %374 = call i32 @htons(i32 %373)
  %375 = icmp eq i32 %372, %374
  br i1 %375, label %376, label %441

376:                                              ; preds = %369
  %377 = load %struct.arp_eth_header*, %struct.arp_eth_header** %18, align 8
  %378 = getelementptr inbounds %struct.arp_eth_header, %struct.arp_eth_header* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @ETH_ALEN, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %382, label %441

382:                                              ; preds = %376
  %383 = load %struct.arp_eth_header*, %struct.arp_eth_header** %18, align 8
  %384 = getelementptr inbounds %struct.arp_eth_header, %struct.arp_eth_header* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, 4
  br i1 %386, label %387, label %441

387:                                              ; preds = %382
  %388 = load %struct.arp_eth_header*, %struct.arp_eth_header** %18, align 8
  %389 = getelementptr inbounds %struct.arp_eth_header, %struct.arp_eth_header* %388, i32 0, i32 8
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @ntohs(i32 %390)
  %392 = icmp sle i32 %391, 255
  br i1 %392, label %393, label %402

393:                                              ; preds = %387
  %394 = load %struct.arp_eth_header*, %struct.arp_eth_header** %18, align 8
  %395 = getelementptr inbounds %struct.arp_eth_header, %struct.arp_eth_header* %394, i32 0, i32 8
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @ntohs(i32 %396)
  %398 = sext i32 %397 to i64
  %399 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %400 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 0
  store i64 %398, i64* %401, align 8
  br label %402

402:                                              ; preds = %393, %387
  %403 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %404 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 1
  %407 = load %struct.arp_eth_header*, %struct.arp_eth_header** %18, align 8
  %408 = getelementptr inbounds %struct.arp_eth_header, %struct.arp_eth_header* %407, i32 0, i32 7
  %409 = load i64, i64* %408, align 8
  %410 = call i32 @memcpy(i32* %406, i64 %409, i32 4)
  %411 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %412 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %413, i32 0, i32 0
  %415 = load %struct.arp_eth_header*, %struct.arp_eth_header** %18, align 8
  %416 = getelementptr inbounds %struct.arp_eth_header, %struct.arp_eth_header* %415, i32 0, i32 6
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @memcpy(i32* %414, i64 %417, i32 4)
  %419 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %420 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %419, i32 0, i32 3
  %421 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 1
  %423 = load i32*, i32** %422, align 8
  %424 = load %struct.arp_eth_header*, %struct.arp_eth_header** %18, align 8
  %425 = getelementptr inbounds %struct.arp_eth_header, %struct.arp_eth_header* %424, i32 0, i32 5
  %426 = load i64, i64* %425, align 8
  %427 = load i32, i32* @ETH_ALEN, align 4
  %428 = call i32 @memcpy(i32* %423, i64 %426, i32 %427)
  %429 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %430 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %429, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 0
  %433 = load i32*, i32** %432, align 8
  %434 = load %struct.arp_eth_header*, %struct.arp_eth_header** %18, align 8
  %435 = getelementptr inbounds %struct.arp_eth_header, %struct.arp_eth_header* %434, i32 0, i32 4
  %436 = load i64, i64* %435, align 8
  %437 = load i32, i32* @ETH_ALEN, align 4
  %438 = call i32 @memcpy(i32* %433, i64 %436, i32 %437)
  %439 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ipv4, i32 0, i32 0), align 4
  %440 = call i32 @SW_FLOW_KEY_OFFSET(i32 %439)
  store i32 %440, i32* %11, align 4
  br label %441

441:                                              ; preds = %402, %382, %376, %369, %359
  br label %584

442:                                              ; preds = %355, %347
  %443 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %444 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %443, i32 0, i32 2
  %445 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @ETH_P_IPV6, align 4
  %448 = call i32 @htons(i32 %447)
  %449 = icmp eq i32 %446, %448
  br i1 %449, label %450, label %583

450:                                              ; preds = %442
  %451 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %452 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %453 = call i32 @parse_ipv6hdr(%struct.sk_buff* %451, %struct.sw_flow_key* %452, i32* %11)
  store i32 %453, i32* %19, align 4
  %454 = load i32, i32* %19, align 4
  %455 = icmp slt i32 %454, 0
  %456 = zext i1 %455 to i32
  %457 = call i64 @unlikely(i32 %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %473

459:                                              ; preds = %450
  %460 = load i32, i32* %19, align 4
  %461 = load i32, i32* @EINVAL, align 4
  %462 = sub nsw i32 0, %461
  %463 = icmp eq i32 %460, %462
  br i1 %463, label %464, label %470

464:                                              ; preds = %459
  %465 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %466 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %469 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %468, i32 0, i32 1
  store i32 %467, i32* %469, align 4
  br label %472

470:                                              ; preds = %459
  %471 = load i32, i32* %19, align 4
  store i32 %471, i32* %10, align 4
  br label %472

472:                                              ; preds = %470, %464
  br label %586

473:                                              ; preds = %450
  %474 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %475 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @OVS_FRAG_TYPE_LATER, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %480, label %481

480:                                              ; preds = %473
  br label %586

481:                                              ; preds = %473
  %482 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %483 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %482)
  %484 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* @SKB_GSO_UDP, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %495

489:                                              ; preds = %481
  %490 = load i8*, i8** @OVS_FRAG_TYPE_FIRST, align 8
  %491 = ptrtoint i8* %490 to i64
  %492 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %493 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %493, i32 0, i32 1
  store i64 %491, i64* %494, align 8
  br label %495

495:                                              ; preds = %489, %481
  %496 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %497 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @NEXTHDR_TCP, align 8
  %501 = icmp eq i64 %499, %500
  br i1 %501, label %502, label %526

502:                                              ; preds = %495
  %503 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ipv6, i32 0, i32 0), align 4
  %504 = call i32 @SW_FLOW_KEY_OFFSET(i32 %503)
  store i32 %504, i32* %11, align 4
  %505 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %506 = call i64 @tcphdr_ok(%struct.sk_buff* %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %525

508:                                              ; preds = %502
  %509 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %510 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %509)
  store %struct.tcphdr* %510, %struct.tcphdr** %20, align 8
  %511 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %512 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %515 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %516, i32 0, i32 0
  store i32 %513, i32* %517, align 8
  %518 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %519 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %522 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %523, i32 0, i32 1
  store i32 %520, i32* %524, align 4
  br label %525

525:                                              ; preds = %508, %502
  br label %582

526:                                              ; preds = %495
  %527 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %528 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = load i64, i64* @NEXTHDR_UDP, align 8
  %532 = icmp eq i64 %530, %531
  br i1 %532, label %533, label %557

533:                                              ; preds = %526
  %534 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ipv6, i32 0, i32 0), align 4
  %535 = call i32 @SW_FLOW_KEY_OFFSET(i32 %534)
  store i32 %535, i32* %11, align 4
  %536 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %537 = call i64 @udphdr_ok(%struct.sk_buff* %536)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %556

539:                                              ; preds = %533
  %540 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %541 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %540)
  store %struct.udphdr* %541, %struct.udphdr** %21, align 8
  %542 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %543 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %546 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %547, i32 0, i32 0
  store i32 %544, i32* %548, align 8
  %549 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %550 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %549, i32 0, i32 1
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %553 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %554, i32 0, i32 1
  store i32 %551, i32* %555, align 4
  br label %556

556:                                              ; preds = %539, %533
  br label %581

557:                                              ; preds = %526
  %558 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %559 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = load i64, i64* @NEXTHDR_ICMP, align 8
  %563 = icmp eq i64 %561, %562
  br i1 %563, label %564, label %580

564:                                              ; preds = %557
  %565 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ipv6, i32 0, i32 0), align 4
  %566 = call i32 @SW_FLOW_KEY_OFFSET(i32 %565)
  store i32 %566, i32* %11, align 4
  %567 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %568 = call i64 @icmp6hdr_ok(%struct.sk_buff* %567)
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %579

570:                                              ; preds = %564
  %571 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %572 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %573 = load i32, i32* %19, align 4
  %574 = call i32 @parse_icmpv6(%struct.sk_buff* %571, %struct.sw_flow_key* %572, i32* %11, i32 %573)
  store i32 %574, i32* %10, align 4
  %575 = load i32, i32* %10, align 4
  %576 = icmp slt i32 %575, 0
  br i1 %576, label %577, label %578

577:                                              ; preds = %570
  br label %586

578:                                              ; preds = %570
  br label %579

579:                                              ; preds = %578, %564
  br label %580

580:                                              ; preds = %579, %557
  br label %581

581:                                              ; preds = %580, %556
  br label %582

582:                                              ; preds = %581, %525
  br label %583

583:                                              ; preds = %582, %442
  br label %584

584:                                              ; preds = %583, %441
  br label %585

585:                                              ; preds = %584, %338
  br label %586

586:                                              ; preds = %585, %577, %480, %472, %211, %167
  %587 = load i32, i32* %11, align 4
  %588 = load i32*, i32** %9, align 8
  store i32 %587, i32* %588, align 4
  %589 = load i32, i32* %10, align 4
  store i32 %589, i32* %5, align 4
  br label %590

590:                                              ; preds = %586, %127, %107
  %591 = load i32, i32* %5, align 4
  ret i32 %591
}

declare dso_local i32 @SW_FLOW_KEY_OFFSET(i32) #1

declare dso_local i32 @memset(%struct.sw_flow_key*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @parse_vlan(%struct.sk_buff*, %struct.sw_flow_key*) #1

declare dso_local i32 @parse_ethertype(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @check_iphdr(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @tcphdr_ok(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @udphdr_ok(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @icmphdr_ok(%struct.sk_buff*) #1

declare dso_local %struct.icmphdr* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @arphdr_ok(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @parse_ipv6hdr(%struct.sk_buff*, %struct.sw_flow_key*, i32*) #1

declare dso_local i64 @icmp6hdr_ok(%struct.sk_buff*) #1

declare dso_local i32 @parse_icmpv6(%struct.sk_buff*, %struct.sw_flow_key*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
