; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.inet6_skb_parm = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }
%struct.ipv6_pinfo = type { i64, i32, i32, i32 }
%struct.sock = type { i32, i32, i32, i32 (%struct.sock*)*, i32 }
%struct.tcp_sock = type { i32, i32 }
%struct.net = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.flowi = type { i32, i32, i32, i32, i32, i32 }
%struct.request_sock = type { i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@tcp_hashinfo = common dso_local global i32 0, align 4
@ICMP6_MIB_INERRORS = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i32 0, align 4
@LINUX_MIB_LOCKDROPPEDICMPS = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@LINUX_MIB_TCPMINTTLDROP = common dso_local global i32 0, align 4
@LINUX_MIB_OUTOFWINDOWICMPS = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i64 0, align 8
@TCPF_LISTEN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.inet6_skb_parm*, i64, i64, i32, i32)* @tcp_v6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.inet6_skb_parm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6hdr*, align 8
  %14 = alloca %struct.tcphdr*, align 8
  %15 = alloca %struct.ipv6_pinfo*, align 8
  %16 = alloca %struct.sock*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcp_sock*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.net*, align 8
  %21 = alloca %struct.dst_entry*, align 8
  %22 = alloca %struct.inet_sock*, align 8
  %23 = alloca %struct.flowi, align 4
  %24 = alloca %struct.request_sock*, align 8
  %25 = alloca %struct.request_sock**, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %29, %struct.ipv6hdr** %13, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = inttoptr i64 %35 to %struct.tcphdr*
  store %struct.tcphdr* %36, %struct.tcphdr** %14, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = call %struct.net* @dev_net(%struct.TYPE_9__* %39)
  store %struct.net* %40, %struct.net** %20, align 8
  %41 = load %struct.net*, %struct.net** %20, align 8
  %42 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %43 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %42, i32 0, i32 1
  %44 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %45 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %48 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %47, i32 0, i32 0
  %49 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %50 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.sock* @inet6_lookup(%struct.net* %41, i32* @tcp_hashinfo, i32* %43, i32 %46, i32* %48, i32 %51, i32 %56)
  store %struct.sock* %57, %struct.sock** %16, align 8
  %58 = load %struct.sock*, %struct.sock** %16, align 8
  %59 = icmp eq %struct.sock* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %6
  %61 = load %struct.net*, %struct.net** %20, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i32 @__in6_dev_get(%struct.TYPE_9__* %64)
  %66 = load i32, i32* @ICMP6_MIB_INERRORS, align 4
  %67 = call i32 @ICMP6_INC_STATS_BH(%struct.net* %61, i32 %65, i32 %66)
  br label %327

68:                                               ; preds = %6
  %69 = load %struct.sock*, %struct.sock** %16, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TCP_TIME_WAIT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.sock*, %struct.sock** %16, align 8
  %76 = call i32 @inet_twsk(%struct.sock* %75)
  %77 = call i32 @inet_twsk_put(i32 %76)
  br label %327

78:                                               ; preds = %68
  %79 = load %struct.sock*, %struct.sock** %16, align 8
  %80 = call i32 @bh_lock_sock(%struct.sock* %79)
  %81 = load %struct.sock*, %struct.sock** %16, align 8
  %82 = call i64 @sock_owned_by_user(%struct.sock* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.net*, %struct.net** %20, align 8
  %86 = load i32, i32* @LINUX_MIB_LOCKDROPPEDICMPS, align 4
  %87 = call i32 @NET_INC_STATS_BH(%struct.net* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load %struct.sock*, %struct.sock** %16, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @TCP_CLOSE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %322

95:                                               ; preds = %88
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.sock*, %struct.sock** %16, align 8
  %101 = call i64 @sk_get_min_hopcount(%struct.sock* %100)
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.net*, %struct.net** %20, align 8
  %105 = load i32, i32* @LINUX_MIB_TCPMINTTLDROP, align 4
  %106 = call i32 @NET_INC_STATS_BH(%struct.net* %104, i32 %105)
  br label %322

107:                                              ; preds = %95
  %108 = load %struct.sock*, %struct.sock** %16, align 8
  %109 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %108)
  store %struct.tcp_sock* %109, %struct.tcp_sock** %18, align 8
  %110 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %111 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ntohl(i32 %112)
  store i32 %113, i32* %19, align 4
  %114 = load %struct.sock*, %struct.sock** %16, align 8
  %115 = getelementptr inbounds %struct.sock, %struct.sock* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 130
  br i1 %117, label %118, label %132

118:                                              ; preds = %107
  %119 = load i32, i32* %19, align 4
  %120 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %121 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %124 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @between(i32 %119, i32 %122, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %118
  %129 = load %struct.net*, %struct.net** %20, align 8
  %130 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %131 = call i32 @NET_INC_STATS_BH(%struct.net* %129, i32 %130)
  br label %322

132:                                              ; preds = %118, %107
  %133 = load %struct.sock*, %struct.sock** %16, align 8
  %134 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %133)
  store %struct.ipv6_pinfo* %134, %struct.ipv6_pinfo** %15, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* @ICMPV6_PKT_TOOBIG, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %230

138:                                              ; preds = %132
  store %struct.dst_entry* null, %struct.dst_entry** %21, align 8
  %139 = load %struct.sock*, %struct.sock** %16, align 8
  %140 = call i64 @sock_owned_by_user(%struct.sock* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %322

143:                                              ; preds = %138
  %144 = load %struct.sock*, %struct.sock** %16, align 8
  %145 = getelementptr inbounds %struct.sock, %struct.sock* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = shl i32 1, %146
  %148 = load i32, i32* @TCPF_LISTEN, align 4
  %149 = load i32, i32* @TCPF_CLOSE, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %322

154:                                              ; preds = %143
  %155 = load %struct.sock*, %struct.sock** %16, align 8
  %156 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %157 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call %struct.dst_entry* @__sk_dst_check(%struct.sock* %155, i32 %158)
  store %struct.dst_entry* %159, %struct.dst_entry** %21, align 8
  %160 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %161 = icmp eq %struct.dst_entry* %160, null
  br i1 %161, label %162, label %209

162:                                              ; preds = %154
  %163 = load %struct.sock*, %struct.sock** %16, align 8
  %164 = call %struct.inet_sock* @inet_sk(%struct.sock* %163)
  store %struct.inet_sock* %164, %struct.inet_sock** %22, align 8
  %165 = call i32 @memset(%struct.flowi* %23, i32 0, i32 24)
  %166 = load i32, i32* @IPPROTO_TCP, align 4
  %167 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 5
  store i32 %166, i32* %167, align 4
  %168 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 4
  %169 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %170 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %169, i32 0, i32 2
  %171 = call i32 @ipv6_addr_copy(i32* %168, i32* %170)
  %172 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 3
  %173 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %174 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %173, i32 0, i32 1
  %175 = call i32 @ipv6_addr_copy(i32* %172, i32* %174)
  %176 = load %struct.sock*, %struct.sock** %16, align 8
  %177 = getelementptr inbounds %struct.sock, %struct.sock* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 2
  store i32 %178, i32* %179, align 4
  %180 = load %struct.inet_sock*, %struct.inet_sock** %22, align 8
  %181 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 1
  store i32 %182, i32* %183, align 4
  %184 = load %struct.inet_sock*, %struct.inet_sock** %22, align 8
  %185 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 0
  store i32 %186, i32* %187, align 4
  %188 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %189 = call i32 @security_skb_classify_flow(%struct.sk_buff* %188, %struct.flowi* %23)
  %190 = load %struct.sock*, %struct.sock** %16, align 8
  %191 = call i32 @ip6_dst_lookup(%struct.sock* %190, %struct.dst_entry** %21, %struct.flowi* %23)
  store i32 %191, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %162
  %194 = load i32, i32* %17, align 4
  %195 = sub nsw i32 0, %194
  %196 = load %struct.sock*, %struct.sock** %16, align 8
  %197 = getelementptr inbounds %struct.sock, %struct.sock* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %322

198:                                              ; preds = %162
  %199 = load %struct.net*, %struct.net** %20, align 8
  %200 = load %struct.sock*, %struct.sock** %16, align 8
  %201 = call i32 @xfrm_lookup(%struct.net* %199, %struct.dst_entry** %21, %struct.flowi* %23, %struct.sock* %200, i32 0)
  store i32 %201, i32* %17, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load i32, i32* %17, align 4
  %205 = sub nsw i32 0, %204
  %206 = load %struct.sock*, %struct.sock** %16, align 8
  %207 = getelementptr inbounds %struct.sock, %struct.sock* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %322

208:                                              ; preds = %198
  br label %212

209:                                              ; preds = %154
  %210 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %211 = call i32 @dst_hold(%struct.dst_entry* %210)
  br label %212

212:                                              ; preds = %209, %208
  %213 = load %struct.sock*, %struct.sock** %16, align 8
  %214 = call %struct.TYPE_8__* @inet_csk(%struct.sock* %213)
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %218 = call i64 @dst_mtu(%struct.dst_entry* %217)
  %219 = icmp sgt i64 %216, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %212
  %221 = load %struct.sock*, %struct.sock** %16, align 8
  %222 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %223 = call i64 @dst_mtu(%struct.dst_entry* %222)
  %224 = call i32 @tcp_sync_mss(%struct.sock* %221, i64 %223)
  %225 = load %struct.sock*, %struct.sock** %16, align 8
  %226 = call i32 @tcp_simple_retransmit(%struct.sock* %225)
  br label %227

227:                                              ; preds = %220, %212
  %228 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %229 = call i32 @dst_release(%struct.dst_entry* %228)
  br label %322

230:                                              ; preds = %132
  %231 = load i64, i64* %9, align 8
  %232 = load i64, i64* %10, align 8
  %233 = call i32 @icmpv6_err_convert(i64 %231, i64 %232, i32* %17)
  %234 = load %struct.sock*, %struct.sock** %16, align 8
  %235 = getelementptr inbounds %struct.sock, %struct.sock* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  switch i32 %236, label %299 [
    i32 130, label %237
    i32 128, label %279
    i32 129, label %279
  ]

237:                                              ; preds = %230
  %238 = load %struct.sock*, %struct.sock** %16, align 8
  %239 = call i64 @sock_owned_by_user(%struct.sock* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  br label %322

242:                                              ; preds = %237
  %243 = load %struct.sock*, %struct.sock** %16, align 8
  %244 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %245 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %248 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %247, i32 0, i32 1
  %249 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %250 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %249, i32 0, i32 0
  %251 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %252 = call i32 @inet6_iif(%struct.sk_buff* %251)
  %253 = call %struct.request_sock* @inet6_csk_search_req(%struct.sock* %243, %struct.request_sock*** %25, i32 %246, i32* %248, i32* %250, i32 %252)
  store %struct.request_sock* %253, %struct.request_sock** %24, align 8
  %254 = load %struct.request_sock*, %struct.request_sock** %24, align 8
  %255 = icmp ne %struct.request_sock* %254, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %242
  br label %322

257:                                              ; preds = %242
  %258 = load %struct.request_sock*, %struct.request_sock** %24, align 8
  %259 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = icmp ne i32* %260, null
  %262 = zext i1 %261 to i32
  %263 = call i32 @WARN_ON(i32 %262)
  %264 = load i32, i32* %19, align 4
  %265 = load %struct.request_sock*, %struct.request_sock** %24, align 8
  %266 = call %struct.TYPE_6__* @tcp_rsk(%struct.request_sock* %265)
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %264, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %257
  %271 = load %struct.net*, %struct.net** %20, align 8
  %272 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %273 = call i32 @NET_INC_STATS_BH(%struct.net* %271, i32 %272)
  br label %322

274:                                              ; preds = %257
  %275 = load %struct.sock*, %struct.sock** %16, align 8
  %276 = load %struct.request_sock*, %struct.request_sock** %24, align 8
  %277 = load %struct.request_sock**, %struct.request_sock*** %25, align 8
  %278 = call i32 @inet_csk_reqsk_queue_drop(%struct.sock* %275, %struct.request_sock* %276, %struct.request_sock** %277)
  br label %322

279:                                              ; preds = %230, %230
  %280 = load %struct.sock*, %struct.sock** %16, align 8
  %281 = call i64 @sock_owned_by_user(%struct.sock* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %294, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* %17, align 4
  %285 = load %struct.sock*, %struct.sock** %16, align 8
  %286 = getelementptr inbounds %struct.sock, %struct.sock* %285, i32 0, i32 2
  store i32 %284, i32* %286, align 8
  %287 = load %struct.sock*, %struct.sock** %16, align 8
  %288 = getelementptr inbounds %struct.sock, %struct.sock* %287, i32 0, i32 3
  %289 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %288, align 8
  %290 = load %struct.sock*, %struct.sock** %16, align 8
  %291 = call i32 %289(%struct.sock* %290)
  %292 = load %struct.sock*, %struct.sock** %16, align 8
  %293 = call i32 @tcp_done(%struct.sock* %292)
  br label %298

294:                                              ; preds = %279
  %295 = load i32, i32* %17, align 4
  %296 = load %struct.sock*, %struct.sock** %16, align 8
  %297 = getelementptr inbounds %struct.sock, %struct.sock* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %294, %283
  br label %322

299:                                              ; preds = %230
  %300 = load %struct.sock*, %struct.sock** %16, align 8
  %301 = call i64 @sock_owned_by_user(%struct.sock* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %317, label %303

303:                                              ; preds = %299
  %304 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %305 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %303
  %309 = load i32, i32* %17, align 4
  %310 = load %struct.sock*, %struct.sock** %16, align 8
  %311 = getelementptr inbounds %struct.sock, %struct.sock* %310, i32 0, i32 2
  store i32 %309, i32* %311, align 8
  %312 = load %struct.sock*, %struct.sock** %16, align 8
  %313 = getelementptr inbounds %struct.sock, %struct.sock* %312, i32 0, i32 3
  %314 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %313, align 8
  %315 = load %struct.sock*, %struct.sock** %16, align 8
  %316 = call i32 %314(%struct.sock* %315)
  br label %321

317:                                              ; preds = %303, %299
  %318 = load i32, i32* %17, align 4
  %319 = load %struct.sock*, %struct.sock** %16, align 8
  %320 = getelementptr inbounds %struct.sock, %struct.sock* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 4
  br label %321

321:                                              ; preds = %317, %308
  br label %322

322:                                              ; preds = %321, %298, %274, %270, %256, %241, %227, %203, %193, %153, %142, %128, %103, %94
  %323 = load %struct.sock*, %struct.sock** %16, align 8
  %324 = call i32 @bh_unlock_sock(%struct.sock* %323)
  %325 = load %struct.sock*, %struct.sock** %16, align 8
  %326 = call i32 @sock_put(%struct.sock* %325)
  br label %327

327:                                              ; preds = %322, %74, %60
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_9__*) #1

declare dso_local %struct.sock* @inet6_lookup(%struct.net*, i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ICMP6_INC_STATS_BH(%struct.net*, i32, i32) #1

declare dso_local i32 @__in6_dev_get(%struct.TYPE_9__*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(%struct.net*, i32) #1

declare dso_local %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @sk_get_min_hopcount(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @between(i32, i32, i32) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_check(%struct.sock*, i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, %struct.flowi*) #1

declare dso_local i32 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @xfrm_lookup(%struct.net*, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

declare dso_local %struct.TYPE_8__* @inet_csk(%struct.sock*) #1

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i64) #1

declare dso_local i32 @tcp_simple_retransmit(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @icmpv6_err_convert(i64, i64, i32*) #1

declare dso_local %struct.request_sock* @inet6_csk_search_req(%struct.sock*, %struct.request_sock***, i32, i32*, i32*, i32) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_6__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(%struct.sock*, %struct.request_sock*, %struct.request_sock**) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
