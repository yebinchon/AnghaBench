; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.inet6_skb_parm = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.dccp_hdr = type { i32, i32 }
%struct.dccp_sock = type { i32, i32 }
%struct.ipv6_pinfo = type { i64, i32, i32, i32 }
%struct.sock = type { i32, i32, i32, i32 (%struct.sock*)*, i32 }
%struct.net = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.flowi = type { i32, i32, i32, i32, i32, i32 }
%struct.request_sock = type { i32* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ICMP6_MIB_INERRORS = common dso_local global i32 0, align 4
@dccp_hashinfo = common dso_local global i32 0, align 4
@DCCP_TIME_WAIT = common dso_local global i32 0, align 4
@LINUX_MIB_LOCKDROPPEDICMPS = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4
@DCCPF_REQUESTING = common dso_local global i32 0, align 4
@DCCPF_LISTEN = common dso_local global i32 0, align 4
@LINUX_MIB_OUTOFWINDOWICMPS = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i64 0, align 8
@DCCPF_CLOSED = common dso_local global i32 0, align 4
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@DCCP_MIB_ATTEMPTFAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.inet6_skb_parm*, i64, i64, i32, i32)* @dccp_v6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_v6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.inet6_skb_parm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6hdr*, align 8
  %14 = alloca %struct.dccp_hdr*, align 8
  %15 = alloca %struct.dccp_sock*, align 8
  %16 = alloca %struct.ipv6_pinfo*, align 8
  %17 = alloca %struct.sock*, align 8
  %18 = alloca i32, align 4
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
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %29, %struct.ipv6hdr** %13, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = inttoptr i64 %35 to %struct.dccp_hdr*
  store %struct.dccp_hdr* %36, %struct.dccp_hdr** %14, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.net* @dev_net(i32 %39)
  store %struct.net* %40, %struct.net** %20, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %6
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.dccp_hdr*, %struct.dccp_hdr** %14, align 8
  %55 = call i32 @__dccp_basic_hdr_len(%struct.dccp_hdr* %54)
  %56 = add nsw i32 %53, %55
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %49, %6
  %59 = load %struct.net*, %struct.net** %20, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @__in6_dev_get(i32 %62)
  %64 = load i32, i32* @ICMP6_MIB_INERRORS, align 4
  %65 = call i32 @ICMP6_INC_STATS_BH(%struct.net* %59, i32 %63, i32 %64)
  br label %344

66:                                               ; preds = %49
  %67 = load %struct.net*, %struct.net** %20, align 8
  %68 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %69 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %68, i32 0, i32 1
  %70 = load %struct.dccp_hdr*, %struct.dccp_hdr** %14, align 8
  %71 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %74 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %73, i32 0, i32 0
  %75 = load %struct.dccp_hdr*, %struct.dccp_hdr** %14, align 8
  %76 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = call i32 @inet6_iif(%struct.sk_buff* %78)
  %80 = call %struct.sock* @inet6_lookup(%struct.net* %67, i32* @dccp_hashinfo, i32* %69, i32 %72, i32* %74, i32 %77, i32 %79)
  store %struct.sock* %80, %struct.sock** %17, align 8
  %81 = load %struct.sock*, %struct.sock** %17, align 8
  %82 = icmp eq %struct.sock* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %66
  %84 = load %struct.net*, %struct.net** %20, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__in6_dev_get(i32 %87)
  %89 = load i32, i32* @ICMP6_MIB_INERRORS, align 4
  %90 = call i32 @ICMP6_INC_STATS_BH(%struct.net* %84, i32 %88, i32 %89)
  br label %344

91:                                               ; preds = %66
  %92 = load %struct.sock*, %struct.sock** %17, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @DCCP_TIME_WAIT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.sock*, %struct.sock** %17, align 8
  %99 = call i32 @inet_twsk(%struct.sock* %98)
  %100 = call i32 @inet_twsk_put(i32 %99)
  br label %344

101:                                              ; preds = %91
  %102 = load %struct.sock*, %struct.sock** %17, align 8
  %103 = call i32 @bh_lock_sock(%struct.sock* %102)
  %104 = load %struct.sock*, %struct.sock** %17, align 8
  %105 = call i64 @sock_owned_by_user(%struct.sock* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.net*, %struct.net** %20, align 8
  %109 = load i32, i32* @LINUX_MIB_LOCKDROPPEDICMPS, align 4
  %110 = call i32 @NET_INC_STATS_BH(%struct.net* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %101
  %112 = load %struct.sock*, %struct.sock** %17, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DCCP_CLOSED, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %339

118:                                              ; preds = %111
  %119 = load %struct.sock*, %struct.sock** %17, align 8
  %120 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %119)
  store %struct.dccp_sock* %120, %struct.dccp_sock** %15, align 8
  %121 = load %struct.dccp_hdr*, %struct.dccp_hdr** %14, align 8
  %122 = call i32 @dccp_hdr_seq(%struct.dccp_hdr* %121)
  store i32 %122, i32* %19, align 4
  %123 = load %struct.sock*, %struct.sock** %17, align 8
  %124 = getelementptr inbounds %struct.sock, %struct.sock* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = shl i32 1, %125
  %127 = load i32, i32* @DCCPF_REQUESTING, align 4
  %128 = load i32, i32* @DCCPF_LISTEN, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = and i32 %126, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %118
  %134 = load i32, i32* %19, align 4
  %135 = load %struct.dccp_sock*, %struct.dccp_sock** %15, align 8
  %136 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.dccp_sock*, %struct.dccp_sock** %15, align 8
  %139 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @between48(i32 %134, i32 %137, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %133
  %144 = load %struct.net*, %struct.net** %20, align 8
  %145 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %146 = call i32 @NET_INC_STATS_BH(%struct.net* %144, i32 %145)
  br label %339

147:                                              ; preds = %133, %118
  %148 = load %struct.sock*, %struct.sock** %17, align 8
  %149 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %148)
  store %struct.ipv6_pinfo* %149, %struct.ipv6_pinfo** %16, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* @ICMPV6_PKT_TOOBIG, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %245

153:                                              ; preds = %147
  store %struct.dst_entry* null, %struct.dst_entry** %21, align 8
  %154 = load %struct.sock*, %struct.sock** %17, align 8
  %155 = call i64 @sock_owned_by_user(%struct.sock* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %339

158:                                              ; preds = %153
  %159 = load %struct.sock*, %struct.sock** %17, align 8
  %160 = getelementptr inbounds %struct.sock, %struct.sock* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = shl i32 1, %161
  %163 = load i32, i32* @DCCPF_LISTEN, align 4
  %164 = load i32, i32* @DCCPF_CLOSED, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %339

169:                                              ; preds = %158
  %170 = load %struct.sock*, %struct.sock** %17, align 8
  %171 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %172 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call %struct.dst_entry* @__sk_dst_check(%struct.sock* %170, i32 %173)
  store %struct.dst_entry* %174, %struct.dst_entry** %21, align 8
  %175 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %176 = icmp eq %struct.dst_entry* %175, null
  br i1 %176, label %177, label %226

177:                                              ; preds = %169
  %178 = load %struct.sock*, %struct.sock** %17, align 8
  %179 = call %struct.inet_sock* @inet_sk(%struct.sock* %178)
  store %struct.inet_sock* %179, %struct.inet_sock** %22, align 8
  %180 = call i32 @memset(%struct.flowi* %23, i32 0, i32 24)
  %181 = load i32, i32* @IPPROTO_DCCP, align 4
  %182 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 5
  store i32 %181, i32* %182, align 4
  %183 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 4
  %184 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %185 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %184, i32 0, i32 2
  %186 = call i32 @ipv6_addr_copy(i32* %183, i32* %185)
  %187 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 3
  %188 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %189 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %188, i32 0, i32 1
  %190 = call i32 @ipv6_addr_copy(i32* %187, i32* %189)
  %191 = load %struct.sock*, %struct.sock** %17, align 8
  %192 = getelementptr inbounds %struct.sock, %struct.sock* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 2
  store i32 %193, i32* %194, align 4
  %195 = load %struct.inet_sock*, %struct.inet_sock** %22, align 8
  %196 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 1
  store i32 %197, i32* %198, align 4
  %199 = load %struct.inet_sock*, %struct.inet_sock** %22, align 8
  %200 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 0
  store i32 %201, i32* %202, align 4
  %203 = load %struct.sock*, %struct.sock** %17, align 8
  %204 = call i32 @security_sk_classify_flow(%struct.sock* %203, %struct.flowi* %23)
  %205 = load %struct.sock*, %struct.sock** %17, align 8
  %206 = call i32 @ip6_dst_lookup(%struct.sock* %205, %struct.dst_entry** %21, %struct.flowi* %23)
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %177
  %210 = load i32, i32* %18, align 4
  %211 = sub nsw i32 0, %210
  %212 = load %struct.sock*, %struct.sock** %17, align 8
  %213 = getelementptr inbounds %struct.sock, %struct.sock* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  br label %339

214:                                              ; preds = %177
  %215 = load %struct.net*, %struct.net** %20, align 8
  %216 = load %struct.sock*, %struct.sock** %17, align 8
  %217 = call i32 @xfrm_lookup(%struct.net* %215, %struct.dst_entry** %21, %struct.flowi* %23, %struct.sock* %216, i32 0)
  store i32 %217, i32* %18, align 4
  %218 = load i32, i32* %18, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %214
  %221 = load i32, i32* %18, align 4
  %222 = sub nsw i32 0, %221
  %223 = load %struct.sock*, %struct.sock** %17, align 8
  %224 = getelementptr inbounds %struct.sock, %struct.sock* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  br label %339

225:                                              ; preds = %214
  br label %229

226:                                              ; preds = %169
  %227 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %228 = call i32 @dst_hold(%struct.dst_entry* %227)
  br label %229

229:                                              ; preds = %226, %225
  %230 = load %struct.sock*, %struct.sock** %17, align 8
  %231 = call %struct.TYPE_3__* @inet_csk(%struct.sock* %230)
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %235 = call i64 @dst_mtu(%struct.dst_entry* %234)
  %236 = icmp sgt i64 %233, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %229
  %238 = load %struct.sock*, %struct.sock** %17, align 8
  %239 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %240 = call i64 @dst_mtu(%struct.dst_entry* %239)
  %241 = call i32 @dccp_sync_mss(%struct.sock* %238, i64 %240)
  br label %242

242:                                              ; preds = %237, %229
  %243 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %244 = call i32 @dst_release(%struct.dst_entry* %243)
  br label %339

245:                                              ; preds = %147
  %246 = load i64, i64* %9, align 8
  %247 = load i64, i64* %10, align 8
  %248 = call i32 @icmpv6_err_convert(i64 %246, i64 %247, i32* %18)
  %249 = load %struct.sock*, %struct.sock** %17, align 8
  %250 = getelementptr inbounds %struct.sock, %struct.sock* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  switch i32 %251, label %316 [
    i32 130, label %252
    i32 129, label %294
    i32 128, label %294
  ]

252:                                              ; preds = %245
  %253 = load %struct.sock*, %struct.sock** %17, align 8
  %254 = call i64 @sock_owned_by_user(%struct.sock* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %339

257:                                              ; preds = %252
  %258 = load %struct.sock*, %struct.sock** %17, align 8
  %259 = load %struct.dccp_hdr*, %struct.dccp_hdr** %14, align 8
  %260 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %263 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %262, i32 0, i32 1
  %264 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %265 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %264, i32 0, i32 0
  %266 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %267 = call i32 @inet6_iif(%struct.sk_buff* %266)
  %268 = call %struct.request_sock* @inet6_csk_search_req(%struct.sock* %258, %struct.request_sock*** %25, i32 %261, i32* %263, i32* %265, i32 %267)
  store %struct.request_sock* %268, %struct.request_sock** %24, align 8
  %269 = load %struct.request_sock*, %struct.request_sock** %24, align 8
  %270 = icmp eq %struct.request_sock* %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %257
  br label %339

272:                                              ; preds = %257
  %273 = load %struct.request_sock*, %struct.request_sock** %24, align 8
  %274 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = icmp ne i32* %275, null
  %277 = zext i1 %276 to i32
  %278 = call i32 @WARN_ON(i32 %277)
  %279 = load i32, i32* %19, align 4
  %280 = load %struct.request_sock*, %struct.request_sock** %24, align 8
  %281 = call %struct.TYPE_4__* @dccp_rsk(%struct.request_sock* %280)
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %279, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %272
  %286 = load %struct.net*, %struct.net** %20, align 8
  %287 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %288 = call i32 @NET_INC_STATS_BH(%struct.net* %286, i32 %287)
  br label %339

289:                                              ; preds = %272
  %290 = load %struct.sock*, %struct.sock** %17, align 8
  %291 = load %struct.request_sock*, %struct.request_sock** %24, align 8
  %292 = load %struct.request_sock**, %struct.request_sock*** %25, align 8
  %293 = call i32 @inet_csk_reqsk_queue_drop(%struct.sock* %290, %struct.request_sock* %291, %struct.request_sock** %292)
  br label %339

294:                                              ; preds = %245, %245
  %295 = load %struct.sock*, %struct.sock** %17, align 8
  %296 = call i64 @sock_owned_by_user(%struct.sock* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %311, label %298

298:                                              ; preds = %294
  %299 = load i32, i32* @DCCP_MIB_ATTEMPTFAILS, align 4
  %300 = call i32 @DCCP_INC_STATS_BH(i32 %299)
  %301 = load i32, i32* %18, align 4
  %302 = load %struct.sock*, %struct.sock** %17, align 8
  %303 = getelementptr inbounds %struct.sock, %struct.sock* %302, i32 0, i32 2
  store i32 %301, i32* %303, align 8
  %304 = load %struct.sock*, %struct.sock** %17, align 8
  %305 = getelementptr inbounds %struct.sock, %struct.sock* %304, i32 0, i32 3
  %306 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %305, align 8
  %307 = load %struct.sock*, %struct.sock** %17, align 8
  %308 = call i32 %306(%struct.sock* %307)
  %309 = load %struct.sock*, %struct.sock** %17, align 8
  %310 = call i32 @dccp_done(%struct.sock* %309)
  br label %315

311:                                              ; preds = %294
  %312 = load i32, i32* %18, align 4
  %313 = load %struct.sock*, %struct.sock** %17, align 8
  %314 = getelementptr inbounds %struct.sock, %struct.sock* %313, i32 0, i32 1
  store i32 %312, i32* %314, align 4
  br label %315

315:                                              ; preds = %311, %298
  br label %339

316:                                              ; preds = %245
  %317 = load %struct.sock*, %struct.sock** %17, align 8
  %318 = call i64 @sock_owned_by_user(%struct.sock* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %334, label %320

320:                                              ; preds = %316
  %321 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %322 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %320
  %326 = load i32, i32* %18, align 4
  %327 = load %struct.sock*, %struct.sock** %17, align 8
  %328 = getelementptr inbounds %struct.sock, %struct.sock* %327, i32 0, i32 2
  store i32 %326, i32* %328, align 8
  %329 = load %struct.sock*, %struct.sock** %17, align 8
  %330 = getelementptr inbounds %struct.sock, %struct.sock* %329, i32 0, i32 3
  %331 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %330, align 8
  %332 = load %struct.sock*, %struct.sock** %17, align 8
  %333 = call i32 %331(%struct.sock* %332)
  br label %338

334:                                              ; preds = %320, %316
  %335 = load i32, i32* %18, align 4
  %336 = load %struct.sock*, %struct.sock** %17, align 8
  %337 = getelementptr inbounds %struct.sock, %struct.sock* %336, i32 0, i32 1
  store i32 %335, i32* %337, align 4
  br label %338

338:                                              ; preds = %334, %325
  br label %339

339:                                              ; preds = %338, %315, %289, %285, %271, %256, %242, %220, %209, %168, %157, %143, %117
  %340 = load %struct.sock*, %struct.sock** %17, align 8
  %341 = call i32 @bh_unlock_sock(%struct.sock* %340)
  %342 = load %struct.sock*, %struct.sock** %17, align 8
  %343 = call i32 @sock_put(%struct.sock* %342)
  br label %344

344:                                              ; preds = %339, %97, %83, %58
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @__dccp_basic_hdr_len(%struct.dccp_hdr*) #1

declare dso_local i32 @ICMP6_INC_STATS_BH(%struct.net*, i32, i32) #1

declare dso_local i32 @__in6_dev_get(i32) #1

declare dso_local %struct.sock* @inet6_lookup(%struct.net*, i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(%struct.net*, i32) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_hdr_seq(%struct.dccp_hdr*) #1

declare dso_local i32 @between48(i32, i32, i32) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_check(%struct.sock*, i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, %struct.flowi*) #1

declare dso_local i32 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @xfrm_lookup(%struct.net*, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

declare dso_local %struct.TYPE_3__* @inet_csk(%struct.sock*) #1

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @dccp_sync_mss(%struct.sock*, i64) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @icmpv6_err_convert(i64, i64, i32*) #1

declare dso_local %struct.request_sock* @inet6_csk_search_req(%struct.sock*, %struct.request_sock***, i32, i32*, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_4__* @dccp_rsk(%struct.request_sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(%struct.sock*, %struct.request_sock*, %struct.request_sock**) #1

declare dso_local i32 @DCCP_INC_STATS_BH(i32) #1

declare dso_local i32 @dccp_done(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
