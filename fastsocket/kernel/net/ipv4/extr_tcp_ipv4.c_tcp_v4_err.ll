; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.iphdr = type { i32, i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }
%struct.inet_connection_sock = type { i32, i32, i32 }
%struct.tcp_sock = type { i32, i32, i32 }
%struct.inet_sock = type { i64 }
%struct.sock = type { i32, i32, i32, i32 (%struct.sock*)* }
%struct.net = type { i32 }
%struct.request_sock = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@tcp_hashinfo = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i32 0, align 4
@LINUX_MIB_LOCKDROPPEDICMPS = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@LINUX_MIB_OUTOFWINDOWICMPS = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@icmp_err_convert = common dso_local global %struct.TYPE_7__* null, align 8
@ICMP_NET_UNREACH = common dso_local global i32 0, align 4
@ICMP_HOST_UNREACH = common dso_local global i32 0, align 4
@TCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@tcp_time_stamp = common dso_local global i64 0, align 8
@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_v4_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.inet_connection_sock*, align 8
  %8 = alloca %struct.tcp_sock*, align 8
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.net*, align 8
  %18 = alloca %struct.request_sock*, align 8
  %19 = alloca %struct.request_sock**, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.iphdr*
  store %struct.iphdr* %23, %struct.iphdr** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %26, %31
  %33 = inttoptr i64 %32 to %struct.tcphdr*
  store %struct.tcphdr* %33, %struct.tcphdr** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.net* @dev_net(i32 %44)
  store %struct.net* %45, %struct.net** %17, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 2
  %53 = add nsw i32 %52, 8
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %2
  %56 = load %struct.net*, %struct.net** %17, align 8
  %57 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %58 = call i32 @ICMP_INC_STATS_BH(%struct.net* %56, i32 %57)
  br label %352

59:                                               ; preds = %2
  %60 = load %struct.net*, %struct.net** %17, align 8
  %61 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %62 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %65 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %71 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @inet_iif(%struct.sk_buff* %73)
  %75 = call %struct.sock* @inet_lookup(%struct.net* %60, i32* @tcp_hashinfo, i32 %63, i32 %66, i32 %69, i32 %72, i32 %74)
  store %struct.sock* %75, %struct.sock** %12, align 8
  %76 = load %struct.sock*, %struct.sock** %12, align 8
  %77 = icmp ne %struct.sock* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %59
  %79 = load %struct.net*, %struct.net** %17, align 8
  %80 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %81 = call i32 @ICMP_INC_STATS_BH(%struct.net* %79, i32 %80)
  br label %352

82:                                               ; preds = %59
  %83 = load %struct.sock*, %struct.sock** %12, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TCP_TIME_WAIT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.sock*, %struct.sock** %12, align 8
  %90 = call i32 @inet_twsk(%struct.sock* %89)
  %91 = call i32 @inet_twsk_put(i32 %90)
  br label %352

92:                                               ; preds = %82
  %93 = load %struct.sock*, %struct.sock** %12, align 8
  %94 = call i32 @bh_lock_sock(%struct.sock* %93)
  %95 = load %struct.sock*, %struct.sock** %12, align 8
  %96 = call i64 @sock_owned_by_user(%struct.sock* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.net*, %struct.net** %17, align 8
  %100 = load i32, i32* @LINUX_MIB_LOCKDROPPEDICMPS, align 4
  %101 = call i32 @NET_INC_STATS_BH(%struct.net* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %92
  %103 = load %struct.sock*, %struct.sock** %12, align 8
  %104 = getelementptr inbounds %struct.sock, %struct.sock* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TCP_CLOSE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %347

109:                                              ; preds = %102
  %110 = load %struct.sock*, %struct.sock** %12, align 8
  %111 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %110)
  store %struct.inet_connection_sock* %111, %struct.inet_connection_sock** %7, align 8
  %112 = load %struct.sock*, %struct.sock** %12, align 8
  %113 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %112)
  store %struct.tcp_sock* %113, %struct.tcp_sock** %8, align 8
  %114 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %115 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ntohl(i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load %struct.sock*, %struct.sock** %12, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 130
  br i1 %121, label %122, label %136

122:                                              ; preds = %109
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %125 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %128 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @between(i32 %123, i32 %126, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %122
  %133 = load %struct.net*, %struct.net** %17, align 8
  %134 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %135 = call i32 @NET_INC_STATS_BH(%struct.net* %133, i32 %134)
  br label %347

136:                                              ; preds = %122, %109
  %137 = load i32, i32* %10, align 4
  switch i32 %137, label %257 [
    i32 132, label %138
    i32 133, label %139
    i32 134, label %141
    i32 131, label %255
  ]

138:                                              ; preds = %136
  br label %347

139:                                              ; preds = %136
  %140 = load i32, i32* @EPROTO, align 4
  store i32 %140, i32* %16, align 4
  br label %258

141:                                              ; preds = %136
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %347

146:                                              ; preds = %141
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load %struct.sock*, %struct.sock** %12, align 8
  %152 = call i64 @sock_owned_by_user(%struct.sock* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %150
  %155 = load %struct.sock*, %struct.sock** %12, align 8
  %156 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @do_pmtu_discovery(%struct.sock* %155, %struct.iphdr* %156, i32 %157)
  br label %159

159:                                              ; preds = %154, %150
  br label %347

160:                                              ; preds = %146
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** @icmp_err_convert, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @ICMP_NET_UNREACH, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %160
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @ICMP_HOST_UNREACH, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %258

175:                                              ; preds = %170, %160
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %178 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %176, %179
  br i1 %180, label %191, label %181

181:                                              ; preds = %175
  %182 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %183 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %188 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %186, %181, %175
  br label %258

192:                                              ; preds = %186
  %193 = load %struct.sock*, %struct.sock** %12, align 8
  %194 = call i64 @sock_owned_by_user(%struct.sock* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %258

197:                                              ; preds = %192
  %198 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %199 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %199, align 4
  %202 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %203 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %208 = call i32 @__tcp_set_rto(%struct.tcp_sock* %207)
  br label %211

209:                                              ; preds = %197
  %210 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  br label %211

211:                                              ; preds = %209, %206
  %212 = phi i32 [ %208, %206 ], [ %210, %209 ]
  %213 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %214 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %212, %215
  %217 = load %struct.sock*, %struct.sock** %12, align 8
  %218 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %217)
  %219 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %218, i32 0, i32 1
  store i32 %216, i32* %219, align 4
  %220 = load %struct.sock*, %struct.sock** %12, align 8
  %221 = call i32 @tcp_bound_rto(%struct.sock* %220)
  %222 = load %struct.sock*, %struct.sock** %12, align 8
  %223 = call %struct.sk_buff* @tcp_write_queue_head(%struct.sock* %222)
  store %struct.sk_buff* %223, %struct.sk_buff** %13, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %225 = icmp ne %struct.sk_buff* %224, null
  %226 = xor i1 %225, true
  %227 = zext i1 %226 to i32
  %228 = call i32 @BUG_ON(i32 %227)
  %229 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %230 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %233 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i64, i64* @tcp_time_stamp, align 8
  %236 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %237 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %236)
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %235, %239
  %241 = call i32 @min(i32 %234, i64 %240)
  %242 = sub nsw i32 %231, %241
  store i32 %242, i32* %15, align 4
  %243 = load i32, i32* %15, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %211
  %246 = load %struct.sock*, %struct.sock** %12, align 8
  %247 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* @TCP_RTO_MAX, align 4
  %250 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %246, i32 %247, i32 %248, i32 %249)
  br label %254

251:                                              ; preds = %211
  %252 = load %struct.sock*, %struct.sock** %12, align 8
  %253 = call i32 @tcp_retransmit_timer(%struct.sock* %252)
  br label %254

254:                                              ; preds = %251, %245
  br label %258

255:                                              ; preds = %136
  %256 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %256, i32* %16, align 4
  br label %258

257:                                              ; preds = %136
  br label %347

258:                                              ; preds = %255, %254, %196, %191, %174, %139
  %259 = load %struct.sock*, %struct.sock** %12, align 8
  %260 = getelementptr inbounds %struct.sock, %struct.sock* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  switch i32 %261, label %322 [
    i32 130, label %262
    i32 128, label %302
    i32 129, label %302
  ]

262:                                              ; preds = %258
  %263 = load %struct.sock*, %struct.sock** %12, align 8
  %264 = call i64 @sock_owned_by_user(%struct.sock* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  br label %347

267:                                              ; preds = %262
  %268 = load %struct.sock*, %struct.sock** %12, align 8
  %269 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %270 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %273 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %276 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call %struct.request_sock* @inet_csk_search_req(%struct.sock* %268, %struct.request_sock*** %19, i32 %271, i32 %274, i32 %277)
  store %struct.request_sock* %278, %struct.request_sock** %18, align 8
  %279 = load %struct.request_sock*, %struct.request_sock** %18, align 8
  %280 = icmp ne %struct.request_sock* %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %267
  br label %347

282:                                              ; preds = %267
  %283 = load %struct.request_sock*, %struct.request_sock** %18, align 8
  %284 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @WARN_ON(i32 %285)
  %287 = load i32, i32* %14, align 4
  %288 = load %struct.request_sock*, %struct.request_sock** %18, align 8
  %289 = call %struct.TYPE_5__* @tcp_rsk(%struct.request_sock* %288)
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %287, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %282
  %294 = load %struct.net*, %struct.net** %17, align 8
  %295 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %296 = call i32 @NET_INC_STATS_BH(%struct.net* %294, i32 %295)
  br label %347

297:                                              ; preds = %282
  %298 = load %struct.sock*, %struct.sock** %12, align 8
  %299 = load %struct.request_sock*, %struct.request_sock** %18, align 8
  %300 = load %struct.request_sock**, %struct.request_sock*** %19, align 8
  %301 = call i32 @inet_csk_reqsk_queue_drop(%struct.sock* %298, %struct.request_sock* %299, %struct.request_sock** %300)
  br label %347

302:                                              ; preds = %258, %258
  %303 = load %struct.sock*, %struct.sock** %12, align 8
  %304 = call i64 @sock_owned_by_user(%struct.sock* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %317, label %306

306:                                              ; preds = %302
  %307 = load i32, i32* %16, align 4
  %308 = load %struct.sock*, %struct.sock** %12, align 8
  %309 = getelementptr inbounds %struct.sock, %struct.sock* %308, i32 0, i32 1
  store i32 %307, i32* %309, align 4
  %310 = load %struct.sock*, %struct.sock** %12, align 8
  %311 = getelementptr inbounds %struct.sock, %struct.sock* %310, i32 0, i32 3
  %312 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %311, align 8
  %313 = load %struct.sock*, %struct.sock** %12, align 8
  %314 = call i32 %312(%struct.sock* %313)
  %315 = load %struct.sock*, %struct.sock** %12, align 8
  %316 = call i32 @tcp_done(%struct.sock* %315)
  br label %321

317:                                              ; preds = %302
  %318 = load i32, i32* %16, align 4
  %319 = load %struct.sock*, %struct.sock** %12, align 8
  %320 = getelementptr inbounds %struct.sock, %struct.sock* %319, i32 0, i32 2
  store i32 %318, i32* %320, align 8
  br label %321

321:                                              ; preds = %317, %306
  br label %347

322:                                              ; preds = %258
  %323 = load %struct.sock*, %struct.sock** %12, align 8
  %324 = call %struct.inet_sock* @inet_sk(%struct.sock* %323)
  store %struct.inet_sock* %324, %struct.inet_sock** %9, align 8
  %325 = load %struct.sock*, %struct.sock** %12, align 8
  %326 = call i64 @sock_owned_by_user(%struct.sock* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %342, label %328

328:                                              ; preds = %322
  %329 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %330 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %342

333:                                              ; preds = %328
  %334 = load i32, i32* %16, align 4
  %335 = load %struct.sock*, %struct.sock** %12, align 8
  %336 = getelementptr inbounds %struct.sock, %struct.sock* %335, i32 0, i32 1
  store i32 %334, i32* %336, align 4
  %337 = load %struct.sock*, %struct.sock** %12, align 8
  %338 = getelementptr inbounds %struct.sock, %struct.sock* %337, i32 0, i32 3
  %339 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %338, align 8
  %340 = load %struct.sock*, %struct.sock** %12, align 8
  %341 = call i32 %339(%struct.sock* %340)
  br label %346

342:                                              ; preds = %328, %322
  %343 = load i32, i32* %16, align 4
  %344 = load %struct.sock*, %struct.sock** %12, align 8
  %345 = getelementptr inbounds %struct.sock, %struct.sock* %344, i32 0, i32 2
  store i32 %343, i32* %345, align 8
  br label %346

346:                                              ; preds = %342, %333
  br label %347

347:                                              ; preds = %346, %321, %297, %293, %281, %266, %257, %159, %145, %138, %132, %108
  %348 = load %struct.sock*, %struct.sock** %12, align 8
  %349 = call i32 @bh_unlock_sock(%struct.sock* %348)
  %350 = load %struct.sock*, %struct.sock** %12, align 8
  %351 = call i32 @sock_put(%struct.sock* %350)
  br label %352

352:                                              ; preds = %347, %88, %78, %55
  ret void
}

declare dso_local %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @ICMP_INC_STATS_BH(%struct.net*, i32) #1

declare dso_local %struct.sock* @inet_lookup(%struct.net*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(%struct.net*, i32) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @between(i32, i32, i32) #1

declare dso_local i32 @do_pmtu_discovery(%struct.sock*, %struct.iphdr*, i32) #1

declare dso_local i32 @__tcp_set_rto(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_bound_rto(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_head(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @tcp_retransmit_timer(%struct.sock*) #1

declare dso_local %struct.request_sock* @inet_csk_search_req(%struct.sock*, %struct.request_sock***, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_5__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(%struct.sock*, %struct.request_sock*, %struct.request_sock**) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
