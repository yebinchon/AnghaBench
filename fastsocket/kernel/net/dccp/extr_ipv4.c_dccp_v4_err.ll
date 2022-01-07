; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64, i64, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.dccp_hdr = type { i32, i32 }
%struct.dccp_sock = type { i32, i32 }
%struct.inet_sock = type { i64 }
%struct.sock = type { i32, i32, i32, i32 (%struct.sock*)* }
%struct.net = type { i32 }
%struct.request_sock = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@dccp_hashinfo = common dso_local global i32 0, align 4
@DCCP_TIME_WAIT = common dso_local global i32 0, align 4
@LINUX_MIB_LOCKDROPPEDICMPS = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4
@DCCPF_REQUESTING = common dso_local global i32 0, align 4
@DCCPF_LISTEN = common dso_local global i32 0, align 4
@LINUX_MIB_OUTOFWINDOWICMPS = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@icmp_err_convert = common dso_local global %struct.TYPE_5__* null, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@DCCP_MIB_ATTEMPTFAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @dccp_v4_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_v4_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dccp_hdr*, align 8
  %8 = alloca %struct.dccp_sock*, align 8
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.net*, align 8
  %16 = alloca %struct.request_sock*, align 8
  %17 = alloca %struct.request_sock**, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.iphdr*
  store %struct.iphdr* %21, %struct.iphdr** %5, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 2
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %29, %30
  %32 = inttoptr i64 %31 to %struct.dccp_hdr*
  store %struct.dccp_hdr* %32, %struct.dccp_hdr** %7, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.net* @dev_net(i32 %43)
  store %struct.net* %44, %struct.net** %15, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 8
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %2
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %57 = call i64 @__dccp_basic_hdr_len(%struct.dccp_hdr* %56)
  %58 = add nsw i64 %55, %57
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51, %2
  %61 = load %struct.net*, %struct.net** %15, align 8
  %62 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %63 = call i32 @ICMP_INC_STATS_BH(%struct.net* %61, i32 %62)
  br label %273

64:                                               ; preds = %51
  %65 = load %struct.net*, %struct.net** %15, align 8
  %66 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %70 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %73 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %76 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = call i32 @inet_iif(%struct.sk_buff* %78)
  %80 = call %struct.sock* @inet_lookup(%struct.net* %65, i32* @dccp_hashinfo, i32 %68, i32 %71, i32 %74, i32 %77, i32 %79)
  store %struct.sock* %80, %struct.sock** %12, align 8
  %81 = load %struct.sock*, %struct.sock** %12, align 8
  %82 = icmp eq %struct.sock* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %64
  %84 = load %struct.net*, %struct.net** %15, align 8
  %85 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %86 = call i32 @ICMP_INC_STATS_BH(%struct.net* %84, i32 %85)
  br label %273

87:                                               ; preds = %64
  %88 = load %struct.sock*, %struct.sock** %12, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DCCP_TIME_WAIT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.sock*, %struct.sock** %12, align 8
  %95 = call i32 @inet_twsk(%struct.sock* %94)
  %96 = call i32 @inet_twsk_put(i32 %95)
  br label %273

97:                                               ; preds = %87
  %98 = load %struct.sock*, %struct.sock** %12, align 8
  %99 = call i32 @bh_lock_sock(%struct.sock* %98)
  %100 = load %struct.sock*, %struct.sock** %12, align 8
  %101 = call i64 @sock_owned_by_user(%struct.sock* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.net*, %struct.net** %15, align 8
  %105 = load i32, i32* @LINUX_MIB_LOCKDROPPEDICMPS, align 4
  %106 = call i32 @NET_INC_STATS_BH(%struct.net* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.sock*, %struct.sock** %12, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DCCP_CLOSED, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %268

114:                                              ; preds = %107
  %115 = load %struct.sock*, %struct.sock** %12, align 8
  %116 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %115)
  store %struct.dccp_sock* %116, %struct.dccp_sock** %8, align 8
  %117 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %118 = call i32 @dccp_hdr_seq(%struct.dccp_hdr* %117)
  store i32 %118, i32* %13, align 4
  %119 = load %struct.sock*, %struct.sock** %12, align 8
  %120 = getelementptr inbounds %struct.sock, %struct.sock* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 1, %121
  %123 = load i32, i32* @DCCPF_REQUESTING, align 4
  %124 = load i32, i32* @DCCPF_LISTEN, align 4
  %125 = or i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = and i32 %122, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %114
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %132 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %135 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @between48(i32 %130, i32 %133, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %129
  %140 = load %struct.net*, %struct.net** %15, align 8
  %141 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %142 = call i32 @NET_INC_STATS_BH(%struct.net* %140, i32 %141)
  br label %268

143:                                              ; preds = %129, %114
  %144 = load i32, i32* %10, align 4
  switch i32 %144, label %176 [
    i32 129, label %145
    i32 130, label %146
    i32 131, label %148
    i32 128, label %174
  ]

145:                                              ; preds = %143
  br label %268

146:                                              ; preds = %143
  %147 = load i32, i32* @EPROTO, align 4
  store i32 %147, i32* %14, align 4
  br label %177

148:                                              ; preds = %143
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %268

153:                                              ; preds = %148
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  %158 = load %struct.sock*, %struct.sock** %12, align 8
  %159 = call i64 @sock_owned_by_user(%struct.sock* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load %struct.sock*, %struct.sock** %12, align 8
  %163 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @dccp_do_pmtu_discovery(%struct.sock* %162, %struct.iphdr* %163, i32 %164)
  br label %166

166:                                              ; preds = %161, %157
  br label %268

167:                                              ; preds = %153
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** @icmp_err_convert, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %14, align 4
  br label %177

174:                                              ; preds = %143
  %175 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %175, i32* %14, align 4
  br label %177

176:                                              ; preds = %143
  br label %268

177:                                              ; preds = %174, %167, %146
  %178 = load %struct.sock*, %struct.sock** %12, align 8
  %179 = getelementptr inbounds %struct.sock, %struct.sock* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  switch i32 %180, label %243 [
    i32 134, label %181
    i32 133, label %221
    i32 132, label %221
  ]

181:                                              ; preds = %177
  %182 = load %struct.sock*, %struct.sock** %12, align 8
  %183 = call i64 @sock_owned_by_user(%struct.sock* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %268

186:                                              ; preds = %181
  %187 = load %struct.sock*, %struct.sock** %12, align 8
  %188 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %189 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %192 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %195 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call %struct.request_sock* @inet_csk_search_req(%struct.sock* %187, %struct.request_sock*** %17, i32 %190, i32 %193, i32 %196)
  store %struct.request_sock* %197, %struct.request_sock** %16, align 8
  %198 = load %struct.request_sock*, %struct.request_sock** %16, align 8
  %199 = icmp ne %struct.request_sock* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %186
  br label %268

201:                                              ; preds = %186
  %202 = load %struct.request_sock*, %struct.request_sock** %16, align 8
  %203 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @WARN_ON(i32 %204)
  %206 = load i32, i32* %13, align 4
  %207 = load %struct.request_sock*, %struct.request_sock** %16, align 8
  %208 = call %struct.TYPE_6__* @dccp_rsk(%struct.request_sock* %207)
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %206, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %201
  %213 = load %struct.net*, %struct.net** %15, align 8
  %214 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %215 = call i32 @NET_INC_STATS_BH(%struct.net* %213, i32 %214)
  br label %268

216:                                              ; preds = %201
  %217 = load %struct.sock*, %struct.sock** %12, align 8
  %218 = load %struct.request_sock*, %struct.request_sock** %16, align 8
  %219 = load %struct.request_sock**, %struct.request_sock*** %17, align 8
  %220 = call i32 @inet_csk_reqsk_queue_drop(%struct.sock* %217, %struct.request_sock* %218, %struct.request_sock** %219)
  br label %268

221:                                              ; preds = %177, %177
  %222 = load %struct.sock*, %struct.sock** %12, align 8
  %223 = call i64 @sock_owned_by_user(%struct.sock* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %238, label %225

225:                                              ; preds = %221
  %226 = load i32, i32* @DCCP_MIB_ATTEMPTFAILS, align 4
  %227 = call i32 @DCCP_INC_STATS_BH(i32 %226)
  %228 = load i32, i32* %14, align 4
  %229 = load %struct.sock*, %struct.sock** %12, align 8
  %230 = getelementptr inbounds %struct.sock, %struct.sock* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load %struct.sock*, %struct.sock** %12, align 8
  %232 = getelementptr inbounds %struct.sock, %struct.sock* %231, i32 0, i32 3
  %233 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %232, align 8
  %234 = load %struct.sock*, %struct.sock** %12, align 8
  %235 = call i32 %233(%struct.sock* %234)
  %236 = load %struct.sock*, %struct.sock** %12, align 8
  %237 = call i32 @dccp_done(%struct.sock* %236)
  br label %242

238:                                              ; preds = %221
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.sock*, %struct.sock** %12, align 8
  %241 = getelementptr inbounds %struct.sock, %struct.sock* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  br label %242

242:                                              ; preds = %238, %225
  br label %268

243:                                              ; preds = %177
  %244 = load %struct.sock*, %struct.sock** %12, align 8
  %245 = call %struct.inet_sock* @inet_sk(%struct.sock* %244)
  store %struct.inet_sock* %245, %struct.inet_sock** %9, align 8
  %246 = load %struct.sock*, %struct.sock** %12, align 8
  %247 = call i64 @sock_owned_by_user(%struct.sock* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %263, label %249

249:                                              ; preds = %243
  %250 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %251 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %249
  %255 = load i32, i32* %14, align 4
  %256 = load %struct.sock*, %struct.sock** %12, align 8
  %257 = getelementptr inbounds %struct.sock, %struct.sock* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 4
  %258 = load %struct.sock*, %struct.sock** %12, align 8
  %259 = getelementptr inbounds %struct.sock, %struct.sock* %258, i32 0, i32 3
  %260 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %259, align 8
  %261 = load %struct.sock*, %struct.sock** %12, align 8
  %262 = call i32 %260(%struct.sock* %261)
  br label %267

263:                                              ; preds = %249, %243
  %264 = load i32, i32* %14, align 4
  %265 = load %struct.sock*, %struct.sock** %12, align 8
  %266 = getelementptr inbounds %struct.sock, %struct.sock* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  br label %267

267:                                              ; preds = %263, %254
  br label %268

268:                                              ; preds = %267, %242, %216, %212, %200, %185, %176, %166, %152, %145, %139, %113
  %269 = load %struct.sock*, %struct.sock** %12, align 8
  %270 = call i32 @bh_unlock_sock(%struct.sock* %269)
  %271 = load %struct.sock*, %struct.sock** %12, align 8
  %272 = call i32 @sock_put(%struct.sock* %271)
  br label %273

273:                                              ; preds = %268, %93, %83, %60
  ret void
}

declare dso_local %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i64 @__dccp_basic_hdr_len(%struct.dccp_hdr*) #1

declare dso_local i32 @ICMP_INC_STATS_BH(%struct.net*, i32) #1

declare dso_local %struct.sock* @inet_lookup(%struct.net*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(%struct.net*, i32) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_hdr_seq(%struct.dccp_hdr*) #1

declare dso_local i32 @between48(i32, i32, i32) #1

declare dso_local i32 @dccp_do_pmtu_discovery(%struct.sock*, %struct.iphdr*, i32) #1

declare dso_local %struct.request_sock* @inet_csk_search_req(%struct.sock*, %struct.request_sock***, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_6__* @dccp_rsk(%struct.request_sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(%struct.sock*, %struct.request_sock*, %struct.request_sock**) #1

declare dso_local i32 @DCCP_INC_STATS_BH(i32) #1

declare dso_local i32 @dccp_done(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
