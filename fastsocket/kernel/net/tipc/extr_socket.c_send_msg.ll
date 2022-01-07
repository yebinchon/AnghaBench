; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_send_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { i64, i64, %struct.sock* }
%struct.sock = type { i32* }
%struct.msghdr = type { i32, i32, i32, i32, i64 }
%struct.tipc_port = type { i32, i32, i32, i32, i64 }
%struct.sockaddr_tipc = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@AF_TIPC = common dso_local global i64 0, align 8
@SS_READY = common dso_local global i64 0, align 8
@SS_LISTENING = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TIPC_ADDR_NAME = common dso_local global i64 0, align 8
@TIPC_ADDR_ID = common dso_local global i64 0, align 8
@TIPC_ADDR_MCAST = common dso_local global i64 0, align 8
@ELINKCONG = common dso_local global i32 0, align 4
@SS_CONNECTING = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_msg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.tipc_port*, align 8
  %12 = alloca %struct.sockaddr_tipc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.socket*, %struct.socket** %7, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 2
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %10, align 8
  %18 = load %struct.sock*, %struct.sock** %10, align 8
  %19 = call %struct.tipc_port* @tipc_sk_port(%struct.sock* %18)
  store %struct.tipc_port* %19, %struct.tipc_port** %11, align 8
  %20 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %23, %struct.sockaddr_tipc** %12, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %27 = icmp ne %struct.sockaddr_tipc* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EDESTADDRREQ, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %278

35:                                               ; preds = %4
  %36 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 40
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %43 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_TIPC, align 8
  %46 = icmp ne i64 %44, %45
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i1 [ true, %35 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %278

55:                                               ; preds = %47
  %56 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %57 = icmp ne %struct.kiocb* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.sock*, %struct.sock** %10, align 8
  %60 = call i32 @lock_sock(%struct.sock* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.socket*, %struct.socket** %7, align 8
  %63 = getelementptr inbounds %struct.socket, %struct.socket* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SS_READY, align 8
  %66 = icmp ne i64 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %132

71:                                               ; preds = %61
  %72 = load %struct.socket*, %struct.socket** %7, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SS_LISTENING, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @EPIPE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %14, align 4
  br label %270

80:                                               ; preds = %71
  %81 = load %struct.socket*, %struct.socket** %7, align 8
  %82 = getelementptr inbounds %struct.socket, %struct.socket* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SS_UNCONNECTED, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @EISCONN, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %14, align 4
  br label %270

89:                                               ; preds = %80
  %90 = load %struct.tipc_port*, %struct.tipc_port** %11, align 8
  %91 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  %95 = load %struct.socket*, %struct.socket** %7, align 8
  %96 = getelementptr inbounds %struct.socket, %struct.socket* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SOCK_STREAM, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i64, i64* %9, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %89
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %14, align 4
  br label %270

106:                                              ; preds = %100, %94
  %107 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %108 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @TIPC_ADDR_NAME, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %114 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.tipc_port*, %struct.tipc_port** %11, align 8
  %120 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %122 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.tipc_port*, %struct.tipc_port** %11, align 8
  %128 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %112, %106
  %130 = load %struct.sock*, %struct.sock** %10, align 8
  %131 = call i32 @reject_rx_queue(%struct.sock* %130)
  br label %132

132:                                              ; preds = %129, %61
  br label %133

133:                                              ; preds = %268, %132
  %134 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %135 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TIPC_ADDR_NAME, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %133
  %140 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %141 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %142 = call i32 @dest_name_check(%struct.sockaddr_tipc* %140, %struct.msghdr* %141)
  store i32 %142, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %269

145:                                              ; preds = %139
  %146 = load %struct.tipc_port*, %struct.tipc_port** %11, align 8
  %147 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %150 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %154 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %159 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %162 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @tipc_send2name(i32 %148, %struct.TYPE_6__* %152, i32 %157, i32 %160, i32 %163)
  store i32 %164, i32* %14, align 4
  br label %219

165:                                              ; preds = %133
  %166 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %167 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @TIPC_ADDR_ID, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %185

171:                                              ; preds = %165
  %172 = load %struct.tipc_port*, %struct.tipc_port** %11, align 8
  %173 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %176 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %179 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %182 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @tipc_send2port(i32 %174, i32* %177, i32 %180, i32 %183)
  store i32 %184, i32* %14, align 4
  br label %218

185:                                              ; preds = %165
  %186 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %187 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @TIPC_ADDR_MCAST, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %217

191:                                              ; preds = %185
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* @EOPNOTSUPP, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %14, align 4
  br label %269

197:                                              ; preds = %191
  %198 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %199 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %200 = call i32 @dest_name_check(%struct.sockaddr_tipc* %198, %struct.msghdr* %199)
  store i32 %200, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %269

203:                                              ; preds = %197
  %204 = load %struct.tipc_port*, %struct.tipc_port** %11, align 8
  %205 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %208 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %211 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %214 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @tipc_multicast(i32 %206, i32* %209, i32 0, i32 %212, i32 %215)
  store i32 %216, i32* %14, align 4
  br label %217

217:                                              ; preds = %203, %185
  br label %218

218:                                              ; preds = %217, %171
  br label %219

219:                                              ; preds = %218, %145
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* @ELINKCONG, align 4
  %222 = sub nsw i32 0, %221
  %223 = icmp ne i32 %220, %222
  %224 = zext i1 %223 to i32
  %225 = call i64 @likely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %219
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %227
  %231 = load i32, i32* %14, align 4
  %232 = icmp sge i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i64, i64* @SS_CONNECTING, align 8
  %235 = load %struct.socket*, %struct.socket** %7, align 8
  %236 = getelementptr inbounds %struct.socket, %struct.socket* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  br label %237

237:                                              ; preds = %233, %230, %227
  br label %269

238:                                              ; preds = %219
  %239 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %240 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @MSG_DONTWAIT, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load i32, i32* @EWOULDBLOCK, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %14, align 4
  br label %269

248:                                              ; preds = %238
  %249 = load %struct.sock*, %struct.sock** %10, align 8
  %250 = call i32 @release_sock(%struct.sock* %249)
  %251 = load %struct.sock*, %struct.sock** %10, align 8
  %252 = getelementptr inbounds %struct.sock, %struct.sock* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.tipc_port*, %struct.tipc_port** %11, align 8
  %256 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  %259 = xor i1 %258, true
  %260 = zext i1 %259 to i32
  %261 = call i32 @wait_event_interruptible(i32 %254, i32 %260)
  store i32 %261, i32* %14, align 4
  %262 = load %struct.sock*, %struct.sock** %10, align 8
  %263 = call i32 @lock_sock(%struct.sock* %262)
  %264 = load i32, i32* %14, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %248
  br label %269

267:                                              ; preds = %248
  br label %268

268:                                              ; preds = %267
  br i1 true, label %133, label %269

269:                                              ; preds = %268, %266, %245, %237, %202, %194, %144
  br label %270

270:                                              ; preds = %269, %103, %86, %77
  %271 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %272 = icmp ne %struct.kiocb* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load %struct.sock*, %struct.sock** %10, align 8
  %275 = call i32 @release_sock(%struct.sock* %274)
  br label %276

276:                                              ; preds = %273, %270
  %277 = load i32, i32* %14, align 4
  store i32 %277, i32* %5, align 4
  br label %278

278:                                              ; preds = %276, %52, %32
  %279 = load i32, i32* %5, align 4
  ret i32 %279
}

declare dso_local %struct.tipc_port* @tipc_sk_port(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @reject_rx_queue(%struct.sock*) #1

declare dso_local i32 @dest_name_check(%struct.sockaddr_tipc*, %struct.msghdr*) #1

declare dso_local i32 @tipc_send2name(i32, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @tipc_send2port(i32, i32*, i32, i32) #1

declare dso_local i32 @tipc_multicast(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
