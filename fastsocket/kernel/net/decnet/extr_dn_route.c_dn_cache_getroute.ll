; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_cache_getroute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_cache_getroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32, i32 }
%struct.net_device = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.rtattr = type { i32 }
%struct.rtmsg = type { i32 }
%struct.dn_route = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dn_skb_cb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.flowi = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dst_entry = type { i32 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@DNPROTO_NSP = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTA_IIF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ETH_P_DNA_RT = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i32 0, align 4
@RTM_F_NOTIFY = common dso_local global i32 0, align 4
@RTCF_NOTIFY = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @dn_cache_getroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_cache_getroute(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.rtattr**, align 8
  %10 = alloca %struct.rtmsg*, align 8
  %11 = alloca %struct.dn_route*, align 8
  %12 = alloca %struct.dn_skb_cb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.flowi, align 4
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__, align 4
  %19 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.rtattr**
  store %struct.rtattr** %25, %struct.rtattr*** %9, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = call %struct.rtmsg* @NLMSG_DATA(%struct.nlmsghdr* %26)
  store %struct.rtmsg* %27, %struct.rtmsg** %10, align 8
  store %struct.dn_route* null, %struct.dn_route** %11, align 8
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = icmp ne %struct.net* %28, @init_net
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %262

33:                                               ; preds = %3
  %34 = call i32 @memset(%struct.flowi* %15, i32 0, i32 28)
  %35 = load i32, i32* @DNPROTO_NSP, align 4
  %36 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 6
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.sk_buff* @alloc_skb(i32 %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %14, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %41 = icmp eq %struct.sk_buff* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOBUFS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %262

45:                                               ; preds = %33
  %46 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %47 = call i32 @skb_reset_mac_header(%struct.sk_buff* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %49 = call %struct.flowi* @DN_SKB_CB(%struct.sk_buff* %48)
  %50 = bitcast %struct.flowi* %49 to %struct.dn_skb_cb*
  store %struct.dn_skb_cb* %50, %struct.dn_skb_cb** %12, align 8
  %51 = load %struct.rtattr**, %struct.rtattr*** %9, align 8
  %52 = load i32, i32* @RTA_SRC, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %51, i64 %54
  %56 = load %struct.rtattr*, %struct.rtattr** %55, align 8
  %57 = icmp ne %struct.rtattr* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 0
  %60 = load %struct.rtattr**, %struct.rtattr*** %9, align 8
  %61 = load i32, i32* @RTA_SRC, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %60, i64 %63
  %65 = load %struct.rtattr*, %struct.rtattr** %64, align 8
  %66 = call i32 @RTA_DATA(%struct.rtattr* %65)
  %67 = call i32 @memcpy(i32* %59, i32 %66, i32 2)
  br label %68

68:                                               ; preds = %58, %45
  %69 = load %struct.rtattr**, %struct.rtattr*** %9, align 8
  %70 = load i32, i32* @RTA_DST, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %69, i64 %72
  %74 = load %struct.rtattr*, %struct.rtattr** %73, align 8
  %75 = icmp ne %struct.rtattr* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 1
  %78 = load %struct.rtattr**, %struct.rtattr*** %9, align 8
  %79 = load i32, i32* @RTA_DST, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %78, i64 %81
  %83 = load %struct.rtattr*, %struct.rtattr** %82, align 8
  %84 = call i32 @RTA_DATA(%struct.rtattr* %83)
  %85 = call i32 @memcpy(i32* %77, i32 %84, i32 2)
  br label %86

86:                                               ; preds = %76, %68
  %87 = load %struct.rtattr**, %struct.rtattr*** %9, align 8
  %88 = load i32, i32* @RTA_IIF, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %87, i64 %90
  %92 = load %struct.rtattr*, %struct.rtattr** %91, align 8
  %93 = icmp ne %struct.rtattr* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 2
  %96 = load %struct.rtattr**, %struct.rtattr*** %9, align 8
  %97 = load i32, i32* @RTA_IIF, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %96, i64 %99
  %101 = load %struct.rtattr*, %struct.rtattr** %100, align 8
  %102 = call i32 @RTA_DATA(%struct.rtattr* %101)
  %103 = call i32 @memcpy(i32* %95, i32 %102, i32 4)
  br label %104

104:                                              ; preds = %94, %86
  %105 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %173

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.net_device* @dev_get_by_index(%struct.net* @init_net, i32 %110)
  store %struct.net_device* %111, %struct.net_device** %16, align 8
  %112 = icmp eq %struct.net_device* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %115 = call i32 @kfree_skb(%struct.sk_buff* %114)
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %262

118:                                              ; preds = %108
  %119 = load %struct.net_device*, %struct.net_device** %16, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = load %struct.net_device*, %struct.net_device** %16, align 8
  %125 = call i32 @dev_put(%struct.net_device* %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %127 = call i32 @kfree_skb(%struct.sk_buff* %126)
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %262

130:                                              ; preds = %118
  %131 = load i32, i32* @ETH_P_DNA_RT, align 4
  %132 = call i32 @htons(i32 %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.net_device*, %struct.net_device** %16, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  store %struct.net_device* %135, %struct.net_device** %137, align 8
  %138 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %12, align 8
  %141 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %12, align 8
  %145 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = call i32 (...) @local_bh_disable()
  %147 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %148 = call i32 @dn_route_input(%struct.sk_buff* %147)
  store i32 %148, i32* %13, align 4
  %149 = call i32 (...) @local_bh_enable()
  %150 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %12, align 8
  %151 = bitcast %struct.dn_skb_cb* %150 to %struct.flowi*
  %152 = call i32 @memset(%struct.flowi* %151, i32 0, i32 28)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %154 = call i64 @skb_dst(%struct.sk_buff* %153)
  %155 = inttoptr i64 %154 to %struct.dn_route*
  store %struct.dn_route* %155, %struct.dn_route** %11, align 8
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %172, label %158

158:                                              ; preds = %130
  %159 = load %struct.dn_route*, %struct.dn_route** %11, align 8
  %160 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 0, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %158
  %167 = load %struct.dn_route*, %struct.dn_route** %11, align 8
  %168 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %166, %158, %130
  br label %195

173:                                              ; preds = %104
  store i32 0, i32* %17, align 4
  %174 = load %struct.rtattr**, %struct.rtattr*** %9, align 8
  %175 = load i32, i32* @RTA_OIF, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %174, i64 %177
  %179 = load %struct.rtattr*, %struct.rtattr** %178, align 8
  %180 = icmp ne %struct.rtattr* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %173
  %182 = load %struct.rtattr**, %struct.rtattr*** %9, align 8
  %183 = load i32, i32* @RTA_OIF, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %182, i64 %185
  %187 = load %struct.rtattr*, %struct.rtattr** %186, align 8
  %188 = call i32 @RTA_DATA(%struct.rtattr* %187)
  %189 = call i32 @memcpy(i32* %17, i32 %188, i32 4)
  br label %190

190:                                              ; preds = %181, %173
  %191 = load i32, i32* %17, align 4
  %192 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 5
  store i32 %191, i32* %192, align 4
  %193 = bitcast %struct.dn_route** %11 to %struct.dst_entry**
  %194 = call i32 @dn_route_output_key(%struct.dst_entry** %193, %struct.flowi* %15, i32 0)
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %190, %172
  %196 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load %struct.net_device*, %struct.net_device** %197, align 8
  %199 = icmp ne %struct.net_device* %198, null
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 0
  %203 = load %struct.net_device*, %struct.net_device** %202, align 8
  %204 = call i32 @dev_put(%struct.net_device* %203)
  br label %205

205:                                              ; preds = %200, %195
  %206 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %207, align 8
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %258

211:                                              ; preds = %205
  %212 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %213 = load %struct.dn_route*, %struct.dn_route** %11, align 8
  %214 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = call i32 @skb_dst_set(%struct.sk_buff* %212, %struct.TYPE_5__* %215)
  %217 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %218 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @RTM_F_NOTIFY, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %211
  %224 = load i32, i32* @RTCF_NOTIFY, align 4
  %225 = load %struct.dn_route*, %struct.dn_route** %11, align 8
  %226 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %223, %211
  %230 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %232 = call i32 @NETLINK_CB(%struct.sk_buff* %231)
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %232, i32* %233, align 4
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %237 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @RTM_NEWROUTE, align 4
  %240 = call i32 @dn_rt_fill_info(%struct.sk_buff* %230, i32 %235, i32 %238, i32 %239, i32 0, i32 0)
  store i32 %240, i32* %13, align 4
  %241 = load i32, i32* %13, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %229
  br label %258

244:                                              ; preds = %229
  %245 = load i32, i32* %13, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load i32, i32* @EMSGSIZE, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %13, align 4
  br label %258

250:                                              ; preds = %244
  %251 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %253 = call i32 @NETLINK_CB(%struct.sk_buff* %252)
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %253, i32* %254, align 4
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @rtnl_unicast(%struct.sk_buff* %251, %struct.net* @init_net, i32 %256)
  store i32 %257, i32* %4, align 4
  br label %262

258:                                              ; preds = %247, %243, %210
  %259 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %260 = call i32 @kfree_skb(%struct.sk_buff* %259)
  %261 = load i32, i32* %13, align 4
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %258, %250, %123, %113, %42, %30
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.rtmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.flowi* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @RTA_DATA(%struct.rtattr*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @dn_route_input(%struct.sk_buff*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @dn_route_output_key(%struct.dst_entry**, %struct.flowi*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @dn_rt_fill_info(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
