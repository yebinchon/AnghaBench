; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c_udpv6_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c_udpv6_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i64, i32 }
%struct.ipv6_pinfo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.inet_sock = type { i64 }
%struct.sk_buff = type { i32, i64 }
%struct.sockaddr_in6 = type { i64, i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UDP_MIB_INDATAGRAMS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@UDP_MIB_INERRORS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udpv6_recvmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kiocb*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.msghdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ipv6_pinfo*, align 8
  %17 = alloca %struct.inet_sock*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.sockaddr_in6*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %9, align 8
  store %struct.sock* %1, %struct.sock** %10, align 8
  store %struct.msghdr* %2, %struct.msghdr** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %26 = load %struct.sock*, %struct.sock** %10, align 8
  %27 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %26)
  store %struct.ipv6_pinfo* %27, %struct.ipv6_pinfo** %16, align 8
  %28 = load %struct.sock*, %struct.sock** %10, align 8
  %29 = call %struct.inet_sock* @inet_sk(%struct.sock* %28)
  store %struct.inet_sock* %29, %struct.inet_sock** %17, align 8
  %30 = load %struct.sock*, %struct.sock** %10, align 8
  %31 = call i32 @IS_UDPLITE(%struct.sock* %30)
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @MSG_ERRQUEUE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %7
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @ipv6_recv_error(%struct.sock* %37, %struct.msghdr* %38, i64 %39, i32* %40)
  store i32 %41, i32* %8, align 4
  br label %288

42:                                               ; preds = %7
  br label %43

43:                                               ; preds = %287, %42
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @MSG_DONTWAIT, align 4
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = or i32 %45, %52
  %54 = call %struct.sk_buff* @__skb_recv_datagram(%struct.sock* %44, i32 %53, i32* %21, i32* %22)
  store %struct.sk_buff* %54, %struct.sk_buff** %18, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %251

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %19, align 4
  %65 = load i64, i64* %12, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %20, align 4
  br label %83

72:                                               ; preds = %58
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* @MSG_TRUNC, align 4
  %78 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %79 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %72
  br label %83

83:                                               ; preds = %82, %70
  %84 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @ETH_P_IP, align 4
  %88 = call i64 @htons(i32 %87)
  %89 = icmp eq i64 %86, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %24, align 4
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %83
  %95 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %96 = call %struct.TYPE_11__* @UDP_SKB_CB(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94, %83
  %101 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %102 = call i64 @udp_lib_checksum_complete(%struct.sk_buff* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %253

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %94
  %107 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %108 = call i64 @skb_csum_unnecessary(%struct.sk_buff* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %112 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %113 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %111, i32 4, i32 %114, i32 %115)
  store i32 %116, i32* %22, align 4
  br label %129

117:                                              ; preds = %106
  %118 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %119 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %120 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @skb_copy_and_csum_datagram_iovec(%struct.sk_buff* %118, i32 4, i32 %121)
  store i32 %122, i32* %22, align 4
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %253

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %110
  %130 = load i32, i32* %22, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %247

133:                                              ; preds = %129
  %134 = load i32, i32* %21, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %152, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %24, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.sock*, %struct.sock** %10, align 8
  %141 = call i32 @sock_net(%struct.sock* %140)
  %142 = load i32, i32* @UDP_MIB_INDATAGRAMS, align 4
  %143 = load i32, i32* %23, align 4
  %144 = call i32 @UDP_INC_STATS_USER(i32 %141, i32 %142, i32 %143)
  br label %151

145:                                              ; preds = %136
  %146 = load %struct.sock*, %struct.sock** %10, align 8
  %147 = call i32 @sock_net(%struct.sock* %146)
  %148 = load i32, i32* @UDP_MIB_INDATAGRAMS, align 4
  %149 = load i32, i32* %23, align 4
  %150 = call i32 @UDP6_INC_STATS_USER(i32 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %139
  br label %152

152:                                              ; preds = %151, %133
  %153 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %154 = load %struct.sock*, %struct.sock** %10, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %156 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %153, %struct.sock* %154, %struct.sk_buff* %155)
  %157 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %158 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %213

161:                                              ; preds = %152
  %162 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %163 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %165, %struct.sockaddr_in6** %25, align 8
  %166 = load i32, i32* @AF_INET6, align 4
  %167 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %168 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %170 = call %struct.TYPE_8__* @udp_hdr(%struct.sk_buff* %169)
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %174 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  %175 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %176 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %175, i32 0, i32 2
  store i64 0, i64* %176, align 8
  %177 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %178 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  %179 = load i32, i32* %24, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %161
  %182 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %183 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %182, i32 0, i32 1
  %184 = call i32 @htonl(i32 65535)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %186 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %185)
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @ipv6_addr_set(i32* %183, i32 0, i32 0, i32 %184, i32 %188)
  br label %211

190:                                              ; preds = %161
  %191 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %192 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %191, i32 0, i32 1
  %193 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %194 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %193)
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = call i32 @ipv6_addr_copy(i32* %192, i32* %195)
  %197 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %198 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %197, i32 0, i32 1
  %199 = call i32 @ipv6_addr_type(i32* %198)
  %200 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %190
  %204 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %205 = call %struct.TYPE_12__* @IP6CB(%struct.sk_buff* %204)
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %209 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %203, %190
  br label %211

211:                                              ; preds = %210, %181
  %212 = load i32*, i32** %15, align 8
  store i32 32, i32* %212, align 4
  br label %213

213:                                              ; preds = %211, %152
  %214 = load i32, i32* %24, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %213
  %217 = load %struct.inet_sock*, %struct.inet_sock** %17, align 8
  %218 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %224 = call i32 @ip_cmsg_recv(%struct.msghdr* %222, %struct.sk_buff* %223)
  br label %225

225:                                              ; preds = %221, %216
  br label %238

226:                                              ; preds = %213
  %227 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %228 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %226
  %233 = load %struct.sock*, %struct.sock** %10, align 8
  %234 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %235 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %236 = call i32 @datagram_recv_ctl(%struct.sock* %233, %struct.msghdr* %234, %struct.sk_buff* %235)
  br label %237

237:                                              ; preds = %232, %226
  br label %238

238:                                              ; preds = %237, %225
  %239 = load i32, i32* %20, align 4
  store i32 %239, i32* %22, align 4
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* @MSG_TRUNC, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = load i32, i32* %19, align 4
  store i32 %245, i32* %22, align 4
  br label %246

246:                                              ; preds = %244, %238
  br label %247

247:                                              ; preds = %246, %132
  %248 = load %struct.sock*, %struct.sock** %10, align 8
  %249 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %250 = call i32 @skb_free_datagram_locked(%struct.sock* %248, %struct.sk_buff* %249)
  br label %251

251:                                              ; preds = %247, %57
  %252 = load i32, i32* %22, align 4
  store i32 %252, i32* %8, align 4
  br label %288

253:                                              ; preds = %127, %104
  %254 = load %struct.sock*, %struct.sock** %10, align 8
  %255 = call i32 @lock_sock(%struct.sock* %254)
  %256 = load %struct.sock*, %struct.sock** %10, align 8
  %257 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %258 = load i32, i32* %14, align 4
  %259 = call i32 @skb_kill_datagram(%struct.sock* %256, %struct.sk_buff* %257, i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %277, label %261

261:                                              ; preds = %253
  %262 = load i32, i32* %24, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load %struct.sock*, %struct.sock** %10, align 8
  %266 = call i32 @sock_net(%struct.sock* %265)
  %267 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %268 = load i32, i32* %23, align 4
  %269 = call i32 @UDP_INC_STATS_USER(i32 %266, i32 %267, i32 %268)
  br label %276

270:                                              ; preds = %261
  %271 = load %struct.sock*, %struct.sock** %10, align 8
  %272 = call i32 @sock_net(%struct.sock* %271)
  %273 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %274 = load i32, i32* %23, align 4
  %275 = call i32 @UDP6_INC_STATS_USER(i32 %272, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %270, %264
  br label %277

277:                                              ; preds = %276, %253
  %278 = load %struct.sock*, %struct.sock** %10, align 8
  %279 = call i32 @release_sock(%struct.sock* %278)
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* @MSG_DONTWAIT, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %277
  %285 = load i32, i32* @EAGAIN, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %8, align 4
  br label %288

287:                                              ; preds = %277
  br label %43

288:                                              ; preds = %284, %251, %36
  %289 = load i32, i32* %8, align 4
  ret i32 %289
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @ipv6_recv_error(%struct.sock*, %struct.msghdr*, i64, i32*) #1

declare dso_local %struct.sk_buff* @__skb_recv_datagram(%struct.sock*, i32, i32*, i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_11__* @UDP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @udp_lib_checksum_complete(%struct.sk_buff*) #1

declare dso_local i64 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_copy_and_csum_datagram_iovec(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @UDP_INC_STATS_USER(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @UDP6_INC_STATS_USER(i32, i32, i32) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_set(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.TYPE_10__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.TYPE_12__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @datagram_recv_ctl(%struct.sock*, %struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @skb_free_datagram_locked(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @skb_kill_datagram(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
