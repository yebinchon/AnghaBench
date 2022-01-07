; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.msghdr = type { i32, i32, i32, i64 }
%struct.dn_scp = type { i64, i8, i64, i32, i32, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sockaddr_dn = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dn_skb_cb = type { i32 }

@MSG_TRYHARD = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@NSP_FC_MASK = common dso_local global i8 0, align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@dn_nsp_xmit_timeout = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SOCK_ASYNC_WAITDATA = common dso_local global i32 0, align 4
@DN_MAX_NSP_DATA_HEADER = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@NSP_FC_NONE = common dso_local global i8 0, align 1
@NSP_FC_SCMC = common dso_local global i8 0, align 1
@NSP_FC_SRC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @dn_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.dn_scp*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr_dn*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca %struct.dn_skb_cb*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  store %struct.sock* %26, %struct.sock** %10, align 8
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = call %struct.dn_scp* @DN_SK(%struct.sock* %27)
  store %struct.dn_scp* %28, %struct.dn_scp** %11, align 8
  %29 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %30 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %29, i32 0, i32 8
  store %struct.sk_buff_head* %30, %struct.sk_buff_head** %13, align 8
  %31 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %34 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.sockaddr_dn*
  store %struct.sockaddr_dn* %40, %struct.sockaddr_dn** %18, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %19, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @MSG_TRYHARD, align 4
  %43 = load i32, i32* @MSG_OOB, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MSG_DONTWAIT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MSG_EOR, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MSG_NOSIGNAL, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MSG_MORE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %41, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %4
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %398

61:                                               ; preds = %4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 4
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %398

71:                                               ; preds = %64, %61
  %72 = load %struct.sock*, %struct.sock** %10, align 8
  %73 = call i32 @lock_sock(%struct.sock* %72)
  %74 = load %struct.sock*, %struct.sock** %10, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @MSG_DONTWAIT, align 4
  %77 = and i32 %75, %76
  %78 = call i64 @sock_sndtimeo(%struct.sock* %74, i32 %77)
  store i64 %78, i64* %23, align 8
  %79 = load %struct.socket*, %struct.socket** %7, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SOCK_STREAM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %71
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @MSG_EOR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %15, align 4
  br label %375

92:                                               ; preds = %84
  %93 = load i32, i32* @MSG_EOR, align 4
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %92, %71
  %97 = load %struct.sock*, %struct.sock** %10, align 8
  %98 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %18, align 8
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @dn_check_state(%struct.sock* %97, %struct.sockaddr_dn* %98, i32 %99, i64* %23, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %390

105:                                              ; preds = %96
  %106 = load %struct.sock*, %struct.sock** %10, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SEND_SHUTDOWN, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load i32, i32* @EPIPE, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @MSG_NOSIGNAL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %112
  %120 = load i32, i32* @SIGPIPE, align 4
  %121 = load i32, i32* @current, align 4
  %122 = call i32 @send_sig(i32 %120, i32 %121, i32 0)
  br label %123

123:                                              ; preds = %119, %112
  br label %390

124:                                              ; preds = %105
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @MSG_TRYHARD, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = load %struct.sock*, %struct.sock** %10, align 8
  %131 = getelementptr inbounds %struct.sock, %struct.sock* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.sock*, %struct.sock** %10, align 8
  %136 = getelementptr inbounds %struct.sock, %struct.sock* %135, i32 0, i32 4
  %137 = call i32 @dst_negative_advice(i64* %136)
  br label %138

138:                                              ; preds = %134, %129, %124
  %139 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %140 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %12, align 8
  %142 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %143 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %142, i32 0, i32 1
  %144 = load i8, i8* %143, align 8
  %145 = zext i8 %144 to i32
  %146 = load i8, i8* @NSP_FC_MASK, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %145, %147
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %22, align 1
  %150 = load %struct.sock*, %struct.sock** %10, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call i64 @dn_current_mss(%struct.sock* %150, i32 %151)
  store i64 %152, i64* %12, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @MSG_OOB, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %138
  %158 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %159 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %158, i32 0, i32 7
  store %struct.sk_buff_head* %159, %struct.sk_buff_head** %13, align 8
  %160 = load i64, i64* %9, align 8
  %161 = load i64, i64* %12, align 8
  %162 = icmp ugt i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32, i32* @EMSGSIZE, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %15, align 4
  br label %375

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166, %138
  %168 = load i32, i32* @dn_nsp_xmit_timeout, align 4
  %169 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %170 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %357, %260, %213, %167
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %9, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %374

175:                                              ; preds = %171
  %176 = load %struct.sock*, %struct.sock** %10, align 8
  %177 = call i32 @sock_error(%struct.sock* %176)
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %375

181:                                              ; preds = %175
  %182 = load i32, i32* @current, align 4
  %183 = call i64 @signal_pending(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i64, i64* %23, align 8
  %187 = call i32 @sock_intr_errno(i64 %186)
  store i32 %187, i32* %15, align 4
  br label %375

188:                                              ; preds = %181
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* %16, align 8
  %191 = sub i64 %189, %190
  store i64 %191, i64* %21, align 8
  %192 = load i64, i64* %21, align 8
  %193 = load i64, i64* %12, align 8
  %194 = icmp ugt i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = load i64, i64* %12, align 8
  store i64 %196, i64* %21, align 8
  br label %197

197:                                              ; preds = %195, %188
  %198 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %199 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %200 = load i32, i32* %14, align 4
  %201 = call i64 @dn_queue_too_long(%struct.dn_scp* %198, %struct.sk_buff_head* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %244

203:                                              ; preds = %197
  %204 = load i32, i32* @wait, align 4
  %205 = call i32 @DEFINE_WAIT(i32 %204)
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* @MSG_DONTWAIT, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = load i32, i32* @EWOULDBLOCK, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %15, align 4
  br label %375

213:                                              ; preds = %203
  %214 = load %struct.sock*, %struct.sock** %10, align 8
  %215 = getelementptr inbounds %struct.sock, %struct.sock* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %218 = call i32 @prepare_to_wait(i32 %216, i32* @wait, i32 %217)
  %219 = load i32, i32* @SOCK_ASYNC_WAITDATA, align 4
  %220 = load %struct.sock*, %struct.sock** %10, align 8
  %221 = getelementptr inbounds %struct.sock, %struct.sock* %220, i32 0, i32 3
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = call i32 @set_bit(i32 %219, i32* %223)
  %225 = load %struct.sock*, %struct.sock** %10, align 8
  %226 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %227 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %228 = load i32, i32* %14, align 4
  %229 = call i64 @dn_queue_too_long(%struct.dn_scp* %226, %struct.sk_buff_head* %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = call i32 @sk_wait_event(%struct.sock* %225, i64* %23, i32 %232)
  %234 = load i32, i32* @SOCK_ASYNC_WAITDATA, align 4
  %235 = load %struct.sock*, %struct.sock** %10, align 8
  %236 = getelementptr inbounds %struct.sock, %struct.sock* %235, i32 0, i32 3
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = call i32 @clear_bit(i32 %234, i32* %238)
  %240 = load %struct.sock*, %struct.sock** %10, align 8
  %241 = getelementptr inbounds %struct.sock, %struct.sock* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @finish_wait(i32 %242, i32* @wait)
  br label %171

244:                                              ; preds = %197
  %245 = load %struct.sock*, %struct.sock** %10, align 8
  %246 = load i64, i64* %21, align 8
  %247 = add i64 %246, 64
  %248 = load i64, i64* @DN_MAX_NSP_DATA_HEADER, align 8
  %249 = add i64 %247, %248
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* @MSG_DONTWAIT, align 4
  %252 = and i32 %250, %251
  %253 = call %struct.sk_buff* @dn_alloc_send_pskb(%struct.sock* %245, i64 %249, i32 %252, i32* %15)
  store %struct.sk_buff* %253, %struct.sk_buff** %19, align 8
  %254 = load i32, i32* %15, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %244
  br label %374

257:                                              ; preds = %244
  %258 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %259 = icmp ne %struct.sk_buff* %258, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %257
  br label %171

261:                                              ; preds = %257
  %262 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %263 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %262)
  store %struct.dn_skb_cb* %263, %struct.dn_skb_cb** %20, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %265 = load i64, i64* @DN_MAX_NSP_DATA_HEADER, align 8
  %266 = add nsw i64 64, %265
  %267 = call i32 @skb_reserve(%struct.sk_buff* %264, i64 %266)
  %268 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %269 = load i64, i64* %21, align 8
  %270 = call i32 @skb_put(%struct.sk_buff* %268, i64 %269)
  %271 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %272 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i64, i64* %21, align 8
  %275 = call i64 @memcpy_fromiovec(i32 %270, i32 %273, i64 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %261
  %278 = load i32, i32* @EFAULT, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %15, align 4
  br label %375

280:                                              ; preds = %261
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* @MSG_OOB, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %299

285:                                              ; preds = %280
  %286 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %20, align 8
  %287 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %286, i32 0, i32 0
  store i32 48, i32* %287, align 4
  %288 = load i8, i8* %22, align 1
  %289 = zext i8 %288 to i32
  %290 = load i8, i8* @NSP_FC_NONE, align 1
  %291 = zext i8 %290 to i32
  %292 = icmp ne i32 %289, %291
  br i1 %292, label %293, label %298

293:                                              ; preds = %285
  %294 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %295 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %293, %285
  br label %357

299:                                              ; preds = %280
  %300 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %20, align 8
  %301 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %300, i32 0, i32 0
  store i32 0, i32* %301, align 4
  %302 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %303 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %299
  %307 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %20, align 8
  %308 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, 32
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %306, %299
  %312 = load i64, i64* %21, align 8
  %313 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %314 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = add i64 %315, %312
  store i64 %316, i64* %314, align 8
  %317 = load i64, i64* %16, align 8
  %318 = load i64, i64* %21, align 8
  %319 = add i64 %317, %318
  %320 = load i64, i64* %9, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %345

322:                                              ; preds = %311
  %323 = load i32, i32* %14, align 4
  %324 = load i32, i32* @MSG_EOR, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %345

327:                                              ; preds = %322
  %328 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %20, align 8
  %329 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = or i32 %330, 64
  store i32 %331, i32* %329, align 4
  %332 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %333 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %332, i32 0, i32 2
  store i64 0, i64* %333, align 8
  %334 = load i8, i8* %22, align 1
  %335 = zext i8 %334 to i32
  %336 = load i8, i8* @NSP_FC_SCMC, align 1
  %337 = zext i8 %336 to i32
  %338 = icmp eq i32 %335, %337
  br i1 %338, label %339, label %344

339:                                              ; preds = %327
  %340 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %341 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %341, align 4
  br label %344

344:                                              ; preds = %339, %327
  br label %345

345:                                              ; preds = %344, %322, %311
  %346 = load i8, i8* %22, align 1
  %347 = zext i8 %346 to i32
  %348 = load i8, i8* @NSP_FC_SRC, align 1
  %349 = zext i8 %348 to i32
  %350 = icmp eq i32 %347, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %345
  %352 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %353 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %353, align 4
  br label %356

356:                                              ; preds = %351, %345
  br label %357

357:                                              ; preds = %356, %298
  %358 = load i64, i64* %21, align 8
  %359 = load i64, i64* %16, align 8
  %360 = add i64 %359, %358
  store i64 %360, i64* %16, align 8
  %361 = load %struct.sock*, %struct.sock** %10, align 8
  %362 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %363 = load %struct.sock*, %struct.sock** %10, align 8
  %364 = getelementptr inbounds %struct.sock, %struct.sock* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* @MSG_OOB, align 4
  %368 = and i32 %366, %367
  %369 = call i32 @dn_nsp_queue_xmit(%struct.sock* %361, %struct.sk_buff* %362, i32 %365, i32 %368)
  store %struct.sk_buff* null, %struct.sk_buff** %19, align 8
  %370 = load %struct.sock*, %struct.sock** %10, align 8
  %371 = call i32 @dn_nsp_persist(%struct.sock* %370)
  %372 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %373 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %372, i32 0, i32 3
  store i32 %371, i32* %373, align 8
  br label %171

374:                                              ; preds = %256, %171
  br label %375

375:                                              ; preds = %374, %277, %210, %185, %180, %163, %89
  %376 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %377 = call i32 @kfree_skb(%struct.sk_buff* %376)
  %378 = load %struct.sock*, %struct.sock** %10, align 8
  %379 = call i32 @release_sock(%struct.sock* %378)
  %380 = load i64, i64* %16, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %375
  %383 = load i64, i64* %16, align 8
  br label %387

384:                                              ; preds = %375
  %385 = load i32, i32* %15, align 4
  %386 = sext i32 %385 to i64
  br label %387

387:                                              ; preds = %384, %382
  %388 = phi i64 [ %383, %382 ], [ %386, %384 ]
  %389 = trunc i64 %388 to i32
  store i32 %389, i32* %5, align 4
  br label %398

390:                                              ; preds = %123, %104
  %391 = load %struct.sock*, %struct.sock** %10, align 8
  %392 = load i32, i32* %14, align 4
  %393 = load i32, i32* %15, align 4
  %394 = call i32 @sk_stream_error(%struct.sock* %391, i32 %392, i32 %393)
  store i32 %394, i32* %15, align 4
  %395 = load %struct.sock*, %struct.sock** %10, align 8
  %396 = call i32 @release_sock(%struct.sock* %395)
  %397 = load i32, i32* %15, align 4
  store i32 %397, i32* %5, align 4
  br label %398

398:                                              ; preds = %390, %387, %68, %58
  %399 = load i32, i32* %5, align 4
  ret i32 %399
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @dn_check_state(%struct.sock*, %struct.sockaddr_dn*, i32, i64*, i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @dst_negative_advice(i64*) #1

declare dso_local i64 @dn_current_mss(%struct.sock*, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @dn_queue_too_long(%struct.dn_scp*, %struct.sk_buff_head*, i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local %struct.sk_buff* @dn_alloc_send_pskb(%struct.sock*, i64, i32, i32*) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @dn_nsp_queue_xmit(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dn_nsp_persist(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sk_stream_error(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
