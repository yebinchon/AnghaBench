; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_from_nlattrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_from_nlattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_19__, %struct.TYPE_13__, i32, %struct.TYPE_18__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i8*, i8* }
%struct.nlattr = type { i32 }
%struct.ovs_key_ethernet = type { i32, i32 }
%struct.ovs_key_ipv4 = type { i64, i32, i32, i32, i32, i32 }
%struct.ovs_key_ipv6 = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ovs_key_arp = type { i32, i32, i32, i32, i32 }

@OVS_KEY_ATTR_MAX = common dso_local global i32 0, align 4
@eth = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_PRIORITY = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_IN_PORT = common dso_local global i32 0, align 4
@DP_MAX_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_SKB_MARK = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_TUNNEL = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ETHERNET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ETHERTYPE = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_VLAN = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ENCAP = common dso_local global i32 0, align 4
@VLAN_TAG_PRESENT = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_IPV4 = common dso_local global i32 0, align 4
@ipv4 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@OVS_FRAG_TYPE_MAX = common dso_local global i64 0, align 8
@OVS_FRAG_TYPE_LATER = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_IPV6 = common dso_local global i32 0, align 4
@ipv6 = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_RARP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_flow_from_nlattrs(%struct.sw_flow_key* %0, i32* %1, %struct.nlattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sw_flow_key*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ovs_key_ethernet*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ovs_key_ipv4*, align 8
  %19 = alloca %struct.ovs_key_ipv6*, align 8
  %20 = alloca %struct.ovs_key_arp*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  %21 = load i32, i32* @OVS_KEY_ATTR_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %27 = call i32 @memset(%struct.sw_flow_key* %26, i32 0, i32 112)
  %28 = load i32, i32* @eth, align 4
  %29 = call i32 @SW_FLOW_KEY_OFFSET(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %31 = call i32 @parse_flow_nlattrs(%struct.nlattr* %30, %struct.nlattr** %25, i32* %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @OVS_KEY_ATTR_PRIORITY, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load i32, i32* @OVS_KEY_ATTR_PRIORITY, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i8* @nla_get_u32(%struct.nlattr* %46)
  %48 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %49 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* @OVS_KEY_ATTR_PRIORITY, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %42, %36
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @OVS_KEY_ATTR_IN_PORT, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %56
  %63 = load i32, i32* @OVS_KEY_ATTR_IN_PORT, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i8* @nla_get_u32(%struct.nlattr* %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @DP_MAX_PORTS, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

75:                                               ; preds = %62
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %78 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @OVS_KEY_ATTR_IN_PORT, align 4
  %81 = shl i32 1, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %90

85:                                               ; preds = %56
  %86 = load i32, i32* @DP_MAX_PORTS, align 4
  %87 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %88 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  br label %90

90:                                               ; preds = %85, %75
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @OVS_KEY_ATTR_SKB_MARK, align 4
  %93 = shl i32 1, %92
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load i32, i32* @OVS_KEY_ATTR_SKB_MARK, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = call i8* @nla_get_u32(%struct.nlattr* %100)
  %102 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %103 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load i32, i32* @OVS_KEY_ATTR_SKB_MARK, align 4
  %106 = shl i32 1, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %96, %90
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @OVS_KEY_ATTR_TUNNEL, align 4
  %113 = shl i32 1, %112
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = load i32, i32* @OVS_KEY_ATTR_TUNNEL, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %122 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %121, i32 0, i32 4
  %123 = call i32 @ovs_ipv4_tun_from_nlattr(%struct.nlattr* %120, i32* %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

128:                                              ; preds = %116
  %129 = load i32, i32* @OVS_KEY_ATTR_TUNNEL, align 4
  %130 = shl i32 1, %129
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %128, %110
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @OVS_KEY_ATTR_ETHERNET, align 4
  %137 = shl i32 1, %136
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

143:                                              ; preds = %134
  %144 = load i32, i32* @OVS_KEY_ATTR_ETHERNET, align 4
  %145 = shl i32 1, %144
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* @OVS_KEY_ATTR_ETHERNET, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %150
  %152 = load %struct.nlattr*, %struct.nlattr** %151, align 8
  %153 = call i8* @nla_data(%struct.nlattr* %152)
  %154 = bitcast i8* %153 to %struct.ovs_key_ethernet*
  store %struct.ovs_key_ethernet* %154, %struct.ovs_key_ethernet** %10, align 8
  %155 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %156 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.ovs_key_ethernet*, %struct.ovs_key_ethernet** %10, align 8
  %160 = getelementptr inbounds %struct.ovs_key_ethernet, %struct.ovs_key_ethernet* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ETH_ALEN, align 4
  %163 = call i32 @memcpy(i32* %158, i32 %161, i32 %162)
  %164 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %165 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.ovs_key_ethernet*, %struct.ovs_key_ethernet** %10, align 8
  %169 = getelementptr inbounds %struct.ovs_key_ethernet, %struct.ovs_key_ethernet* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @ETH_ALEN, align 4
  %172 = call i32 @memcpy(i32* %167, i32 %170, i32 %171)
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %175 = shl i32 1, %174
  %176 = and i32 %173, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %250

178:                                              ; preds = %143
  %179 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %180
  %182 = load %struct.nlattr*, %struct.nlattr** %181, align 8
  %183 = call i32 @nla_get_be16(%struct.nlattr* %182)
  %184 = load i32, i32* @ETH_P_8021Q, align 4
  %185 = call i32 @htons(i32 %184)
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %250

187:                                              ; preds = %178
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @OVS_KEY_ATTR_VLAN, align 4
  %190 = shl i32 1, %189
  %191 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %192 = shl i32 1, %191
  %193 = or i32 %190, %192
  %194 = load i32, i32* @OVS_KEY_ATTR_ENCAP, align 4
  %195 = shl i32 1, %194
  %196 = or i32 %193, %195
  %197 = icmp ne i32 %188, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %187
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

201:                                              ; preds = %187
  %202 = load i32, i32* @OVS_KEY_ATTR_ENCAP, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %203
  %205 = load %struct.nlattr*, %struct.nlattr** %204, align 8
  store %struct.nlattr* %205, %struct.nlattr** %16, align 8
  %206 = load i32, i32* @OVS_KEY_ATTR_VLAN, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %207
  %209 = load %struct.nlattr*, %struct.nlattr** %208, align 8
  %210 = call i32 @nla_get_be16(%struct.nlattr* %209)
  store i32 %210, i32* %17, align 4
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* @VLAN_TAG_PRESENT, align 4
  %213 = call i32 @htons(i32 %212)
  %214 = and i32 %211, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %201
  %217 = load i32, i32* %17, align 4
  %218 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %219 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 8
  %221 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %222 = call i32 @parse_flow_nlattrs(%struct.nlattr* %221, %struct.nlattr** %25, i32* %12)
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %216
  %226 = load i32, i32* %13, align 4
  store i32 %226, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

227:                                              ; preds = %216
  br label %249

228:                                              ; preds = %201
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %246, label %231

231:                                              ; preds = %228
  %232 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %233 = call i64 @nla_len(%struct.nlattr* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

238:                                              ; preds = %231
  %239 = load i32, i32* @ETH_P_8021Q, align 4
  %240 = call i32 @htons(i32 %239)
  %241 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %242 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 1
  store i32 %240, i32* %243, align 4
  %244 = load i32, i32* %11, align 4
  %245 = load i32*, i32** %6, align 8
  store i32 %244, i32* %245, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

246:                                              ; preds = %228
  %247 = load i32, i32* @EINVAL, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

249:                                              ; preds = %227
  br label %250

250:                                              ; preds = %249, %178, %143
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %253 = shl i32 1, %252
  %254 = and i32 %251, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %280

256:                                              ; preds = %250
  %257 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %258
  %260 = load %struct.nlattr*, %struct.nlattr** %259, align 8
  %261 = call i32 @nla_get_be16(%struct.nlattr* %260)
  %262 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %263 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 1
  store i32 %261, i32* %264, align 4
  %265 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %266 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @ntohs(i32 %268)
  %270 = icmp slt i32 %269, 1536
  br i1 %270, label %271, label %274

271:                                              ; preds = %256
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

274:                                              ; preds = %256
  %275 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %276 = shl i32 1, %275
  %277 = xor i32 %276, -1
  %278 = load i32, i32* %12, align 4
  %279 = and i32 %278, %277
  store i32 %279, i32* %12, align 4
  br label %286

280:                                              ; preds = %250
  %281 = load i32, i32* @ETH_P_802_2, align 4
  %282 = call i32 @htons(i32 %281)
  %283 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %284 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 1
  store i32 %282, i32* %285, align 4
  br label %286

286:                                              ; preds = %280, %274
  %287 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %288 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @ETH_P_IP, align 4
  %292 = call i32 @htons(i32 %291)
  %293 = icmp eq i32 %290, %292
  br i1 %293, label %294, label %379

294:                                              ; preds = %286
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* @OVS_KEY_ATTR_IPV4, align 4
  %297 = shl i32 1, %296
  %298 = and i32 %295, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %294
  %301 = load i32, i32* @EINVAL, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

303:                                              ; preds = %294
  %304 = load i32, i32* @OVS_KEY_ATTR_IPV4, align 4
  %305 = shl i32 1, %304
  %306 = xor i32 %305, -1
  %307 = load i32, i32* %12, align 4
  %308 = and i32 %307, %306
  store i32 %308, i32* %12, align 4
  %309 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ipv4, i32 0, i32 1), align 4
  %310 = call i32 @SW_FLOW_KEY_OFFSET(i32 %309)
  store i32 %310, i32* %11, align 4
  %311 = load i32, i32* @OVS_KEY_ATTR_IPV4, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %312
  %314 = load %struct.nlattr*, %struct.nlattr** %313, align 8
  %315 = call i8* @nla_data(%struct.nlattr* %314)
  %316 = bitcast i8* %315 to %struct.ovs_key_ipv4*
  store %struct.ovs_key_ipv4* %316, %struct.ovs_key_ipv4** %18, align 8
  %317 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %18, align 8
  %318 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @OVS_FRAG_TYPE_MAX, align 8
  %321 = icmp sgt i64 %319, %320
  br i1 %321, label %322, label %325

322:                                              ; preds = %303
  %323 = load i32, i32* @EINVAL, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

325:                                              ; preds = %303
  %326 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %18, align 8
  %327 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %330 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 0
  store i32 %328, i32* %331, align 8
  %332 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %18, align 8
  %333 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %336 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 3
  store i32 %334, i32* %337, align 4
  %338 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %18, align 8
  %339 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %342 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 2
  store i32 %340, i32* %343, align 8
  %344 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %18, align 8
  %345 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %348 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 1
  store i64 %346, i64* %349, align 8
  %350 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %18, align 8
  %351 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %354 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 1
  store i32 %352, i32* %356, align 4
  %357 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %18, align 8
  %358 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %361 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 0
  store i32 %359, i32* %363, align 8
  %364 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %365 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @OVS_FRAG_TYPE_LATER, align 8
  %369 = icmp ne i64 %367, %368
  br i1 %369, label %370, label %378

370:                                              ; preds = %325
  %371 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %372 = call i32 @ipv4_flow_from_nlattrs(%struct.sw_flow_key* %371, i32* %11, %struct.nlattr** %25, i32* %12)
  store i32 %372, i32* %13, align 4
  %373 = load i32, i32* %13, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = load i32, i32* %13, align 4
  store i32 %376, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

377:                                              ; preds = %370
  br label %378

378:                                              ; preds = %377, %325
  br label %572

379:                                              ; preds = %286
  %380 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %381 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @ETH_P_IPV6, align 4
  %385 = call i32 @htons(i32 %384)
  %386 = icmp eq i32 %383, %385
  br i1 %386, label %387, label %480

387:                                              ; preds = %379
  %388 = load i32, i32* %12, align 4
  %389 = load i32, i32* @OVS_KEY_ATTR_IPV6, align 4
  %390 = shl i32 1, %389
  %391 = and i32 %388, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %396, label %393

393:                                              ; preds = %387
  %394 = load i32, i32* @EINVAL, align 4
  %395 = sub nsw i32 0, %394
  store i32 %395, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

396:                                              ; preds = %387
  %397 = load i32, i32* @OVS_KEY_ATTR_IPV6, align 4
  %398 = shl i32 1, %397
  %399 = xor i32 %398, -1
  %400 = load i32, i32* %12, align 4
  %401 = and i32 %400, %399
  store i32 %401, i32* %12, align 4
  %402 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ipv6, i32 0, i32 0), align 4
  %403 = call i32 @SW_FLOW_KEY_OFFSET(i32 %402)
  store i32 %403, i32* %11, align 4
  %404 = load i32, i32* @OVS_KEY_ATTR_IPV6, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %405
  %407 = load %struct.nlattr*, %struct.nlattr** %406, align 8
  %408 = call i8* @nla_data(%struct.nlattr* %407)
  %409 = bitcast i8* %408 to %struct.ovs_key_ipv6*
  store %struct.ovs_key_ipv6* %409, %struct.ovs_key_ipv6** %19, align 8
  %410 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %19, align 8
  %411 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @OVS_FRAG_TYPE_MAX, align 8
  %414 = icmp sgt i64 %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %396
  %416 = load i32, i32* @EINVAL, align 4
  %417 = sub nsw i32 0, %416
  store i32 %417, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

418:                                              ; preds = %396
  %419 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %19, align 8
  %420 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %419, i32 0, i32 6
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %423 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %422, i32 0, i32 3
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 1
  store i32 %421, i32* %424, align 8
  %425 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %19, align 8
  %426 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %429 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %429, i32 0, i32 0
  store i32 %427, i32* %430, align 8
  %431 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %19, align 8
  %432 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %431, i32 0, i32 5
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %435 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %435, i32 0, i32 3
  store i32 %433, i32* %436, align 4
  %437 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %19, align 8
  %438 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %441 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %441, i32 0, i32 2
  store i32 %439, i32* %442, align 8
  %443 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %19, align 8
  %444 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %447 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 1
  store i64 %445, i64* %448, align 8
  %449 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %450 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %449, i32 0, i32 3
  %451 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 1
  %453 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %19, align 8
  %454 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 8
  %456 = call i32 @memcpy(i32* %452, i32 %455, i32 4)
  %457 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %458 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %457, i32 0, i32 3
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %459, i32 0, i32 0
  %461 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %19, align 8
  %462 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @memcpy(i32* %460, i32 %463, i32 4)
  %465 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %466 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @OVS_FRAG_TYPE_LATER, align 8
  %470 = icmp ne i64 %468, %469
  br i1 %470, label %471, label %479

471:                                              ; preds = %418
  %472 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %473 = call i32 @ipv6_flow_from_nlattrs(%struct.sw_flow_key* %472, i32* %11, %struct.nlattr** %25, i32* %12)
  store i32 %473, i32* %13, align 4
  %474 = load i32, i32* %13, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %471
  %477 = load i32, i32* %13, align 4
  store i32 %477, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

478:                                              ; preds = %471
  br label %479

479:                                              ; preds = %478, %418
  br label %571

480:                                              ; preds = %379
  %481 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %482 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %481, i32 0, i32 2
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* @ETH_P_ARP, align 4
  %486 = call i32 @htons(i32 %485)
  %487 = icmp eq i32 %484, %486
  br i1 %487, label %496, label %488

488:                                              ; preds = %480
  %489 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %490 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %489, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @ETH_P_RARP, align 4
  %494 = call i32 @htons(i32 %493)
  %495 = icmp eq i32 %492, %494
  br i1 %495, label %496, label %570

496:                                              ; preds = %488, %480
  %497 = load i32, i32* %12, align 4
  %498 = load i32, i32* @OVS_KEY_ATTR_ARP, align 4
  %499 = shl i32 1, %498
  %500 = and i32 %497, %499
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %496
  %503 = load i32, i32* @EINVAL, align 4
  %504 = sub nsw i32 0, %503
  store i32 %504, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

505:                                              ; preds = %496
  %506 = load i32, i32* @OVS_KEY_ATTR_ARP, align 4
  %507 = shl i32 1, %506
  %508 = xor i32 %507, -1
  %509 = load i32, i32* %12, align 4
  %510 = and i32 %509, %508
  store i32 %510, i32* %12, align 4
  %511 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ipv4, i32 0, i32 0), align 4
  %512 = call i32 @SW_FLOW_KEY_OFFSET(i32 %511)
  store i32 %512, i32* %11, align 4
  %513 = load i32, i32* @OVS_KEY_ATTR_ARP, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %514
  %516 = load %struct.nlattr*, %struct.nlattr** %515, align 8
  %517 = call i8* @nla_data(%struct.nlattr* %516)
  %518 = bitcast i8* %517 to %struct.ovs_key_arp*
  store %struct.ovs_key_arp* %518, %struct.ovs_key_arp** %20, align 8
  %519 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %20, align 8
  %520 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %519, i32 0, i32 4
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %523 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %524, i32 0, i32 1
  store i32 %521, i32* %525, align 4
  %526 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %20, align 8
  %527 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %526, i32 0, i32 3
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %530 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %529, i32 0, i32 0
  %531 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %531, i32 0, i32 0
  store i32 %528, i32* %532, align 8
  %533 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %20, align 8
  %534 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @htons(i32 65280)
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %542

539:                                              ; preds = %505
  %540 = load i32, i32* @EINVAL, align 4
  %541 = sub nsw i32 0, %540
  store i32 %541, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

542:                                              ; preds = %505
  %543 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %20, align 8
  %544 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 4
  %546 = call i32 @ntohs(i32 %545)
  %547 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %548 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %548, i32 0, i32 0
  store i32 %546, i32* %549, align 8
  %550 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %551 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %552, i32 0, i32 1
  %554 = load i32*, i32** %553, align 8
  %555 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %20, align 8
  %556 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 4
  %558 = load i32, i32* @ETH_ALEN, align 4
  %559 = call i32 @memcpy(i32* %554, i32 %557, i32 %558)
  %560 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %561 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %562, i32 0, i32 0
  %564 = load i32*, i32** %563, align 8
  %565 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %20, align 8
  %566 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* @ETH_ALEN, align 4
  %569 = call i32 @memcpy(i32* %564, i32 %567, i32 %568)
  br label %570

570:                                              ; preds = %542, %488
  br label %571

571:                                              ; preds = %570, %479
  br label %572

572:                                              ; preds = %571, %378
  %573 = load i32, i32* %12, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %578

575:                                              ; preds = %572
  %576 = load i32, i32* @EINVAL, align 4
  %577 = sub nsw i32 0, %576
  store i32 %577, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

578:                                              ; preds = %572
  %579 = load i32, i32* %11, align 4
  %580 = load i32*, i32** %6, align 8
  store i32 %579, i32* %580, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %581

581:                                              ; preds = %578, %575, %539, %502, %476, %415, %393, %375, %322, %300, %271, %246, %238, %235, %225, %198, %140, %126, %72, %34
  %582 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %582)
  %583 = load i32, i32* %4, align 4
  ret i32 %583
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.sw_flow_key*, i32, i32) #2

declare dso_local i32 @SW_FLOW_KEY_OFFSET(i32) #2

declare dso_local i32 @parse_flow_nlattrs(%struct.nlattr*, %struct.nlattr**, i32*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @ovs_ipv4_tun_from_nlattr(%struct.nlattr*, i32*) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i64 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @ipv4_flow_from_nlattrs(%struct.sw_flow_key*, i32*, %struct.nlattr**, i32*) #2

declare dso_local i32 @ipv6_flow_from_nlattrs(%struct.sw_flow_key*, i32*, %struct.nlattr**, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
