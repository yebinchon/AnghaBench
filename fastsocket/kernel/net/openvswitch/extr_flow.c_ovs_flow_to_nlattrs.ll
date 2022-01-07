; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_to_nlattrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_to_nlattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { %struct.TYPE_24__, %struct.TYPE_21__, %struct.TYPE_14__, %struct.TYPE_20__, %struct.TYPE_13__, %struct.TYPE_15__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__, i32, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { i32*, i32*, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i32*, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32*, i32* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ovs_key_ethernet = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.ovs_key_ipv4 = type { i64, i64, i32, i32, i32, i32 }
%struct.ovs_key_ipv6 = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.ovs_key_arp = type { i32, i32, i64, i32, i32 }
%struct.ovs_key_tcp = type { i32, i32 }
%struct.ovs_key_udp = type { i32, i32 }
%struct.ovs_key_icmp = type { i8*, i8* }
%struct.ovs_key_icmpv6 = type { i64, i8* }
%struct.ovs_key_nd = type { i32, i32, i32 }

@OVS_KEY_ATTR_PRIORITY = common dso_local global i32 0, align 4
@DP_MAX_PORTS = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_IN_PORT = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_SKB_MARK = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ETHERNET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ETHERTYPE = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_VLAN = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ENCAP = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_IPV4 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_IPV6 = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i64 0, align 8
@ETH_P_RARP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ARP = common dso_local global i32 0, align 4
@OVS_FRAG_TYPE_LATER = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_UDP = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ICMP = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ICMPV6 = common dso_local global i32 0, align 4
@NDISC_NEIGHBOUR_SOLICITATION = common dso_local global i64 0, align 8
@NDISC_NEIGHBOUR_ADVERTISEMENT = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ND = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_flow_to_nlattrs(%struct.sw_flow_key* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw_flow_key*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ovs_key_ethernet*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.ovs_key_ipv4*, align 8
  %10 = alloca %struct.ovs_key_ipv6*, align 8
  %11 = alloca %struct.ovs_key_arp*, align 8
  %12 = alloca %struct.ovs_key_tcp*, align 8
  %13 = alloca %struct.ovs_key_udp*, align 8
  %14 = alloca %struct.ovs_key_icmp*, align 8
  %15 = alloca %struct.ovs_key_icmpv6*, align 8
  %16 = alloca %struct.ovs_key_nd*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %18 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load i32, i32* @OVS_KEY_ATTR_PRIORITY, align 4
  %25 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %26 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @nla_put_u32(%struct.sk_buff* %23, i32 %24, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %664

32:                                               ; preds = %22, %2
  %33 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %34 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %41 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %40, i32 0, i32 5
  %42 = call i64 @ovs_ipv4_tun_to_nlattr(%struct.sk_buff* %39, %struct.TYPE_15__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %664

45:                                               ; preds = %38, %32
  %46 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %47 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DP_MAX_PORTS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @OVS_KEY_ATTR_IN_PORT, align 4
  %55 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %56 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @nla_put_u32(%struct.sk_buff* %53, i32 %54, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %664

62:                                               ; preds = %52, %45
  %63 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %64 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = load i32, i32* @OVS_KEY_ATTR_SKB_MARK, align 4
  %71 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %72 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @nla_put_u32(%struct.sk_buff* %69, i32 %70, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %664

78:                                               ; preds = %68, %62
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = load i32, i32* @OVS_KEY_ATTR_ETHERNET, align 4
  %81 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %79, i32 %80, i32 8)
  store %struct.nlattr* %81, %struct.nlattr** %7, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %83 = icmp ne %struct.nlattr* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %664

85:                                               ; preds = %78
  %86 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %87 = call i8* @nla_data(%struct.nlattr* %86)
  %88 = bitcast i8* %87 to %struct.ovs_key_ethernet*
  store %struct.ovs_key_ethernet* %88, %struct.ovs_key_ethernet** %6, align 8
  %89 = load %struct.ovs_key_ethernet*, %struct.ovs_key_ethernet** %6, align 8
  %90 = getelementptr inbounds %struct.ovs_key_ethernet, %struct.ovs_key_ethernet* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %93 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i32 @memcpy(i32 %91, i32* %95, i32 %96)
  %98 = load %struct.ovs_key_ethernet*, %struct.ovs_key_ethernet** %6, align 8
  %99 = getelementptr inbounds %struct.ovs_key_ethernet, %struct.ovs_key_ethernet* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %102 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @ETH_ALEN, align 4
  %106 = call i32 @memcpy(i32 %100, i32* %104, i32 %105)
  %107 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %108 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %85
  %113 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %114 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ETH_P_8021Q, align 8
  %118 = call i64 @htons(i64 %117)
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %120, label %148

120:                                              ; preds = %112, %85
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %123 = load i64, i64* @ETH_P_8021Q, align 8
  %124 = call i64 @htons(i64 %123)
  %125 = call i64 @nla_put_be16(%struct.sk_buff* %121, i32 %122, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %120
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = load i32, i32* @OVS_KEY_ATTR_VLAN, align 4
  %130 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %131 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @nla_put_be16(%struct.sk_buff* %128, i32 %129, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127, %120
  br label %664

137:                                              ; preds = %127
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = load i32, i32* @OVS_KEY_ATTR_ENCAP, align 4
  %140 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %138, i32 %139)
  store %struct.nlattr* %140, %struct.nlattr** %8, align 8
  %141 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %142 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %137
  br label %656

147:                                              ; preds = %137
  br label %149

148:                                              ; preds = %112
  store %struct.nlattr* null, %struct.nlattr** %8, align 8
  br label %149

149:                                              ; preds = %148, %147
  %150 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %151 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @ETH_P_802_2, align 8
  %155 = call i64 @htons(i64 %154)
  %156 = icmp eq i64 %153, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %656

158:                                              ; preds = %149
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %161 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %162 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @nla_put_be16(%struct.sk_buff* %159, i32 %160, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %664

168:                                              ; preds = %158
  %169 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %170 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @ETH_P_IP, align 8
  %174 = call i64 @htons(i64 %173)
  %175 = icmp eq i64 %172, %174
  br i1 %175, label %176, label %225

176:                                              ; preds = %168
  %177 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %178 = load i32, i32* @OVS_KEY_ATTR_IPV4, align 4
  %179 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %177, i32 %178, i32 32)
  store %struct.nlattr* %179, %struct.nlattr** %7, align 8
  %180 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %181 = icmp ne %struct.nlattr* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %176
  br label %664

183:                                              ; preds = %176
  %184 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %185 = call i8* @nla_data(%struct.nlattr* %184)
  %186 = bitcast i8* %185 to %struct.ovs_key_ipv4*
  store %struct.ovs_key_ipv4* %186, %struct.ovs_key_ipv4** %9, align 8
  %187 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %188 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %193 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %195 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %200 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 8
  %201 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %202 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %206 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %205, i32 0, i32 0
  store i64 %204, i64* %206, align 8
  %207 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %208 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %212 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %214 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %218 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %220 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %224 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %223, i32 0, i32 1
  store i64 %222, i64* %224, align 8
  br label %362

225:                                              ; preds = %168
  %226 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %227 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @ETH_P_IPV6, align 8
  %231 = call i64 @htons(i64 %230)
  %232 = icmp eq i64 %229, %231
  br i1 %232, label %233, label %290

233:                                              ; preds = %225
  %234 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %235 = load i32, i32* @OVS_KEY_ATTR_IPV6, align 4
  %236 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %234, i32 %235, i32 40)
  store %struct.nlattr* %236, %struct.nlattr** %7, align 8
  %237 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %238 = icmp ne %struct.nlattr* %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %233
  br label %664

240:                                              ; preds = %233
  %241 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %242 = call i8* @nla_data(%struct.nlattr* %241)
  %243 = bitcast i8* %242 to %struct.ovs_key_ipv6*
  store %struct.ovs_key_ipv6* %243, %struct.ovs_key_ipv6** %10, align 8
  %244 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %10, align 8
  %245 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %248 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 1
  %251 = call i32 @memcpy(i32 %246, i32* %250, i32 4)
  %252 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %10, align 8
  %253 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %256 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = call i32 @memcpy(i32 %254, i32* %258, i32 4)
  %260 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %261 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %10, align 8
  %265 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %264, i32 0, i32 4
  store i32 %263, i32* %265, align 8
  %266 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %267 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %10, align 8
  %271 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  %272 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %273 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %10, align 8
  %277 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 4
  %278 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %279 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %10, align 8
  %283 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 8
  %284 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %285 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %10, align 8
  %289 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %288, i32 0, i32 1
  store i64 %287, i64* %289, align 8
  br label %361

290:                                              ; preds = %225
  %291 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %292 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @ETH_P_ARP, align 8
  %296 = call i64 @htons(i64 %295)
  %297 = icmp eq i64 %294, %296
  br i1 %297, label %306, label %298

298:                                              ; preds = %290
  %299 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %300 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @ETH_P_RARP, align 8
  %304 = call i64 @htons(i64 %303)
  %305 = icmp eq i64 %302, %304
  br i1 %305, label %306, label %360

306:                                              ; preds = %298, %290
  %307 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %308 = load i32, i32* @OVS_KEY_ATTR_ARP, align 4
  %309 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %307, i32 %308, i32 24)
  store %struct.nlattr* %309, %struct.nlattr** %7, align 8
  %310 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %311 = icmp ne %struct.nlattr* %310, null
  br i1 %311, label %313, label %312

312:                                              ; preds = %306
  br label %664

313:                                              ; preds = %306
  %314 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %315 = call i8* @nla_data(%struct.nlattr* %314)
  %316 = bitcast i8* %315 to %struct.ovs_key_arp*
  store %struct.ovs_key_arp* %316, %struct.ovs_key_arp** %11, align 8
  %317 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %11, align 8
  %318 = call i32 @memset(%struct.ovs_key_arp* %317, i32 0, i32 24)
  %319 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %320 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %11, align 8
  %325 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 4
  %326 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %327 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %11, align 8
  %332 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %331, i32 0, i32 3
  store i32 %330, i32* %332, align 8
  %333 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %334 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = call i64 @htons(i64 %336)
  %338 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %11, align 8
  %339 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %338, i32 0, i32 2
  store i64 %337, i64* %339, align 8
  %340 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %11, align 8
  %341 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %344 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* @ETH_ALEN, align 4
  %349 = call i32 @memcpy(i32 %342, i32* %347, i32 %348)
  %350 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %11, align 8
  %351 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %354 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* @ETH_ALEN, align 4
  %359 = call i32 @memcpy(i32 %352, i32* %357, i32 %358)
  br label %360

360:                                              ; preds = %313, %298
  br label %361

361:                                              ; preds = %360, %240
  br label %362

362:                                              ; preds = %361, %183
  %363 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %364 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @ETH_P_IP, align 8
  %368 = call i64 @htons(i64 %367)
  %369 = icmp eq i64 %366, %368
  br i1 %369, label %378, label %370

370:                                              ; preds = %362
  %371 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %372 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @ETH_P_IPV6, align 8
  %376 = call i64 @htons(i64 %375)
  %377 = icmp eq i64 %374, %376
  br i1 %377, label %378, label %655

378:                                              ; preds = %370, %362
  %379 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %380 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @OVS_FRAG_TYPE_LATER, align 8
  %384 = icmp ne i64 %382, %383
  br i1 %384, label %385, label %655

385:                                              ; preds = %378
  %386 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %387 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @IPPROTO_TCP, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %450

392:                                              ; preds = %385
  %393 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %394 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %395 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %393, i32 %394, i32 8)
  store %struct.nlattr* %395, %struct.nlattr** %7, align 8
  %396 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %397 = icmp ne %struct.nlattr* %396, null
  br i1 %397, label %399, label %398

398:                                              ; preds = %392
  br label %664

399:                                              ; preds = %392
  %400 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %401 = call i8* @nla_data(%struct.nlattr* %400)
  %402 = bitcast i8* %401 to %struct.ovs_key_tcp*
  store %struct.ovs_key_tcp* %402, %struct.ovs_key_tcp** %12, align 8
  %403 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %404 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @ETH_P_IP, align 8
  %408 = call i64 @htons(i64 %407)
  %409 = icmp eq i64 %406, %408
  br i1 %409, label %410, label %425

410:                                              ; preds = %399
  %411 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %412 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %12, align 8
  %417 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %416, i32 0, i32 1
  store i32 %415, i32* %417, align 4
  %418 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %419 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %418, i32 0, i32 3
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %12, align 8
  %424 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %423, i32 0, i32 0
  store i32 %422, i32* %424, align 4
  br label %449

425:                                              ; preds = %399
  %426 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %427 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @ETH_P_IPV6, align 8
  %431 = call i64 @htons(i64 %430)
  %432 = icmp eq i64 %429, %431
  br i1 %432, label %433, label %448

433:                                              ; preds = %425
  %434 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %435 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %12, align 8
  %440 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %439, i32 0, i32 1
  store i32 %438, i32* %440, align 4
  %441 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %442 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %12, align 8
  %447 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %446, i32 0, i32 0
  store i32 %445, i32* %447, align 4
  br label %448

448:                                              ; preds = %433, %425
  br label %449

449:                                              ; preds = %448, %410
  br label %654

450:                                              ; preds = %385
  %451 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %452 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @IPPROTO_UDP, align 8
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %457, label %515

457:                                              ; preds = %450
  %458 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %459 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %460 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %458, i32 %459, i32 8)
  store %struct.nlattr* %460, %struct.nlattr** %7, align 8
  %461 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %462 = icmp ne %struct.nlattr* %461, null
  br i1 %462, label %464, label %463

463:                                              ; preds = %457
  br label %664

464:                                              ; preds = %457
  %465 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %466 = call i8* @nla_data(%struct.nlattr* %465)
  %467 = bitcast i8* %466 to %struct.ovs_key_udp*
  store %struct.ovs_key_udp* %467, %struct.ovs_key_udp** %13, align 8
  %468 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %469 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = load i64, i64* @ETH_P_IP, align 8
  %473 = call i64 @htons(i64 %472)
  %474 = icmp eq i64 %471, %473
  br i1 %474, label %475, label %490

475:                                              ; preds = %464
  %476 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %477 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %476, i32 0, i32 3
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %13, align 8
  %482 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %481, i32 0, i32 1
  store i32 %480, i32* %482, align 4
  %483 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %484 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %483, i32 0, i32 3
  %485 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %13, align 8
  %489 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %488, i32 0, i32 0
  store i32 %487, i32* %489, align 4
  br label %514

490:                                              ; preds = %464
  %491 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %492 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @ETH_P_IPV6, align 8
  %496 = call i64 @htons(i64 %495)
  %497 = icmp eq i64 %494, %496
  br i1 %497, label %498, label %513

498:                                              ; preds = %490
  %499 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %500 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %13, align 8
  %505 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %504, i32 0, i32 1
  store i32 %503, i32* %505, align 4
  %506 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %507 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %13, align 8
  %512 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %511, i32 0, i32 0
  store i32 %510, i32* %512, align 4
  br label %513

513:                                              ; preds = %498, %490
  br label %514

514:                                              ; preds = %513, %475
  br label %653

515:                                              ; preds = %450
  %516 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %517 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %516, i32 0, i32 2
  %518 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %517, i32 0, i32 0
  %519 = load i64, i64* %518, align 8
  %520 = load i64, i64* @ETH_P_IP, align 8
  %521 = call i64 @htons(i64 %520)
  %522 = icmp eq i64 %519, %521
  br i1 %522, label %523, label %557

523:                                              ; preds = %515
  %524 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %525 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %525, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = load i64, i64* @IPPROTO_ICMP, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %530, label %557

530:                                              ; preds = %523
  %531 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %532 = load i32, i32* @OVS_KEY_ATTR_ICMP, align 4
  %533 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %531, i32 %532, i32 16)
  store %struct.nlattr* %533, %struct.nlattr** %7, align 8
  %534 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %535 = icmp ne %struct.nlattr* %534, null
  br i1 %535, label %537, label %536

536:                                              ; preds = %530
  br label %664

537:                                              ; preds = %530
  %538 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %539 = call i8* @nla_data(%struct.nlattr* %538)
  %540 = bitcast i8* %539 to %struct.ovs_key_icmp*
  store %struct.ovs_key_icmp* %540, %struct.ovs_key_icmp** %14, align 8
  %541 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %542 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %541, i32 0, i32 3
  %543 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = call i8* @ntohs(i32 %545)
  %547 = load %struct.ovs_key_icmp*, %struct.ovs_key_icmp** %14, align 8
  %548 = getelementptr inbounds %struct.ovs_key_icmp, %struct.ovs_key_icmp* %547, i32 0, i32 1
  store i8* %546, i8** %548, align 8
  %549 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %550 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %549, i32 0, i32 3
  %551 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  %554 = call i8* @ntohs(i32 %553)
  %555 = load %struct.ovs_key_icmp*, %struct.ovs_key_icmp** %14, align 8
  %556 = getelementptr inbounds %struct.ovs_key_icmp, %struct.ovs_key_icmp* %555, i32 0, i32 0
  store i8* %554, i8** %556, align 8
  br label %652

557:                                              ; preds = %523, %515
  %558 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %559 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = load i64, i64* @ETH_P_IPV6, align 8
  %563 = call i64 @htons(i64 %562)
  %564 = icmp eq i64 %561, %563
  br i1 %564, label %565, label %651

565:                                              ; preds = %557
  %566 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %567 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %566, i32 0, i32 1
  %568 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %571 = icmp eq i64 %569, %570
  br i1 %571, label %572, label %651

572:                                              ; preds = %565
  %573 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %574 = load i32, i32* @OVS_KEY_ATTR_ICMPV6, align 4
  %575 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %573, i32 %574, i32 16)
  store %struct.nlattr* %575, %struct.nlattr** %7, align 8
  %576 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %577 = icmp ne %struct.nlattr* %576, null
  br i1 %577, label %579, label %578

578:                                              ; preds = %572
  br label %664

579:                                              ; preds = %572
  %580 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %581 = call i8* @nla_data(%struct.nlattr* %580)
  %582 = bitcast i8* %581 to %struct.ovs_key_icmpv6*
  store %struct.ovs_key_icmpv6* %582, %struct.ovs_key_icmpv6** %15, align 8
  %583 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %584 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = call i8* @ntohs(i32 %587)
  %589 = ptrtoint i8* %588 to i64
  %590 = load %struct.ovs_key_icmpv6*, %struct.ovs_key_icmpv6** %15, align 8
  %591 = getelementptr inbounds %struct.ovs_key_icmpv6, %struct.ovs_key_icmpv6* %590, i32 0, i32 0
  store i64 %589, i64* %591, align 8
  %592 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %593 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = call i8* @ntohs(i32 %596)
  %598 = load %struct.ovs_key_icmpv6*, %struct.ovs_key_icmpv6** %15, align 8
  %599 = getelementptr inbounds %struct.ovs_key_icmpv6, %struct.ovs_key_icmpv6* %598, i32 0, i32 1
  store i8* %597, i8** %599, align 8
  %600 = load %struct.ovs_key_icmpv6*, %struct.ovs_key_icmpv6** %15, align 8
  %601 = getelementptr inbounds %struct.ovs_key_icmpv6, %struct.ovs_key_icmpv6* %600, i32 0, i32 0
  %602 = load i64, i64* %601, align 8
  %603 = load i64, i64* @NDISC_NEIGHBOUR_SOLICITATION, align 8
  %604 = icmp eq i64 %602, %603
  br i1 %604, label %611, label %605

605:                                              ; preds = %579
  %606 = load %struct.ovs_key_icmpv6*, %struct.ovs_key_icmpv6** %15, align 8
  %607 = getelementptr inbounds %struct.ovs_key_icmpv6, %struct.ovs_key_icmpv6* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = load i64, i64* @NDISC_NEIGHBOUR_ADVERTISEMENT, align 8
  %610 = icmp eq i64 %608, %609
  br i1 %610, label %611, label %650

611:                                              ; preds = %605, %579
  %612 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %613 = load i32, i32* @OVS_KEY_ATTR_ND, align 4
  %614 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %612, i32 %613, i32 12)
  store %struct.nlattr* %614, %struct.nlattr** %7, align 8
  %615 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %616 = icmp ne %struct.nlattr* %615, null
  br i1 %616, label %618, label %617

617:                                              ; preds = %611
  br label %664

618:                                              ; preds = %611
  %619 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %620 = call i8* @nla_data(%struct.nlattr* %619)
  %621 = bitcast i8* %620 to %struct.ovs_key_nd*
  store %struct.ovs_key_nd* %621, %struct.ovs_key_nd** %16, align 8
  %622 = load %struct.ovs_key_nd*, %struct.ovs_key_nd** %16, align 8
  %623 = getelementptr inbounds %struct.ovs_key_nd, %struct.ovs_key_nd* %622, i32 0, i32 2
  %624 = load i32, i32* %623, align 4
  %625 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %626 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %627, i32 0, i32 2
  %629 = call i32 @memcpy(i32 %624, i32* %628, i32 4)
  %630 = load %struct.ovs_key_nd*, %struct.ovs_key_nd** %16, align 8
  %631 = getelementptr inbounds %struct.ovs_key_nd, %struct.ovs_key_nd* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %634 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %633, i32 0, i32 0
  %635 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %634, i32 0, i32 0
  %636 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %635, i32 0, i32 1
  %637 = load i32*, i32** %636, align 8
  %638 = load i32, i32* @ETH_ALEN, align 4
  %639 = call i32 @memcpy(i32 %632, i32* %637, i32 %638)
  %640 = load %struct.ovs_key_nd*, %struct.ovs_key_nd** %16, align 8
  %641 = getelementptr inbounds %struct.ovs_key_nd, %struct.ovs_key_nd* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 4
  %643 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %644 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %644, i32 0, i32 0
  %646 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %645, i32 0, i32 0
  %647 = load i32*, i32** %646, align 8
  %648 = load i32, i32* @ETH_ALEN, align 4
  %649 = call i32 @memcpy(i32 %642, i32* %647, i32 %648)
  br label %650

650:                                              ; preds = %618, %605
  br label %651

651:                                              ; preds = %650, %565, %557
  br label %652

652:                                              ; preds = %651, %537
  br label %653

653:                                              ; preds = %652, %514
  br label %654

654:                                              ; preds = %653, %449
  br label %655

655:                                              ; preds = %654, %378, %370
  br label %656

656:                                              ; preds = %655, %157, %146
  %657 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %658 = icmp ne %struct.nlattr* %657, null
  br i1 %658, label %659, label %663

659:                                              ; preds = %656
  %660 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %661 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %662 = call i32 @nla_nest_end(%struct.sk_buff* %660, %struct.nlattr* %661)
  br label %663

663:                                              ; preds = %659, %656
  store i32 0, i32* %3, align 4
  br label %667

664:                                              ; preds = %617, %578, %536, %463, %398, %312, %239, %182, %167, %136, %84, %77, %61, %44, %31
  %665 = load i32, i32* @EMSGSIZE, align 4
  %666 = sub nsw i32 0, %665
  store i32 %666, i32* %3, align 4
  br label %667

667:                                              ; preds = %664, %663
  %668 = load i32, i32* %3, align 4
  ret i32 %668
}

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @ovs_ipv4_tun_to_nlattr(%struct.sk_buff*, %struct.TYPE_15__*) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i64) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ovs_key_arp*, i32, i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
