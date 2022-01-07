; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.iphdr = type { i64, i32, i32, i32, i32 }
%struct.ip_tunnel = type { i64, i64, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.flowi = type { i32, i32 }
%struct.rtable = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.net_device* }
%struct.TYPE_11__ = type { %struct.neighbour* }
%struct.neighbour = type { i32 }
%struct.ipv6hdr = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IPTUNNEL_ERR_TIMEO = common dso_local global i64 0, align 8
@RTAX_HOPLIMIT = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_COMPATv4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_tunnel_xmit(%struct.sk_buff* %0, %struct.net_device* %1, %struct.iphdr* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_tunnel*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.flowi, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtable*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.iphdr* %2, %struct.iphdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %19)
  store %struct.ip_tunnel* %20, %struct.ip_tunnel** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %25 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = inttoptr i64 %27 to %struct.iphdr*
  store %struct.iphdr* %28, %struct.iphdr** %10, align 8
  %29 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %17, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_11__* @skb_dst(%struct.sk_buff* %35)
  %37 = icmp eq %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %293

44:                                               ; preds = %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ETH_P_IP, align 4
  %49 = call i32 @htons(i32 %48)
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %52)
  store %struct.rtable* %53, %struct.rtable** %15, align 8
  %54 = load %struct.rtable*, %struct.rtable** %15, align 8
  %55 = getelementptr inbounds %struct.rtable, %struct.rtable* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.rtable*, %struct.rtable** %15, align 8
  %60 = getelementptr inbounds %struct.rtable, %struct.rtable* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %17, align 8
  br label %66

62:                                               ; preds = %51
  %63 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %17, align 8
  br label %66

66:                                               ; preds = %62, %58
  br label %68

67:                                               ; preds = %44
  br label %293

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %4
  %70 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %71 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %69
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, -2
  store i32 %78, i32* %12, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ETH_P_IP, align 4
  %83 = call i32 @htons(i32 %82)
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %12, align 4
  br label %101

89:                                               ; preds = %76
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ETH_P_IPV6, align 4
  %94 = call i32 @htons(i32 %93)
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %98 = bitcast %struct.iphdr* %97 to %struct.ipv6hdr*
  %99 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %98)
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %89
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101, %69
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = call i32 @dev_net(%struct.net_device* %103)
  %105 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %106 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %112 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %115 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @RT_TOS(i32 %118)
  %120 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %121 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call %struct.rtable* @ip_route_output_tunnel(i32 %104, %struct.flowi* %11, i32 %109, i64 %110, i32 %113, i32 %117, i32 %119, i32 %123)
  store %struct.rtable* %124, %struct.rtable** %15, align 8
  %125 = load %struct.rtable*, %struct.rtable** %15, align 8
  %126 = call i64 @IS_ERR(%struct.rtable* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %102
  %129 = load %struct.net_device*, %struct.net_device** %6, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %293

134:                                              ; preds = %102
  %135 = load %struct.rtable*, %struct.rtable** %15, align 8
  %136 = getelementptr inbounds %struct.rtable, %struct.rtable* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load %struct.net_device*, %struct.net_device** %138, align 8
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = icmp eq %struct.net_device* %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %134
  %143 = load %struct.rtable*, %struct.rtable** %15, align 8
  %144 = call i32 @ip_rt_put(%struct.rtable* %143)
  %145 = load %struct.net_device*, %struct.net_device** %6, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %293

150:                                              ; preds = %134
  %151 = load %struct.net_device*, %struct.net_device** %6, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = load %struct.rtable*, %struct.rtable** %15, align 8
  %154 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %155 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @tnl_update_pmtu(%struct.net_device* %151, %struct.sk_buff* %152, %struct.rtable* %153, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load %struct.rtable*, %struct.rtable** %15, align 8
  %161 = call i32 @ip_rt_put(%struct.rtable* %160)
  br label %293

162:                                              ; preds = %150
  %163 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %164 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %162
  %168 = load i32, i32* @jiffies, align 4
  %169 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %170 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @IPTUNNEL_ERR_TIMEO, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i64 @time_before(i32 %168, i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %167
  %177 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %178 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, -1
  store i64 %180, i64* %178, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %182 = call i32 @dst_link_failure(%struct.sk_buff* %181)
  br label %186

183:                                              ; preds = %167
  %184 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %185 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %184, i32 0, i32 0
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %183, %176
  br label %187

187:                                              ; preds = %186, %162
  %188 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %189 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %187
  %194 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %195 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @ETH_P_IP, align 4
  %198 = call i32 @htons(i32 %197)
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %202 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %13, align 4
  br label %210

204:                                              ; preds = %193
  %205 = load %struct.rtable*, %struct.rtable** %15, align 8
  %206 = getelementptr inbounds %struct.rtable, %struct.rtable* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* @RTAX_HOPLIMIT, align 4
  %209 = call i32 @dst_metric(%struct.TYPE_14__* %207, i32 %208)
  store i32 %209, i32* %13, align 4
  br label %210

210:                                              ; preds = %204, %200
  br label %211

211:                                              ; preds = %210, %187
  %212 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %213 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %14, align 4
  %215 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %216 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @ETH_P_IP, align 4
  %219 = call i32 @htons(i32 %218)
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %211
  %222 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %223 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @IP_DF, align 4
  %226 = call i32 @htons(i32 %225)
  %227 = and i32 %224, %226
  %228 = load i32, i32* %14, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %14, align 4
  br label %230

230:                                              ; preds = %221, %211
  %231 = load %struct.rtable*, %struct.rtable** %15, align 8
  %232 = getelementptr inbounds %struct.rtable, %struct.rtable* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  %235 = load %struct.net_device*, %struct.net_device** %234, align 8
  %236 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %235)
  %237 = sext i32 %236 to i64
  %238 = add i64 %237, 24
  %239 = load %struct.rtable*, %struct.rtable** %15, align 8
  %240 = getelementptr inbounds %struct.rtable, %struct.rtable* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = add i64 %238, %244
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %16, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load %struct.net_device*, %struct.net_device** %6, align 8
  %249 = getelementptr inbounds %struct.net_device, %struct.net_device* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp ugt i32 %247, %250
  br i1 %251, label %252, label %271

252:                                              ; preds = %230
  %253 = load i32, i32* %16, align 4
  %254 = load %struct.net_device*, %struct.net_device** %6, align 8
  %255 = getelementptr inbounds %struct.net_device, %struct.net_device* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 4
  %256 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %257 = load %struct.net_device*, %struct.net_device** %6, align 8
  %258 = getelementptr inbounds %struct.net_device, %struct.net_device* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @skb_cow_head(%struct.sk_buff* %256, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %252
  %263 = load %struct.net_device*, %struct.net_device** %6, align 8
  %264 = getelementptr inbounds %struct.net_device, %struct.net_device* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  %268 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %269 = call i32 @dev_kfree_skb(%struct.sk_buff* %268)
  br label %301

270:                                              ; preds = %252
  br label %271

271:                                              ; preds = %270, %230
  %272 = load %struct.net_device*, %struct.net_device** %6, align 8
  %273 = call i32 @dev_net(%struct.net_device* %272)
  %274 = load %struct.rtable*, %struct.rtable** %15, align 8
  %275 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %276 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* %12, align 4
  %282 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %284 = call i32 @ip_tunnel_ecn_encap(i32 %281, %struct.iphdr* %282, %struct.sk_buff* %283)
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %288 = call i32 @iptunnel_xmit(i32 %273, %struct.rtable* %274, %struct.sk_buff* %275, i32 %277, i32 %279, i32 %280, i32 %284, i32 %285, i32 %286, %struct.iphdr* %287)
  store i32 %288, i32* %18, align 4
  %289 = load i32, i32* %18, align 4
  %290 = load %struct.net_device*, %struct.net_device** %6, align 8
  %291 = getelementptr inbounds %struct.net_device, %struct.net_device* %290, i32 0, i32 1
  %292 = call i32 @iptunnel_xmit_stats(i32 %289, %struct.TYPE_13__* %291)
  br label %301

293:                                              ; preds = %159, %142, %128, %67, %38
  %294 = load %struct.net_device*, %struct.net_device** %6, align 8
  %295 = getelementptr inbounds %struct.net_device, %struct.net_device* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 4
  %299 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %300 = call i32 @dev_kfree_skb(%struct.sk_buff* %299)
  br label %301

301:                                              ; preds = %293, %271, %262
  ret void
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_11__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local %struct.rtable* @ip_route_output_tunnel(i32, %struct.flowi*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i64 @tnl_update_pmtu(%struct.net_device*, %struct.sk_buff*, %struct.rtable*, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @dst_link_failure(%struct.sk_buff*) #1

declare dso_local i32 @dst_metric(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @iptunnel_xmit(i32, %struct.rtable*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, %struct.iphdr*) #1

declare dso_local i32 @ip_tunnel_ecn_encap(i32, %struct.iphdr*, %struct.sk_buff*) #1

declare dso_local i32 @iptunnel_xmit_stats(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
