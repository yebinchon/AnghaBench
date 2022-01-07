; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_rcv_state_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_rcv_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 (%struct.sock*)*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i64, i32, i64, i32, i32 }
%struct.tcp_sock = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.inet_connection_sock = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.sock*)*, i32 (%struct.sock*, %struct.sk_buff*)* }
%struct.TYPE_6__ = type { i64, i64, i32 }

@FLAG_SLOWPATH = common dso_local global i32 0, align 4
@SOCK_WAKE_IO = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i32 0, align 4
@tcp_time_stamp = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@LINUX_MIB_TCPABORTONDATA = common dso_local global i32 0, align 4
@TCP_TIMEWAIT_LEN = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_rcv_state_process(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcphdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca %struct.inet_connection_sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %15)
  store %struct.tcp_sock* %16, %struct.tcp_sock** %10, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %17)
  store %struct.inet_connection_sock* %18, %struct.inet_connection_sock** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %83 [
    i32 137, label %25
    i32 130, label %26
    i32 128, label %64
  ]

25:                                               ; preds = %4
  br label %403

26:                                               ; preds = %4
  %27 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %28 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %407

32:                                               ; preds = %26
  %33 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %34 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %403

38:                                               ; preds = %32
  %39 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %40 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %45 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %403

49:                                               ; preds = %43
  %50 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %51 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %53, align 8
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i32 %54(%struct.sock* %55, %struct.sk_buff* %56)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %407

60:                                               ; preds = %49
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  store i32 0, i32* %5, align 4
  br label %407

63:                                               ; preds = %38
  br label %403

64:                                               ; preds = %4
  %65 = load %struct.sock*, %struct.sock** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @tcp_rcv_synsent_state_process(%struct.sock* %65, %struct.sk_buff* %66, %struct.tcphdr* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %407

74:                                               ; preds = %64
  %75 = load %struct.sock*, %struct.sock** %6, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %78 = call i32 @tcp_urg(%struct.sock* %75, %struct.sk_buff* %76, %struct.tcphdr* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i32 @__kfree_skb(%struct.sk_buff* %79)
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = call i32 @tcp_data_snd_check(%struct.sock* %81)
  store i32 0, i32* %5, align 4
  br label %407

83:                                               ; preds = %4
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %87 = call i32 @tcp_validate_incoming(%struct.sock* %84, %struct.sk_buff* %85, %struct.tcphdr* %86, i32 0)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %407

90:                                               ; preds = %83
  %91 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %92 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %318

95:                                               ; preds = %90
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = load i32, i32* @FLAG_SLOWPATH, align 4
  %99 = call i64 @tcp_ack(%struct.sock* %96, %struct.sk_buff* %97, i32 %98)
  %100 = icmp sgt i64 %99, 0
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load %struct.sock*, %struct.sock** %6, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  switch i32 %104, label %317 [
    i32 129, label %105
    i32 133, label %191
    i32 135, label %290
    i32 131, label %303
  ]

105:                                              ; preds = %95
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %189

108:                                              ; preds = %105
  %109 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %110 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %113 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 8
  %114 = call i32 (...) @smp_mb()
  %115 = load %struct.sock*, %struct.sock** %6, align 8
  %116 = call i32 @tcp_set_state(%struct.sock* %115, i32 134)
  %117 = load %struct.sock*, %struct.sock** %6, align 8
  %118 = getelementptr inbounds %struct.sock, %struct.sock* %117, i32 0, i32 2
  %119 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %118, align 8
  %120 = load %struct.sock*, %struct.sock** %6, align 8
  %121 = call i32 %119(%struct.sock* %120)
  %122 = load %struct.sock*, %struct.sock** %6, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %108
  %127 = load %struct.sock*, %struct.sock** %6, align 8
  %128 = load i32, i32* @SOCK_WAKE_IO, align 4
  %129 = load i32, i32* @POLL_OUT, align 4
  %130 = call i32 @sk_wake_async(%struct.sock* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %108
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %137 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %139 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ntohs(i32 %140)
  %142 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %143 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %141, %145
  %147 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %148 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %151 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %150)
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @tcp_init_wl(%struct.tcp_sock* %149, i64 %153)
  %155 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %156 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %131
  %161 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %162 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %163 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %131
  %167 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %168 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %167, i32 0, i32 0
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %170, align 8
  %172 = load %struct.sock*, %struct.sock** %6, align 8
  %173 = call i32 %171(%struct.sock* %172)
  %174 = load %struct.sock*, %struct.sock** %6, align 8
  %175 = call i32 @tcp_init_metrics(%struct.sock* %174)
  %176 = load %struct.sock*, %struct.sock** %6, align 8
  %177 = call i32 @tcp_init_congestion_control(%struct.sock* %176)
  %178 = load i32, i32* @tcp_time_stamp, align 4
  %179 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %180 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load %struct.sock*, %struct.sock** %6, align 8
  %182 = call i32 @tcp_mtup_init(%struct.sock* %181)
  %183 = load %struct.sock*, %struct.sock** %6, align 8
  %184 = call i32 @tcp_initialize_rcv_mss(%struct.sock* %183)
  %185 = load %struct.sock*, %struct.sock** %6, align 8
  %186 = call i32 @tcp_init_buffer_space(%struct.sock* %185)
  %187 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %188 = call i32 @tcp_fast_path_on(%struct.tcp_sock* %187)
  br label %190

189:                                              ; preds = %105
  store i32 1, i32* %5, align 4
  br label %407

190:                                              ; preds = %166
  br label %317

191:                                              ; preds = %95
  %192 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %193 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %196 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %194, %197
  br i1 %198, label %199, label %289

199:                                              ; preds = %191
  %200 = load %struct.sock*, %struct.sock** %6, align 8
  %201 = call i32 @tcp_set_state(%struct.sock* %200, i32 132)
  %202 = load i32, i32* @SEND_SHUTDOWN, align 4
  %203 = load %struct.sock*, %struct.sock** %6, align 8
  %204 = getelementptr inbounds %struct.sock, %struct.sock* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load %struct.sock*, %struct.sock** %6, align 8
  %208 = getelementptr inbounds %struct.sock, %struct.sock* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @dst_confirm(i32 %209)
  %211 = load %struct.sock*, %struct.sock** %6, align 8
  %212 = load i32, i32* @SOCK_DEAD, align 4
  %213 = call i32 @sock_flag(%struct.sock* %211, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %199
  %216 = load %struct.sock*, %struct.sock** %6, align 8
  %217 = getelementptr inbounds %struct.sock, %struct.sock* %216, i32 0, i32 2
  %218 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %217, align 8
  %219 = load %struct.sock*, %struct.sock** %6, align 8
  %220 = call i32 %218(%struct.sock* %219)
  br label %288

221:                                              ; preds = %199
  %222 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %223 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %250, label %226

226:                                              ; preds = %221
  %227 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %228 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %227)
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %232 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %231)
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %230, %234
  br i1 %235, label %236, label %257

236:                                              ; preds = %226
  %237 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %238 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %237)
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %242 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %240, %243
  %245 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %246 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @after(i64 %244, i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %236, %221
  %251 = load %struct.sock*, %struct.sock** %6, align 8
  %252 = call i32 @tcp_done(%struct.sock* %251)
  %253 = load %struct.sock*, %struct.sock** %6, align 8
  %254 = call i32 @sock_net(%struct.sock* %253)
  %255 = load i32, i32* @LINUX_MIB_TCPABORTONDATA, align 4
  %256 = call i32 @NET_INC_STATS_BH(i32 %254, i32 %255)
  store i32 1, i32* %5, align 4
  br label %407

257:                                              ; preds = %236, %226
  %258 = load %struct.sock*, %struct.sock** %6, align 8
  %259 = call i32 @tcp_fin_time(%struct.sock* %258)
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %257
  %264 = load %struct.sock*, %struct.sock** %6, align 8
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %267 = sub nsw i32 %265, %266
  %268 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %264, i32 %267)
  br label %287

269:                                              ; preds = %257
  %270 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %271 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %269
  %275 = load %struct.sock*, %struct.sock** %6, align 8
  %276 = call i32 @sock_owned_by_user(%struct.sock* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %274, %269
  %279 = load %struct.sock*, %struct.sock** %6, align 8
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %279, i32 %280)
  br label %286

282:                                              ; preds = %274
  %283 = load %struct.sock*, %struct.sock** %6, align 8
  %284 = load i32, i32* %14, align 4
  %285 = call i32 @tcp_time_wait(%struct.sock* %283, i32 132, i32 %284)
  br label %403

286:                                              ; preds = %278
  br label %287

287:                                              ; preds = %286, %263
  br label %288

288:                                              ; preds = %287, %215
  br label %289

289:                                              ; preds = %288, %191
  br label %317

290:                                              ; preds = %95
  %291 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %292 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %295 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = icmp eq i32 %293, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %290
  %299 = load %struct.sock*, %struct.sock** %6, align 8
  %300 = load i32, i32* @TCP_TIME_WAIT, align 4
  %301 = call i32 @tcp_time_wait(%struct.sock* %299, i32 %300, i32 0)
  br label %403

302:                                              ; preds = %290
  br label %317

303:                                              ; preds = %95
  %304 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %305 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %308 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = icmp eq i32 %306, %309
  br i1 %310, label %311, label %316

311:                                              ; preds = %303
  %312 = load %struct.sock*, %struct.sock** %6, align 8
  %313 = call i32 @tcp_update_metrics(%struct.sock* %312)
  %314 = load %struct.sock*, %struct.sock** %6, align 8
  %315 = call i32 @tcp_done(%struct.sock* %314)
  br label %403

316:                                              ; preds = %303
  br label %317

317:                                              ; preds = %95, %316, %302, %289, %190
  br label %319

318:                                              ; preds = %90
  br label %403

319:                                              ; preds = %317
  %320 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %321 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %322 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %321)
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = call i32 @tcp_replace_ts_recent(%struct.tcp_sock* %320, i64 %324)
  %326 = load %struct.sock*, %struct.sock** %6, align 8
  %327 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %328 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %329 = call i32 @tcp_urg(%struct.sock* %326, %struct.sk_buff* %327, %struct.tcphdr* %328)
  %330 = load %struct.sock*, %struct.sock** %6, align 8
  %331 = getelementptr inbounds %struct.sock, %struct.sock* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  switch i32 %332, label %389 [
    i32 136, label %333
    i32 135, label %333
    i32 131, label %333
    i32 133, label %345
    i32 132, label %345
    i32 134, label %385
  ]

333:                                              ; preds = %319, %319, %319
  %334 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %335 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %334)
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %339 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @before(i64 %337, i32 %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %333
  br label %389

344:                                              ; preds = %333
  br label %345

345:                                              ; preds = %319, %319, %344
  %346 = load %struct.sock*, %struct.sock** %6, align 8
  %347 = getelementptr inbounds %struct.sock, %struct.sock* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @RCV_SHUTDOWN, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %384

352:                                              ; preds = %345
  %353 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %354 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %353)
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %358 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %357)
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %356, %360
  br i1 %361, label %362, label %383

362:                                              ; preds = %352
  %363 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %364 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %363)
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %368 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = sub nsw i64 %366, %369
  %371 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %372 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @after(i64 %370, i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %362
  %377 = load %struct.sock*, %struct.sock** %6, align 8
  %378 = call i32 @sock_net(%struct.sock* %377)
  %379 = load i32, i32* @LINUX_MIB_TCPABORTONDATA, align 4
  %380 = call i32 @NET_INC_STATS_BH(i32 %378, i32 %379)
  %381 = load %struct.sock*, %struct.sock** %6, align 8
  %382 = call i32 @tcp_reset(%struct.sock* %381)
  store i32 1, i32* %5, align 4
  br label %407

383:                                              ; preds = %362, %352
  br label %384

384:                                              ; preds = %383, %345
  br label %385

385:                                              ; preds = %319, %384
  %386 = load %struct.sock*, %struct.sock** %6, align 8
  %387 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %388 = call i32 @tcp_data_queue(%struct.sock* %386, %struct.sk_buff* %387)
  store i32 1, i32* %12, align 4
  br label %389

389:                                              ; preds = %319, %385, %343
  %390 = load %struct.sock*, %struct.sock** %6, align 8
  %391 = getelementptr inbounds %struct.sock, %struct.sock* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %392, 137
  br i1 %393, label %394, label %399

394:                                              ; preds = %389
  %395 = load %struct.sock*, %struct.sock** %6, align 8
  %396 = call i32 @tcp_data_snd_check(%struct.sock* %395)
  %397 = load %struct.sock*, %struct.sock** %6, align 8
  %398 = call i32 @tcp_ack_snd_check(%struct.sock* %397)
  br label %399

399:                                              ; preds = %394, %389
  %400 = load i32, i32* %12, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %406, label %402

402:                                              ; preds = %399
  br label %403

403:                                              ; preds = %402, %318, %311, %298, %282, %63, %48, %37, %25
  %404 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %405 = call i32 @__kfree_skb(%struct.sk_buff* %404)
  br label %406

406:                                              ; preds = %403, %399
  store i32 0, i32* %5, align 4
  br label %407

407:                                              ; preds = %406, %376, %250, %189, %89, %74, %72, %60, %59, %31
  %408 = load i32, i32* %5, align 4
  ret i32 %408
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @tcp_rcv_synsent_state_process(%struct.sock*, %struct.sk_buff*, %struct.tcphdr*, i32) #1

declare dso_local i32 @tcp_urg(%struct.sock*, %struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @tcp_data_snd_check(%struct.sock*) #1

declare dso_local i32 @tcp_validate_incoming(%struct.sock*, %struct.sk_buff*, %struct.tcphdr*, i32) #1

declare dso_local i64 @tcp_ack(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @tcp_init_wl(%struct.tcp_sock*, i64) #1

declare dso_local i32 @tcp_init_metrics(%struct.sock*) #1

declare dso_local i32 @tcp_init_congestion_control(%struct.sock*) #1

declare dso_local i32 @tcp_mtup_init(%struct.sock*) #1

declare dso_local i32 @tcp_initialize_rcv_mss(%struct.sock*) #1

declare dso_local i32 @tcp_init_buffer_space(%struct.sock*) #1

declare dso_local i32 @tcp_fast_path_on(%struct.tcp_sock*) #1

declare dso_local i32 @dst_confirm(i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @after(i64, i32) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_fin_time(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_keepalive_timer(%struct.sock*, i32) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @tcp_time_wait(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_update_metrics(%struct.sock*) #1

declare dso_local i32 @tcp_replace_ts_recent(%struct.tcp_sock*, i64) #1

declare dso_local i32 @before(i64, i32) #1

declare dso_local i32 @tcp_reset(%struct.sock*) #1

declare dso_local i32 @tcp_data_queue(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_ack_snd_check(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
