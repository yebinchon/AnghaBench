; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.inet_connection_sock = type { i64, i64 }
%struct.tcp_sock = type { i64, i64, i64, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@FLAG_SND_UNA_ADVANCED = common dso_local global i32 0, align 4
@sysctl_tcp_abc = common dso_local global i64 0, align 8
@TCP_CA_CWR = common dso_local global i64 0, align 8
@TCP_CA_Loss = common dso_local global i64 0, align 8
@FLAG_SLOWPATH = common dso_local global i32 0, align 4
@FLAG_WIN_UPDATE = common dso_local global i32 0, align 4
@CA_EVENT_FAST_ACK = common dso_local global i32 0, align 4
@LINUX_MIB_TCPHPACKS = common dso_local global i32 0, align 4
@FLAG_DATA = common dso_local global i32 0, align 4
@LINUX_MIB_TCPPUREACKS = common dso_local global i32 0, align 4
@FLAG_ECE = common dso_local global i32 0, align 4
@CA_EVENT_SLOW_ACK = common dso_local global i32 0, align 4
@tcp_time_stamp = common dso_local global i32 0, align 4
@FLAG_DATA_ACKED = common dso_local global i32 0, align 4
@FLAG_NOT_DUP = common dso_local global i32 0, align 4
@FLAG_FORWARD_PROGRESS = common dso_local global i32 0, align 4
@FLAG_DSACKING_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Ack %u after %u:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Ack %u before %u:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @tcp_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_ack(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_connection_sock*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %23)
  store %struct.inet_connection_sock* %24, %struct.inet_connection_sock** %8, align 8
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %25)
  store %struct.tcp_sock* %26, %struct.tcp_sock** %9, align 8
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %16, align 8
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @before(i64 %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %3
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %55 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = call i64 @before(i64 %52, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.sock*, %struct.sock** %5, align 8
  %62 = call i32 @tcp_send_challenge_ack(%struct.sock* %61)
  store i32 -1, i32* %4, align 4
  br label %408

63:                                               ; preds = %51
  br label %374

64:                                               ; preds = %3
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %67 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @after(i64 %65, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %364

72:                                               ; preds = %64
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i64 @after(i64 %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @FLAG_SND_UNA_ADVANCED, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i64, i64* @sysctl_tcp_abc, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %122

84:                                               ; preds = %81
  %85 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %86 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TCP_CA_CWR, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %10, align 8
  %93 = sub nsw i64 %91, %92
  %94 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %95 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %94, i32 0, i32 12
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 8
  br label %121

100:                                              ; preds = %84
  %101 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %102 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TCP_CA_Loss, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %100
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %10, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %111 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @min(i64 %109, i32 %112)
  %114 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %115 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %114, i32 0, i32 12
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %113
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 8
  br label %120

120:                                              ; preds = %106, %100
  br label %121

121:                                              ; preds = %120, %90
  br label %122

122:                                              ; preds = %121, %81
  %123 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %124 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %17, align 8
  %126 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %127 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %126)
  store i64 %127, i64* %14, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @FLAG_SLOWPATH, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %154, label %132

132:                                              ; preds = %122
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* %10, align 8
  %135 = call i64 @after(i64 %133, i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %139 = load i64, i64* %11, align 8
  %140 = call i32 @tcp_update_wl(%struct.tcp_sock* %138, i64 %139)
  %141 = load i64, i64* %12, align 8
  %142 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %143 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* @FLAG_WIN_UPDATE, align 4
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  %147 = load %struct.sock*, %struct.sock** %5, align 8
  %148 = load i32, i32* @CA_EVENT_FAST_ACK, align 4
  %149 = call i32 @tcp_ca_event(%struct.sock* %147, i32 %148)
  %150 = load %struct.sock*, %struct.sock** %5, align 8
  %151 = call i32 @sock_net(%struct.sock* %150)
  %152 = load i32, i32* @LINUX_MIB_TCPHPACKS, align 4
  %153 = call i32 @NET_INC_STATS_BH(i32 %151, i32 %152)
  br label %204

154:                                              ; preds = %132, %122
  %155 = load i64, i64* %11, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %156)
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %155, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* @FLAG_DATA, align 4
  %163 = load i32, i32* %7, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %7, align 4
  br label %170

165:                                              ; preds = %154
  %166 = load %struct.sock*, %struct.sock** %5, align 8
  %167 = call i32 @sock_net(%struct.sock* %166)
  %168 = load i32, i32* @LINUX_MIB_TCPPUREACKS, align 4
  %169 = call i32 @NET_INC_STATS_BH(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %161
  %171 = load %struct.sock*, %struct.sock** %5, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* %11, align 8
  %175 = call i32 @tcp_ack_update_window(%struct.sock* %171, %struct.sk_buff* %172, i64 %173, i64 %174)
  %176 = load i32, i32* %7, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %7, align 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %179 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %178)
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %170
  %184 = load %struct.sock*, %struct.sock** %5, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %186 = load i64, i64* %10, align 8
  %187 = call i32 @tcp_sacktag_write_queue(%struct.sock* %184, %struct.sk_buff* %185, i64 %186)
  %188 = load i32, i32* %7, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %183, %170
  %191 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %193 = call i32 @tcp_hdr(%struct.sk_buff* %192)
  %194 = call i64 @TCP_ECN_rcv_ecn_echo(%struct.tcp_sock* %191, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i32, i32* @FLAG_ECE, align 4
  %198 = load i32, i32* %7, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %7, align 4
  br label %200

200:                                              ; preds = %196, %190
  %201 = load %struct.sock*, %struct.sock** %5, align 8
  %202 = load i32, i32* @CA_EVENT_SLOW_ACK, align 4
  %203 = call i32 @tcp_ca_event(%struct.sock* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %137
  %205 = load %struct.sock*, %struct.sock** %5, align 8
  %206 = getelementptr inbounds %struct.sock, %struct.sock* %205, i32 0, i32 1
  store i64 0, i64* %206, align 8
  %207 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %208 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %207, i32 0, i32 1
  store i64 0, i64* %208, align 8
  %209 = load i32, i32* @tcp_time_stamp, align 4
  %210 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %211 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %210, i32 0, i32 10
  store i32 %209, i32* %211, align 8
  %212 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %213 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 8
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* %18, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %204
  br label %344

218:                                              ; preds = %204
  %219 = load %struct.sock*, %struct.sock** %5, align 8
  %220 = load i64, i64* %17, align 8
  %221 = load i64, i64* %10, align 8
  %222 = call i32 @tcp_clean_rtx_queue(%struct.sock* %219, i64 %220, i64 %221)
  %223 = load i32, i32* %7, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %18, align 4
  %226 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %227 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %225, %228
  store i32 %229, i32* %20, align 4
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* %19, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %234 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %237 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = sub nsw i32 %235, %238
  %240 = sub nsw i32 %232, %239
  store i32 %240, i32* %21, align 4
  %241 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %242 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %241, i32 0, i32 9
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %218
  %246 = load %struct.sock*, %struct.sock** %5, align 8
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @tcp_process_frto(%struct.sock* %246, i32 %247)
  store i32 %248, i32* %22, align 4
  br label %249

249:                                              ; preds = %245, %218
  %250 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %251 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %250, i32 0, i32 8
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %254 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call i64 @before(i64 %252, i64 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %249
  %259 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %260 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %259, i32 0, i32 8
  store i64 0, i64* %260, align 8
  br label %261

261:                                              ; preds = %258, %249
  %262 = load %struct.sock*, %struct.sock** %5, align 8
  %263 = load i32, i32* %7, align 4
  %264 = call i64 @tcp_ack_is_dubious(%struct.sock* %262, i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %299

266:                                              ; preds = %261
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @FLAG_DATA_ACKED, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %284

271:                                              ; preds = %266
  %272 = load i32, i32* %22, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %284, label %274

274:                                              ; preds = %271
  %275 = load %struct.sock*, %struct.sock** %5, align 8
  %276 = load i32, i32* %7, align 4
  %277 = call i64 @tcp_may_raise_cwnd(%struct.sock* %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load %struct.sock*, %struct.sock** %5, align 8
  %281 = load i64, i64* %12, align 8
  %282 = load i64, i64* %14, align 8
  %283 = call i32 @tcp_cong_avoid(%struct.sock* %280, i64 %281, i64 %282)
  br label %284

284:                                              ; preds = %279, %274, %271, %266
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* @FLAG_SND_UNA_ADVANCED, align 4
  %287 = load i32, i32* @FLAG_NOT_DUP, align 4
  %288 = or i32 %286, %287
  %289 = and i32 %285, %288
  %290 = icmp ne i32 %289, 0
  %291 = xor i1 %290, true
  %292 = zext i1 %291 to i32
  store i32 %292, i32* %13, align 4
  %293 = load %struct.sock*, %struct.sock** %5, align 8
  %294 = load i32, i32* %20, align 4
  %295 = load i32, i32* %21, align 4
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %7, align 4
  %298 = call i32 @tcp_fastretrans_alert(%struct.sock* %293, i32 %294, i32 %295, i32 %296, i32 %297)
  br label %313

299:                                              ; preds = %261
  %300 = load i32, i32* %7, align 4
  %301 = load i32, i32* @FLAG_DATA_ACKED, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %299
  %305 = load i32, i32* %22, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %304
  %308 = load %struct.sock*, %struct.sock** %5, align 8
  %309 = load i64, i64* %12, align 8
  %310 = load i64, i64* %14, align 8
  %311 = call i32 @tcp_cong_avoid(%struct.sock* %308, i64 %309, i64 %310)
  br label %312

312:                                              ; preds = %307, %304, %299
  br label %313

313:                                              ; preds = %312, %284
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @FLAG_FORWARD_PROGRESS, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %323, label %318

318:                                              ; preds = %313
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* @FLAG_NOT_DUP, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %318, %313
  %324 = load %struct.sock*, %struct.sock** %5, align 8
  %325 = getelementptr inbounds %struct.sock, %struct.sock* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @dst_confirm(i32 %326)
  br label %328

328:                                              ; preds = %323, %318
  %329 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %330 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* %16, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %340, label %334

334:                                              ; preds = %328
  %335 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %336 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* %15, align 8
  %339 = icmp ne i64 %337, %338
  br i1 %339, label %340, label %343

340:                                              ; preds = %334, %328
  %341 = load %struct.sock*, %struct.sock** %5, align 8
  %342 = call i32 @tcp_update_pacing_rate(%struct.sock* %341)
  br label %343

343:                                              ; preds = %340, %334
  store i32 1, i32* %4, align 4
  br label %408

344:                                              ; preds = %217
  %345 = load i32, i32* %7, align 4
  %346 = load i32, i32* @FLAG_DSACKING_ACK, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %356

349:                                              ; preds = %344
  %350 = load %struct.sock*, %struct.sock** %5, align 8
  %351 = load i32, i32* %20, align 4
  %352 = load i32, i32* %21, align 4
  %353 = load i32, i32* %13, align 4
  %354 = load i32, i32* %7, align 4
  %355 = call i32 @tcp_fastretrans_alert(%struct.sock* %350, i32 %351, i32 %352, i32 %353, i32 %354)
  br label %356

356:                                              ; preds = %349, %344
  %357 = load %struct.sock*, %struct.sock** %5, align 8
  %358 = call i64 @tcp_send_head(%struct.sock* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %356
  %361 = load %struct.sock*, %struct.sock** %5, align 8
  %362 = call i32 @tcp_ack_probe(%struct.sock* %361)
  br label %363

363:                                              ; preds = %360, %356
  store i32 1, i32* %4, align 4
  br label %408

364:                                              ; preds = %71
  %365 = load %struct.sock*, %struct.sock** %5, align 8
  %366 = load i64, i64* %12, align 8
  %367 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %368 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %371 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %370, i32 0, i32 5
  %372 = load i64, i64* %371, align 8
  %373 = call i32 @SOCK_DEBUG(%struct.sock* %365, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %366, i64 %369, i64 %372)
  store i32 -1, i32* %4, align 4
  br label %408

374:                                              ; preds = %63
  %375 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %376 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %375)
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 3
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %398

380:                                              ; preds = %374
  %381 = load %struct.sock*, %struct.sock** %5, align 8
  %382 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %383 = load i64, i64* %10, align 8
  %384 = call i32 @tcp_sacktag_write_queue(%struct.sock* %381, %struct.sk_buff* %382, i64 %383)
  %385 = load i32, i32* %7, align 4
  %386 = or i32 %385, %384
  store i32 %386, i32* %7, align 4
  %387 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %388 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* %19, align 4
  %391 = sub nsw i32 %389, %390
  store i32 %391, i32* %21, align 4
  %392 = load %struct.sock*, %struct.sock** %5, align 8
  %393 = load i32, i32* %20, align 4
  %394 = load i32, i32* %21, align 4
  %395 = load i32, i32* %13, align 4
  %396 = load i32, i32* %7, align 4
  %397 = call i32 @tcp_fastretrans_alert(%struct.sock* %392, i32 %393, i32 %394, i32 %395, i32 %396)
  br label %398

398:                                              ; preds = %380, %374
  %399 = load %struct.sock*, %struct.sock** %5, align 8
  %400 = load i64, i64* %12, align 8
  %401 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %402 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %405 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %404, i32 0, i32 5
  %406 = load i64, i64* %405, align 8
  %407 = call i32 @SOCK_DEBUG(%struct.sock* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %400, i64 %403, i64 %406)
  store i32 0, i32* %4, align 4
  br label %408

408:                                              ; preds = %398, %364, %363, %343, %60
  %409 = load i32, i32* %4, align 4
  ret i32 %409
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @before(i64, i64) #1

declare dso_local i32 @tcp_send_challenge_ack(%struct.sock*) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @tcp_packets_in_flight(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_update_wl(%struct.tcp_sock*, i64) #1

declare dso_local i32 @tcp_ca_event(%struct.sock*, i32) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_ack_update_window(%struct.sock*, %struct.sk_buff*, i64, i64) #1

declare dso_local i32 @tcp_sacktag_write_queue(%struct.sock*, %struct.sk_buff*, i64) #1

declare dso_local i64 @TCP_ECN_rcv_ecn_echo(%struct.tcp_sock*, i32) #1

declare dso_local i32 @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @tcp_clean_rtx_queue(%struct.sock*, i64, i64) #1

declare dso_local i32 @tcp_process_frto(%struct.sock*, i32) #1

declare dso_local i64 @tcp_ack_is_dubious(%struct.sock*, i32) #1

declare dso_local i64 @tcp_may_raise_cwnd(%struct.sock*, i32) #1

declare dso_local i32 @tcp_cong_avoid(%struct.sock*, i64, i64) #1

declare dso_local i32 @tcp_fastretrans_alert(%struct.sock*, i32, i32, i32, i32) #1

declare dso_local i32 @dst_confirm(i32) #1

declare dso_local i32 @tcp_update_pacing_rate(%struct.sock*) #1

declare dso_local i64 @tcp_send_head(%struct.sock*) #1

declare dso_local i32 @tcp_ack_probe(%struct.sock*) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
