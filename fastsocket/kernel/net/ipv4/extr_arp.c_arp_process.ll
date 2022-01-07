; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.net_device* }
%struct.net_device = type { i32, i8*, i32, i32 }
%struct.in_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.arphdr = type { i64, i64, i64 }
%struct.rtable = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.neighbour = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.net = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@AX25_P_IP = common dso_local global i32 0, align 4
@ARPOP_REPLY = common dso_local global i32 0, align 4
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@ARPHRD_DLCI = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@LOCALLY_ENQUEUED = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i64 0, align 8
@ARP_ACCEPT = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NUD_STALE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @arp_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_process(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.arphdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.neighbour*, align 8
  %15 = alloca %struct.net*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call %struct.in_device* @in_dev_get(%struct.net_device* %22)
  store %struct.in_device* %23, %struct.in_device** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call %struct.net* @dev_net(%struct.net_device* %27)
  store %struct.net* %28, %struct.net** %15, align 8
  %29 = load %struct.in_device*, %struct.in_device** %5, align 8
  %30 = icmp eq %struct.in_device* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %430

32:                                               ; preds = %1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call %struct.arphdr* @arp_hdr(%struct.sk_buff* %33)
  store %struct.arphdr* %34, %struct.arphdr** %6, align 8
  %35 = load i32, i32* %12, align 4
  switch i32 %35, label %36 [
    i32 132, label %52
    i32 129, label %52
    i32 131, label %52
    i32 130, label %52
    i32 133, label %73
    i32 128, label %88
  ]

36:                                               ; preds = %32
  %37 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %38 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @ETH_P_IP, align 4
  %41 = call i64 @htons(i32 %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @htons(i32 %44)
  %46 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %47 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43, %36
  br label %430

51:                                               ; preds = %43
  br label %103

52:                                               ; preds = %32, %32, %32, %32
  %53 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %54 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @htons(i32 132)
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %60 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @htons(i32 130)
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %66 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @ETH_P_IP, align 4
  %69 = call i64 @htons(i32 %68)
  %70 = icmp ne i64 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64, %58
  br label %430

72:                                               ; preds = %64
  br label %103

73:                                               ; preds = %32
  %74 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %75 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @AX25_P_IP, align 4
  %78 = call i64 @htons(i32 %77)
  %79 = icmp ne i64 %76, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %82 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @htons(i32 133)
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %73
  br label %430

87:                                               ; preds = %80
  br label %103

88:                                               ; preds = %32
  %89 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %90 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @AX25_P_IP, align 4
  %93 = call i64 @htons(i32 %92)
  %94 = icmp ne i64 %91, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %88
  %96 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %97 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @htons(i32 128)
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95, %88
  br label %430

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %87, %72, %51
  %104 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %105 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @ARPOP_REPLY, align 4
  %108 = call i64 @htons(i32 %107)
  %109 = icmp ne i64 %106, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %112 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @ARPOP_REQUEST, align 4
  %115 = call i64 @htons(i32 %114)
  %116 = icmp ne i64 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %430

118:                                              ; preds = %110, %103
  %119 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %120 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %119, i64 1
  %121 = bitcast %struct.arphdr* %120 to i8*
  store i8* %121, i8** %7, align 8
  %122 = load i8*, i8** %7, align 8
  store i8* %122, i8** %9, align 8
  %123 = load %struct.net_device*, %struct.net_device** %4, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %7, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @memcpy(i64* %10, i8* %129, i32 4)
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 4
  store i8* %132, i8** %7, align 8
  %133 = load %struct.net_device*, %struct.net_device** %4, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %7, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %7, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @memcpy(i64* %11, i8* %139, i32 4)
  %141 = load i64, i64* %11, align 8
  %142 = call i64 @ipv4_is_multicast(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %118
  %145 = load %struct.in_device*, %struct.in_device** %5, align 8
  %146 = call i32 @IN_DEV_ROUTE_LOCALNET(%struct.in_device* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* %11, align 8
  %150 = call i64 @ipv4_is_loopback(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148, %118
  br label %430

153:                                              ; preds = %148, %144
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @ARPHRD_DLCI, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %9, align 8
  br label %161

161:                                              ; preds = %157, %153
  %162 = load i64, i64* %10, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %196

164:                                              ; preds = %161
  %165 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %166 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @ARPOP_REQUEST, align 4
  %169 = call i64 @htons(i32 %168)
  %170 = icmp eq i64 %167, %169
  br i1 %170, label %171, label %195

171:                                              ; preds = %164
  %172 = load %struct.net*, %struct.net** %15, align 8
  %173 = load i64, i64* %11, align 8
  %174 = call i32 @inet_addr_type(%struct.net* %172, i64 %173)
  %175 = load i32, i32* @RTN_LOCAL, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %171
  %178 = load %struct.in_device*, %struct.in_device** %5, align 8
  %179 = load i64, i64* %10, align 8
  %180 = load i64, i64* %11, align 8
  %181 = call i32 @arp_ignore(%struct.in_device* %178, i64 %179, i64 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* @ARPOP_REPLY, align 4
  %185 = load i32, i32* @ETH_P_ARP, align 4
  %186 = load i64, i64* %10, align 8
  %187 = load %struct.net_device*, %struct.net_device** %4, align 8
  %188 = load i64, i64* %11, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = load %struct.net_device*, %struct.net_device** %4, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = call i32 @arp_send(i32 %184, i32 %185, i64 %186, %struct.net_device* %187, i64 %188, i8* %189, i32 %192, i8* %193)
  br label %195

195:                                              ; preds = %183, %177, %171, %164
  br label %430

196:                                              ; preds = %161
  %197 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %198 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* @ARPOP_REQUEST, align 4
  %201 = call i64 @htons(i32 %200)
  %202 = icmp eq i64 %199, %201
  br i1 %202, label %203, label %357

203:                                              ; preds = %196
  %204 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %205 = load i64, i64* %11, align 8
  %206 = load i64, i64* %10, align 8
  %207 = load %struct.net_device*, %struct.net_device** %4, align 8
  %208 = call i64 @ip_route_input(%struct.sk_buff* %204, i64 %205, i64 %206, i32 0, %struct.net_device* %207)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %357

210:                                              ; preds = %203
  %211 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %212 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %211)
  store %struct.rtable* %212, %struct.rtable** %8, align 8
  %213 = load %struct.rtable*, %struct.rtable** %8, align 8
  %214 = getelementptr inbounds %struct.rtable, %struct.rtable* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %13, align 4
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @RTN_LOCAL, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %268

219:                                              ; preds = %210
  store i32 0, i32* %16, align 4
  %220 = load i32, i32* %16, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %229, label %222

222:                                              ; preds = %219
  %223 = load %struct.in_device*, %struct.in_device** %5, align 8
  %224 = load i64, i64* %10, align 8
  %225 = load i64, i64* %11, align 8
  %226 = call i32 @arp_ignore(%struct.in_device* %223, i64 %224, i64 %225)
  %227 = load i32, i32* %16, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %16, align 4
  br label %229

229:                                              ; preds = %222, %219
  %230 = load i32, i32* %16, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %243, label %232

232:                                              ; preds = %229
  %233 = load %struct.in_device*, %struct.in_device** %5, align 8
  %234 = call i64 @IN_DEV_ARPFILTER(%struct.in_device* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = load i64, i64* %10, align 8
  %238 = load i64, i64* %11, align 8
  %239 = load %struct.net_device*, %struct.net_device** %4, align 8
  %240 = call i32 @arp_filter(i64 %237, i64 %238, %struct.net_device* %239)
  %241 = load i32, i32* %16, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %16, align 4
  br label %243

243:                                              ; preds = %236, %232, %229
  %244 = load i32, i32* %16, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %267, label %246

246:                                              ; preds = %243
  %247 = load i8*, i8** %9, align 8
  %248 = load %struct.net_device*, %struct.net_device** %4, align 8
  %249 = call %struct.neighbour* @neigh_event_ns(i32* @arp_tbl, i8* %247, i64* %10, %struct.net_device* %248)
  store %struct.neighbour* %249, %struct.neighbour** %14, align 8
  %250 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %251 = icmp ne %struct.neighbour* %250, null
  br i1 %251, label %252, label %266

252:                                              ; preds = %246
  %253 = load i32, i32* @ARPOP_REPLY, align 4
  %254 = load i32, i32* @ETH_P_ARP, align 4
  %255 = load i64, i64* %10, align 8
  %256 = load %struct.net_device*, %struct.net_device** %4, align 8
  %257 = load i64, i64* %11, align 8
  %258 = load i8*, i8** %9, align 8
  %259 = load %struct.net_device*, %struct.net_device** %4, align 8
  %260 = getelementptr inbounds %struct.net_device, %struct.net_device* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = call i32 @arp_send(i32 %253, i32 %254, i64 %255, %struct.net_device* %256, i64 %257, i8* %258, i32 %261, i8* %262)
  %264 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %265 = call i32 @neigh_release(%struct.neighbour* %264)
  br label %266

266:                                              ; preds = %252, %246
  br label %267

267:                                              ; preds = %266, %243
  br label %430

268:                                              ; preds = %210
  %269 = load %struct.in_device*, %struct.in_device** %5, align 8
  %270 = call i64 @IN_DEV_FORWARD(%struct.in_device* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %355

272:                                              ; preds = %268
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* @RTN_UNICAST, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %354

276:                                              ; preds = %272
  %277 = load %struct.in_device*, %struct.in_device** %5, align 8
  %278 = load %struct.net_device*, %struct.net_device** %4, align 8
  %279 = load %struct.rtable*, %struct.rtable** %8, align 8
  %280 = call i64 @arp_fwd_proxy(%struct.in_device* %277, %struct.net_device* %278, %struct.rtable* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %303, label %282

282:                                              ; preds = %276
  %283 = load %struct.in_device*, %struct.in_device** %5, align 8
  %284 = load %struct.net_device*, %struct.net_device** %4, align 8
  %285 = load %struct.rtable*, %struct.rtable** %8, align 8
  %286 = load i64, i64* %10, align 8
  %287 = load i64, i64* %11, align 8
  %288 = call i64 @arp_fwd_pvlan(%struct.in_device* %283, %struct.net_device* %284, %struct.rtable* %285, i64 %286, i64 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %303, label %290

290:                                              ; preds = %282
  %291 = load %struct.rtable*, %struct.rtable** %8, align 8
  %292 = getelementptr inbounds %struct.rtable, %struct.rtable* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = load %struct.net_device*, %struct.net_device** %294, align 8
  %296 = load %struct.net_device*, %struct.net_device** %4, align 8
  %297 = icmp ne %struct.net_device* %295, %296
  br i1 %297, label %298, label %354

298:                                              ; preds = %290
  %299 = load %struct.net*, %struct.net** %15, align 8
  %300 = load %struct.net_device*, %struct.net_device** %4, align 8
  %301 = call i64 @pneigh_lookup(i32* @arp_tbl, %struct.net* %299, i64* %11, %struct.net_device* %300, i32 0)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %354

303:                                              ; preds = %298, %282, %276
  %304 = load i8*, i8** %9, align 8
  %305 = load %struct.net_device*, %struct.net_device** %4, align 8
  %306 = call %struct.neighbour* @neigh_event_ns(i32* @arp_tbl, i8* %304, i64* %10, %struct.net_device* %305)
  store %struct.neighbour* %306, %struct.neighbour** %14, align 8
  %307 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %308 = icmp ne %struct.neighbour* %307, null
  br i1 %308, label %309, label %312

309:                                              ; preds = %303
  %310 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %311 = call i32 @neigh_release(%struct.neighbour* %310)
  br label %312

312:                                              ; preds = %309, %303
  %313 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %314 = call %struct.TYPE_10__* @NEIGH_CB(%struct.sk_buff* %313)
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @LOCALLY_ENQUEUED, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %333, label %320

320:                                              ; preds = %312
  %321 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %322 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @PACKET_HOST, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %333, label %326

326:                                              ; preds = %320
  %327 = load %struct.in_device*, %struct.in_device** %5, align 8
  %328 = getelementptr inbounds %struct.in_device, %struct.in_device* %327, i32 0, i32 0
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %326, %320, %312
  %334 = load i32, i32* @ARPOP_REPLY, align 4
  %335 = load i32, i32* @ETH_P_ARP, align 4
  %336 = load i64, i64* %10, align 8
  %337 = load %struct.net_device*, %struct.net_device** %4, align 8
  %338 = load i64, i64* %11, align 8
  %339 = load i8*, i8** %9, align 8
  %340 = load %struct.net_device*, %struct.net_device** %4, align 8
  %341 = getelementptr inbounds %struct.net_device, %struct.net_device* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load i8*, i8** %9, align 8
  %344 = call i32 @arp_send(i32 %334, i32 %335, i64 %336, %struct.net_device* %337, i64 %338, i8* %339, i32 %342, i8* %343)
  br label %353

345:                                              ; preds = %326
  %346 = load %struct.in_device*, %struct.in_device** %5, align 8
  %347 = getelementptr inbounds %struct.in_device, %struct.in_device* %346, i32 0, i32 0
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %347, align 8
  %349 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %350 = call i32 @pneigh_enqueue(i32* @arp_tbl, %struct.TYPE_9__* %348, %struct.sk_buff* %349)
  %351 = load %struct.in_device*, %struct.in_device** %5, align 8
  %352 = call i32 @in_dev_put(%struct.in_device* %351)
  store i32 0, i32* %2, align 4
  br label %439

353:                                              ; preds = %333
  br label %430

354:                                              ; preds = %298, %290, %272
  br label %355

355:                                              ; preds = %354, %268
  br label %356

356:                                              ; preds = %355
  br label %357

357:                                              ; preds = %356, %203, %196
  %358 = load %struct.net_device*, %struct.net_device** %4, align 8
  %359 = call %struct.neighbour* @__neigh_lookup(i32* @arp_tbl, i64* %10, %struct.net_device* %358, i32 0)
  store %struct.neighbour* %359, %struct.neighbour** %14, align 8
  %360 = load %struct.net_device*, %struct.net_device** %4, align 8
  %361 = call %struct.net* @dev_net(%struct.net_device* %360)
  %362 = load i32, i32* @ARP_ACCEPT, align 4
  %363 = call i64 @IPV4_DEVCONF_ALL(%struct.net* %361, i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %385

365:                                              ; preds = %357
  %366 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %367 = icmp eq %struct.neighbour* %366, null
  br i1 %367, label %368, label %384

368:                                              ; preds = %365
  %369 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %370 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = load i32, i32* @ARPOP_REPLY, align 4
  %373 = call i64 @htons(i32 %372)
  %374 = icmp eq i64 %371, %373
  br i1 %374, label %375, label %384

375:                                              ; preds = %368
  %376 = load %struct.net*, %struct.net** %15, align 8
  %377 = load i64, i64* %10, align 8
  %378 = call i32 @inet_addr_type(%struct.net* %376, i64 %377)
  %379 = load i32, i32* @RTN_UNICAST, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %384

381:                                              ; preds = %375
  %382 = load %struct.net_device*, %struct.net_device** %4, align 8
  %383 = call %struct.neighbour* @__neigh_lookup(i32* @arp_tbl, i64* %10, %struct.net_device* %382, i32 1)
  store %struct.neighbour* %383, %struct.neighbour** %14, align 8
  br label %384

384:                                              ; preds = %381, %375, %368, %365
  br label %385

385:                                              ; preds = %384, %357
  %386 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %387 = icmp ne %struct.neighbour* %386, null
  br i1 %387, label %388, label %429

388:                                              ; preds = %385
  %389 = load i32, i32* @NUD_REACHABLE, align 4
  store i32 %389, i32* %17, align 4
  %390 = load i32, i32* @jiffies, align 4
  %391 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %392 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %395 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %394, i32 0, i32 0
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = add nsw i64 %393, %398
  %400 = call i32 @time_after(i32 %390, i64 %399)
  store i32 %400, i32* %18, align 4
  %401 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %402 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %401, i32 0, i32 2
  %403 = load i64, i64* %402, align 8
  %404 = load i32, i32* @ARPOP_REPLY, align 4
  %405 = call i64 @htons(i32 %404)
  %406 = icmp ne i64 %403, %405
  br i1 %406, label %413, label %407

407:                                              ; preds = %388
  %408 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %409 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @PACKET_HOST, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %413, label %415

413:                                              ; preds = %407, %388
  %414 = load i32, i32* @NUD_STALE, align 4
  store i32 %414, i32* %17, align 4
  br label %415

415:                                              ; preds = %413, %407
  %416 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %417 = load i8*, i8** %9, align 8
  %418 = load i32, i32* %17, align 4
  %419 = load i32, i32* %18, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %415
  %422 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  br label %424

423:                                              ; preds = %415
  br label %424

424:                                              ; preds = %423, %421
  %425 = phi i32 [ %422, %421 ], [ 0, %423 ]
  %426 = call i32 @neigh_update(%struct.neighbour* %416, i8* %417, i32 %418, i32 %425)
  %427 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %428 = call i32 @neigh_release(%struct.neighbour* %427)
  br label %429

429:                                              ; preds = %424, %385
  br label %430

430:                                              ; preds = %429, %353, %267, %195, %152, %117, %101, %86, %71, %50, %31
  %431 = load %struct.in_device*, %struct.in_device** %5, align 8
  %432 = icmp ne %struct.in_device* %431, null
  br i1 %432, label %433, label %436

433:                                              ; preds = %430
  %434 = load %struct.in_device*, %struct.in_device** %5, align 8
  %435 = call i32 @in_dev_put(%struct.in_device* %434)
  br label %436

436:                                              ; preds = %433, %430
  %437 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %438 = call i32 @consume_skb(%struct.sk_buff* %437)
  store i32 0, i32* %2, align 4
  br label %439

439:                                              ; preds = %436, %345
  %440 = load i32, i32* %2, align 4
  ret i32 %440
}

declare dso_local %struct.in_device* @in_dev_get(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.arphdr* @arp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i64 @ipv4_is_multicast(i64) #1

declare dso_local i32 @IN_DEV_ROUTE_LOCALNET(%struct.in_device*) #1

declare dso_local i64 @ipv4_is_loopback(i64) #1

declare dso_local i32 @inet_addr_type(%struct.net*, i64) #1

declare dso_local i32 @arp_ignore(%struct.in_device*, i64, i64) #1

declare dso_local i32 @arp_send(i32, i32, i64, %struct.net_device*, i64, i8*, i32, i8*) #1

declare dso_local i64 @ip_route_input(%struct.sk_buff*, i64, i64, i32, %struct.net_device*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i64 @IN_DEV_ARPFILTER(%struct.in_device*) #1

declare dso_local i32 @arp_filter(i64, i64, %struct.net_device*) #1

declare dso_local %struct.neighbour* @neigh_event_ns(i32*, i8*, i64*, %struct.net_device*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i64 @IN_DEV_FORWARD(%struct.in_device*) #1

declare dso_local i64 @arp_fwd_proxy(%struct.in_device*, %struct.net_device*, %struct.rtable*) #1

declare dso_local i64 @arp_fwd_pvlan(%struct.in_device*, %struct.net_device*, %struct.rtable*, i64, i64) #1

declare dso_local i64 @pneigh_lookup(i32*, %struct.net*, i64*, %struct.net_device*, i32) #1

declare dso_local %struct.TYPE_10__* @NEIGH_CB(%struct.sk_buff*) #1

declare dso_local i32 @pneigh_enqueue(i32*, %struct.TYPE_9__*, %struct.sk_buff*) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

declare dso_local %struct.neighbour* @__neigh_lookup(i32*, i64*, %struct.net_device*, i32) #1

declare dso_local i64 @IPV4_DEVCONF_ALL(%struct.net*, i32) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @neigh_update(%struct.neighbour*, i8*, i32, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
