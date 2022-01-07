; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_forward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.dst_entry = type { %struct.TYPE_10__*, %struct.neighbour* }
%struct.neighbour = type { i32 }
%struct.ipv6hdr = type { i32, i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.inet6_skb_parm = type { i32, i64, i64 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.rt6_info = type { i32 }

@XFRM_POLICY_FWD = common dso_local global i32 0, align 4
@IPSTATS_MIB_INDISCARDS = common dso_local global i32 0, align 4
@ICMPV6_TIME_EXCEED = common dso_local global i32 0, align 4
@ICMPV6_EXC_HOPLIMIT = common dso_local global i32 0, align 4
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@nd_tbl = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LOOPBACK = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMPV6_NOT_NEIGHBOUR = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@IPSTATS_MIB_INTOOBIGERRORS = common dso_local global i32 0, align 4
@IPSTATS_MIB_FRAGFAILS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTFORWDATAGRAMS = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@ip6_forward_finish = common dso_local global i32 0, align 4
@IPSTATS_MIB_INADDRERRORS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_forward(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca %struct.inet6_skb_parm*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.rt6_info*, align 8
  %12 = alloca %struct.neighbour*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %14)
  store %struct.dst_entry* %15, %struct.dst_entry** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %16)
  store %struct.ipv6hdr* %17, %struct.ipv6hdr** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %18)
  store %struct.inet6_skb_parm* %19, %struct.inet6_skb_parm** %6, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %21 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = call %struct.net* @dev_net(%struct.TYPE_10__* %22)
  store %struct.net* %23, %struct.net** %7, align 8
  %24 = load %struct.net*, %struct.net** %7, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %329

32:                                               ; preds = %1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i64 @skb_warn_if_lro(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %335

37:                                               ; preds = %32
  %38 = load i32, i32* @XFRM_POLICY_FWD, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call i32 @xfrm6_policy_check(i32* null, i32 %38, %struct.sk_buff* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.net*, %struct.net** %7, align 8
  %44 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %45 = call i32 @ip6_dst_idev(%struct.dst_entry* %44)
  %46 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %47 = call i32 @IP6_INC_STATS(%struct.net* %43, i32 %45, i32 %46)
  br label %335

48:                                               ; preds = %37
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @skb_forward_csum(%struct.sk_buff* %49)
  %51 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %6, align 8
  %52 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call i32* @skb_network_header(%struct.sk_buff* %56)
  %58 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %6, align 8
  %59 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  store i32* %62, i32** %8, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = call i64 @ip6_call_ra_chain(%struct.sk_buff* %63, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %340

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %78 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sle i32 %79, 1
  br i1 %80, label %81, label %103

81:                                               ; preds = %76
  %82 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %83 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %86, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = load i32, i32* @ICMPV6_TIME_EXCEED, align 4
  %89 = load i32, i32* @ICMPV6_EXC_HOPLIMIT, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = call i32 @icmpv6_send(%struct.sk_buff* %87, i32 %88, i32 %89, i64 0, %struct.TYPE_10__* %92)
  %94 = load %struct.net*, %struct.net** %7, align 8
  %95 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %96 = call i32 @ip6_dst_idev(%struct.dst_entry* %95)
  %97 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %98 = call i32 @IP6_INC_STATS_BH(%struct.net* %94, i32 %96, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %100 = call i32 @kfree_skb(%struct.sk_buff* %99)
  %101 = load i32, i32* @ETIMEDOUT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %340

103:                                              ; preds = %76
  %104 = load %struct.net*, %struct.net** %7, align 8
  %105 = getelementptr inbounds %struct.net, %struct.net* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %139

111:                                              ; preds = %103
  %112 = load %struct.net*, %struct.net** %7, align 8
  %113 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %114 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %113, i32 0, i32 2
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = call i64 @pneigh_lookup(i32* @nd_tbl, %struct.net* %112, %struct.in6_addr* %114, %struct.TYPE_10__* %117, i32 0)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %111
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = call i32 @ip6_forward_proxy_check(%struct.sk_buff* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %127 = call i32 @ip6_input(%struct.sk_buff* %126)
  store i32 %127, i32* %2, align 4
  br label %340

128:                                              ; preds = %120
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.net*, %struct.net** %7, align 8
  %133 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %134 = call i32 @ip6_dst_idev(%struct.dst_entry* %133)
  %135 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %136 = call i32 @IP6_INC_STATS(%struct.net* %132, i32 %134, i32 %135)
  br label %335

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138, %111, %103
  %140 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %141 = call i32 @xfrm6_route_forward(%struct.sk_buff* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %139
  %144 = load %struct.net*, %struct.net** %7, align 8
  %145 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %146 = call i32 @ip6_dst_idev(%struct.dst_entry* %145)
  %147 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %148 = call i32 @IP6_INC_STATS(%struct.net* %144, i32 %146, i32 %147)
  br label %335

149:                                              ; preds = %139
  %150 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %151 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %150)
  store %struct.dst_entry* %151, %struct.dst_entry** %4, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %156 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %155, i32 0, i32 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = icmp eq %struct.TYPE_10__* %154, %157
  br i1 %158, label %159, label %204

159:                                              ; preds = %149
  %160 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %161 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %160, i32 0, i32 1
  %162 = load %struct.neighbour*, %struct.neighbour** %161, align 8
  %163 = icmp ne %struct.neighbour* %162, null
  br i1 %163, label %164, label %204

164:                                              ; preds = %159
  %165 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %6, align 8
  %166 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %204

169:                                              ; preds = %164
  %170 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %171 = call i32 @skb_sec_path(%struct.sk_buff* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %204, label %173

173:                                              ; preds = %169
  store %struct.in6_addr* null, %struct.in6_addr** %10, align 8
  %174 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %175 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %174, i32 0, i32 1
  %176 = load %struct.neighbour*, %struct.neighbour** %175, align 8
  store %struct.neighbour* %176, %struct.neighbour** %12, align 8
  %177 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %178 = bitcast %struct.dst_entry* %177 to %struct.rt6_info*
  store %struct.rt6_info* %178, %struct.rt6_info** %11, align 8
  %179 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %180 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @RTF_GATEWAY, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %173
  %186 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %187 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %186, i32 0, i32 0
  %188 = bitcast i32* %187 to %struct.in6_addr*
  store %struct.in6_addr* %188, %struct.in6_addr** %10, align 8
  br label %192

189:                                              ; preds = %173
  %190 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %191 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %190, i32 0, i32 2
  store %struct.in6_addr* %191, %struct.in6_addr** %10, align 8
  br label %192

192:                                              ; preds = %189, %185
  %193 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %194 = load i32, i32* @HZ, align 4
  %195 = mul nsw i32 1, %194
  %196 = call i64 @xrlim_allow(%struct.dst_entry* %193, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %192
  %199 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %200 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %201 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %202 = call i32 @ndisc_send_redirect(%struct.sk_buff* %199, %struct.neighbour* %200, %struct.in6_addr* %201)
  br label %203

203:                                              ; preds = %198, %192
  br label %233

204:                                              ; preds = %169, %164, %159, %149
  %205 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %206 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %205, i32 0, i32 1
  %207 = call i32 @ipv6_addr_type(i32* %206)
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %218, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %214 = load i32, i32* @IPV6_ADDR_LOOPBACK, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %212, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %211, %204
  br label %329

219:                                              ; preds = %211
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %219
  %225 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %226 = load i32, i32* @ICMPV6_DEST_UNREACH, align 4
  %227 = load i32, i32* @ICMPV6_NOT_NEIGHBOUR, align 4
  %228 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 1
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = call i32 @icmpv6_send(%struct.sk_buff* %225, i32 %226, i32 %227, i64 0, %struct.TYPE_10__* %230)
  br label %329

232:                                              ; preds = %219
  br label %233

233:                                              ; preds = %232, %203
  %234 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %249, label %238

238:                                              ; preds = %233
  %239 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %243 = call i64 @dst_mtu(%struct.dst_entry* %242)
  %244 = icmp sgt i64 %241, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %247 = call i32 @skb_is_gso(%struct.sk_buff* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %263

249:                                              ; preds = %245, %238, %233
  %250 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %251 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %250)
  %252 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %291

255:                                              ; preds = %249
  %256 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %257 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %256)
  %258 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %261 = call i64 @dst_mtu(%struct.dst_entry* %260)
  %262 = icmp sgt i64 %259, %261
  br i1 %262, label %263, label %291

263:                                              ; preds = %255, %245
  %264 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %265 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %264, i32 0, i32 0
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %268 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %267, i32 0, i32 1
  store %struct.TYPE_10__* %266, %struct.TYPE_10__** %268, align 8
  %269 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %270 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %271 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %272 = call i64 @dst_mtu(%struct.dst_entry* %271)
  %273 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %274 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %273, i32 0, i32 1
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = call i32 @icmpv6_send(%struct.sk_buff* %269, i32 %270, i32 0, i64 %272, %struct.TYPE_10__* %275)
  %277 = load %struct.net*, %struct.net** %7, align 8
  %278 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %279 = call i32 @ip6_dst_idev(%struct.dst_entry* %278)
  %280 = load i32, i32* @IPSTATS_MIB_INTOOBIGERRORS, align 4
  %281 = call i32 @IP6_INC_STATS_BH(%struct.net* %277, i32 %279, i32 %280)
  %282 = load %struct.net*, %struct.net** %7, align 8
  %283 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %284 = call i32 @ip6_dst_idev(%struct.dst_entry* %283)
  %285 = load i32, i32* @IPSTATS_MIB_FRAGFAILS, align 4
  %286 = call i32 @IP6_INC_STATS_BH(%struct.net* %282, i32 %284, i32 %285)
  %287 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %288 = call i32 @kfree_skb(%struct.sk_buff* %287)
  %289 = load i32, i32* @EMSGSIZE, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %2, align 4
  br label %340

291:                                              ; preds = %255, %249
  %292 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %293 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %294 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %293, i32 0, i32 0
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i64 @skb_cow(%struct.sk_buff* %292, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %291
  %301 = load %struct.net*, %struct.net** %7, align 8
  %302 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %303 = call i32 @ip6_dst_idev(%struct.dst_entry* %302)
  %304 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %305 = call i32 @IP6_INC_STATS(%struct.net* %301, i32 %303, i32 %304)
  br label %335

306:                                              ; preds = %291
  %307 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %308 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %307)
  store %struct.ipv6hdr* %308, %struct.ipv6hdr** %5, align 8
  %309 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %310 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, -1
  store i32 %312, i32* %310, align 4
  %313 = load %struct.net*, %struct.net** %7, align 8
  %314 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %315 = call i32 @ip6_dst_idev(%struct.dst_entry* %314)
  %316 = load i32, i32* @IPSTATS_MIB_OUTFORWDATAGRAMS, align 4
  %317 = call i32 @IP6_INC_STATS_BH(%struct.net* %313, i32 %315, i32 %316)
  %318 = load i32, i32* @PF_INET6, align 4
  %319 = load i32, i32* @NF_INET_FORWARD, align 4
  %320 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %321 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %322 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %321, i32 0, i32 1
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %322, align 8
  %324 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %325 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %324, i32 0, i32 0
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %325, align 8
  %327 = load i32, i32* @ip6_forward_finish, align 4
  %328 = call i32 @NF_HOOK(i32 %318, i32 %319, %struct.sk_buff* %320, %struct.TYPE_10__* %323, %struct.TYPE_10__* %326, i32 %327)
  store i32 %328, i32* %2, align 4
  br label %340

329:                                              ; preds = %224, %218, %31
  %330 = load %struct.net*, %struct.net** %7, align 8
  %331 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %332 = call i32 @ip6_dst_idev(%struct.dst_entry* %331)
  %333 = load i32, i32* @IPSTATS_MIB_INADDRERRORS, align 4
  %334 = call i32 @IP6_INC_STATS_BH(%struct.net* %330, i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %329, %300, %143, %131, %42, %36
  %336 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %337 = call i32 @kfree_skb(%struct.sk_buff* %336)
  %338 = load i32, i32* @EINVAL, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %2, align 4
  br label %340

340:                                              ; preds = %335, %306, %263, %125, %81, %74
  %341 = load i32, i32* %2, align 4
  ret i32 %341
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_10__*) #1

declare dso_local i64 @skb_warn_if_lro(%struct.sk_buff*) #1

declare dso_local i32 @xfrm6_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @skb_forward_csum(%struct.sk_buff*) #1

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @ip6_call_ra_chain(%struct.sk_buff*, i32) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @IP6_INC_STATS_BH(%struct.net*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @pneigh_lookup(i32*, %struct.net*, %struct.in6_addr*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ip6_forward_proxy_check(%struct.sk_buff*) #1

declare dso_local i32 @ip6_input(%struct.sk_buff*) #1

declare dso_local i32 @xfrm6_route_forward(%struct.sk_buff*) #1

declare dso_local i32 @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i64 @xrlim_allow(%struct.dst_entry*, i32) #1

declare dso_local i32 @ndisc_send_redirect(%struct.sk_buff*, %struct.neighbour*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
