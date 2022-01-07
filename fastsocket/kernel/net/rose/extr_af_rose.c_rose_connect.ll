; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.rose_sock = type { i32, i32, %struct.TYPE_6__*, i32, i32*, i64, i64, i32, i32, %struct.net_device*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }
%struct.sockaddr_rose = type { i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.full_sockaddr_rose = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@AF_ROSE = common dso_local global i64 0, align 8
@ROSE_MAX_DIGIS = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@SS_CONNECTING = common dso_local global i64 0, align 8
@SS_CONNECTED = common dso_local global i8* null, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@SS_UNCONNECTED = common dso_local global i8* null, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ROSE_ADDR_LEN = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@ROSE_STATE_1 = common dso_local global i32 0, align 4
@ROSE_CALL_REQUEST = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @rose_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.rose_sock*, align 8
  %12 = alloca %struct.sockaddr_rose*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.full_sockaddr_rose*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.socket*, %struct.socket** %6, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 1
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %10, align 8
  %23 = load %struct.sock*, %struct.sock** %10, align 8
  %24 = call %struct.rose_sock* @rose_sk(%struct.sock* %23)
  store %struct.rose_sock* %24, %struct.rose_sock** %11, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_rose*
  store %struct.sockaddr_rose* %26, %struct.sockaddr_rose** %12, align 8
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 24
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %387

37:                                               ; preds = %30, %4
  %38 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %39 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_ROSE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %387

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 24
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %52 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %387

58:                                               ; preds = %50, %46
  %59 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %60 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ROSE_MAX_DIGIS, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %387

67:                                               ; preds = %58
  %68 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %69 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %72 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %70, %73
  %75 = load i32, i32* @ROSE_MAX_DIGIS, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %387

80:                                               ; preds = %67
  %81 = load %struct.sock*, %struct.sock** %10, align 8
  %82 = call i32 @lock_sock(%struct.sock* %81)
  %83 = load %struct.sock*, %struct.sock** %10, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TCP_ESTABLISHED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load %struct.socket*, %struct.socket** %6, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SS_CONNECTING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load i8*, i8** @SS_CONNECTED, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.socket*, %struct.socket** %6, align 8
  %98 = getelementptr inbounds %struct.socket, %struct.socket* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %383

99:                                               ; preds = %88, %80
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TCP_CLOSE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = load %struct.socket*, %struct.socket** %6, align 8
  %107 = getelementptr inbounds %struct.socket, %struct.socket* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SS_CONNECTING, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load i8*, i8** @SS_UNCONNECTED, align 8
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.socket*, %struct.socket** %6, align 8
  %115 = getelementptr inbounds %struct.socket, %struct.socket* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @ECONNREFUSED, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %18, align 4
  br label %383

118:                                              ; preds = %105, %99
  %119 = load %struct.sock*, %struct.sock** %10, align 8
  %120 = getelementptr inbounds %struct.sock, %struct.sock* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @TCP_ESTABLISHED, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* @EISCONN, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %18, align 4
  br label %383

127:                                              ; preds = %118
  %128 = load i64, i64* @TCP_CLOSE, align 8
  %129 = load %struct.sock*, %struct.sock** %10, align 8
  %130 = getelementptr inbounds %struct.sock, %struct.sock* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load i8*, i8** @SS_UNCONNECTED, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.socket*, %struct.socket** %6, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %136 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %135, i32 0, i32 2
  %137 = call i8* @rose_get_neigh(i32* %136, i8* %13, i8* %14, i32 0)
  %138 = bitcast i8* %137 to %struct.TYPE_6__*
  %139 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %140 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %139, i32 0, i32 2
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %140, align 8
  %141 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %142 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %141, i32 0, i32 2
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = icmp ne %struct.TYPE_6__* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %127
  %146 = load i32, i32* @ENETUNREACH, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %18, align 4
  br label %383

148:                                              ; preds = %127
  %149 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %150 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %149, i32 0, i32 2
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = call i64 @rose_new_lci(%struct.TYPE_6__* %151)
  %153 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %154 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %153, i32 0, i32 5
  store i64 %152, i64* %154, align 8
  %155 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %156 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %148
  %160 = load i32, i32* @ENETUNREACH, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %18, align 4
  br label %383

162:                                              ; preds = %148
  %163 = load %struct.sock*, %struct.sock** %10, align 8
  %164 = load i32, i32* @SOCK_ZAPPED, align 4
  %165 = call i64 @sock_flag(%struct.sock* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %204

167:                                              ; preds = %162
  %168 = load %struct.sock*, %struct.sock** %10, align 8
  %169 = load i32, i32* @SOCK_ZAPPED, align 4
  %170 = call i32 @sock_reset_flag(%struct.sock* %168, i32 %169)
  %171 = call %struct.net_device* (...) @rose_dev_first()
  store %struct.net_device* %171, %struct.net_device** %15, align 8
  %172 = icmp eq %struct.net_device* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* @ENETUNREACH, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %18, align 4
  br label %383

176:                                              ; preds = %167
  %177 = call i32 (...) @current_euid()
  %178 = call %struct.TYPE_5__* @ax25_findbyuid(i32 %177)
  store %struct.TYPE_5__* %178, %struct.TYPE_5__** %16, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %180 = icmp ne %struct.TYPE_5__* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %18, align 4
  br label %383

184:                                              ; preds = %176
  %185 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %186 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %185, i32 0, i32 11
  %187 = load %struct.net_device*, %struct.net_device** %15, align 8
  %188 = getelementptr inbounds %struct.net_device, %struct.net_device* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @ROSE_ADDR_LEN, align 4
  %191 = call i32 @memcpy(i32* %186, i32 %189, i32 %190)
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %196 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %195, i32 0, i32 10
  store i32 %194, i32* %196, align 8
  %197 = load %struct.net_device*, %struct.net_device** %15, align 8
  %198 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %199 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %198, i32 0, i32 9
  store %struct.net_device* %197, %struct.net_device** %199, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %201 = call i32 @ax25_uid_put(%struct.TYPE_5__* %200)
  %202 = load %struct.sock*, %struct.sock** %10, align 8
  %203 = call i32 @rose_insert_socket(%struct.sock* %202)
  br label %204

204:                                              ; preds = %184, %162
  br label %205

205:                                              ; preds = %370, %204
  %206 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %207 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %210 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %209, i32 0, i32 8
  store i32 %208, i32* %210, align 4
  %211 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %212 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %215 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %214, i32 0, i32 7
  store i32 %213, i32* %215, align 8
  %216 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %217 = ptrtoint %struct.rose_sock* %216 to i64
  %218 = and i64 %217, 65535
  %219 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %220 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %218, %221
  %223 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %224 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %223, i32 0, i32 6
  store i64 %222, i64* %224, align 8
  %225 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %226 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %229 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = icmp eq i64 %231, 8
  br i1 %232, label %233, label %260

233:                                              ; preds = %205
  %234 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %235 = bitcast %struct.sockaddr* %234 to %struct.full_sockaddr_rose*
  store %struct.full_sockaddr_rose* %235, %struct.full_sockaddr_rose** %19, align 8
  store i32 0, i32* %17, align 4
  br label %236

236:                                              ; preds = %256, %233
  %237 = load i32, i32* %17, align 4
  %238 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %239 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %236
  %243 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %19, align 8
  %244 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %251 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %249, i32* %255, align 4
  br label %256

256:                                              ; preds = %242
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %17, align 4
  br label %236

259:                                              ; preds = %236
  br label %274

260:                                              ; preds = %205
  %261 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %262 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %273

265:                                              ; preds = %260
  %266 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %267 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %270 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %269, i32 0, i32 4
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  store i32 %268, i32* %272, align 4
  br label %273

273:                                              ; preds = %265, %260
  br label %274

274:                                              ; preds = %273, %259
  %275 = load i64, i64* @SS_CONNECTING, align 8
  %276 = load %struct.socket*, %struct.socket** %6, align 8
  %277 = getelementptr inbounds %struct.socket, %struct.socket* %276, i32 0, i32 0
  store i64 %275, i64* %277, align 8
  %278 = load i64, i64* @TCP_SYN_SENT, align 8
  %279 = load %struct.sock*, %struct.sock** %10, align 8
  %280 = getelementptr inbounds %struct.sock, %struct.sock* %279, i32 0, i32 0
  store i64 %278, i64* %280, align 8
  %281 = load i32, i32* @ROSE_STATE_1, align 4
  %282 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %283 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 8
  %284 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %285 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %284, i32 0, i32 2
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %287, align 4
  %290 = load %struct.sock*, %struct.sock** %10, align 8
  %291 = load i32, i32* @ROSE_CALL_REQUEST, align 4
  %292 = call i32 @rose_write_internal(%struct.sock* %290, i32 %291)
  %293 = load %struct.sock*, %struct.sock** %10, align 8
  %294 = call i32 @rose_start_heartbeat(%struct.sock* %293)
  %295 = load %struct.sock*, %struct.sock** %10, align 8
  %296 = call i32 @rose_start_t1timer(%struct.sock* %295)
  %297 = load %struct.sock*, %struct.sock** %10, align 8
  %298 = getelementptr inbounds %struct.sock, %struct.sock* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @TCP_ESTABLISHED, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %310

302:                                              ; preds = %274
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @O_NONBLOCK, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = load i32, i32* @EINPROGRESS, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %18, align 4
  br label %383

310:                                              ; preds = %302, %274
  %311 = load %struct.sock*, %struct.sock** %10, align 8
  %312 = getelementptr inbounds %struct.sock, %struct.sock* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @TCP_SYN_SENT, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %353

316:                                              ; preds = %310
  %317 = load i32, i32* @wait, align 4
  %318 = call i32 @DEFINE_WAIT(i32 %317)
  br label %319

319:                                              ; preds = %335, %316
  %320 = load %struct.sock*, %struct.sock** %10, align 8
  %321 = getelementptr inbounds %struct.sock, %struct.sock* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %324 = call i32 @prepare_to_wait(i32 %322, i32* @wait, i32 %323)
  %325 = load %struct.sock*, %struct.sock** %10, align 8
  %326 = getelementptr inbounds %struct.sock, %struct.sock* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @TCP_SYN_SENT, align 8
  %329 = icmp ne i64 %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %319
  br label %344

331:                                              ; preds = %319
  %332 = load i32, i32* @current, align 4
  %333 = call i32 @signal_pending(i32 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %341, label %335

335:                                              ; preds = %331
  %336 = load %struct.sock*, %struct.sock** %10, align 8
  %337 = call i32 @release_sock(%struct.sock* %336)
  %338 = call i32 (...) @schedule()
  %339 = load %struct.sock*, %struct.sock** %10, align 8
  %340 = call i32 @lock_sock(%struct.sock* %339)
  br label %319

341:                                              ; preds = %331
  %342 = load i32, i32* @ERESTARTSYS, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %18, align 4
  br label %344

344:                                              ; preds = %341, %330
  %345 = load %struct.sock*, %struct.sock** %10, align 8
  %346 = getelementptr inbounds %struct.sock, %struct.sock* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @finish_wait(i32 %347, i32* @wait)
  %349 = load i32, i32* %18, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %344
  br label %383

352:                                              ; preds = %344
  br label %353

353:                                              ; preds = %352, %310
  %354 = load %struct.sock*, %struct.sock** %10, align 8
  %355 = getelementptr inbounds %struct.sock, %struct.sock* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @TCP_ESTABLISHED, align 8
  %358 = icmp ne i64 %356, %357
  br i1 %358, label %359, label %378

359:                                              ; preds = %353
  %360 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %361 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %360, i32 0, i32 2
  %362 = call i8* @rose_get_neigh(i32* %361, i8* %13, i8* %14, i32 0)
  %363 = bitcast i8* %362 to %struct.TYPE_6__*
  %364 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %365 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %364, i32 0, i32 2
  store %struct.TYPE_6__* %363, %struct.TYPE_6__** %365, align 8
  %366 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %367 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %366, i32 0, i32 2
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %367, align 8
  %369 = icmp ne %struct.TYPE_6__* %368, null
  br i1 %369, label %370, label %371

370:                                              ; preds = %359
  br label %205

371:                                              ; preds = %359
  %372 = load i8*, i8** @SS_UNCONNECTED, align 8
  %373 = ptrtoint i8* %372 to i64
  %374 = load %struct.socket*, %struct.socket** %6, align 8
  %375 = getelementptr inbounds %struct.socket, %struct.socket* %374, i32 0, i32 0
  store i64 %373, i64* %375, align 8
  %376 = load %struct.sock*, %struct.sock** %10, align 8
  %377 = call i32 @sock_error(%struct.sock* %376)
  store i32 %377, i32* %18, align 4
  br label %383

378:                                              ; preds = %353
  %379 = load i8*, i8** @SS_CONNECTED, align 8
  %380 = ptrtoint i8* %379 to i64
  %381 = load %struct.socket*, %struct.socket** %6, align 8
  %382 = getelementptr inbounds %struct.socket, %struct.socket* %381, i32 0, i32 0
  store i64 %380, i64* %382, align 8
  br label %383

383:                                              ; preds = %378, %371, %351, %307, %181, %173, %159, %145, %124, %111, %94
  %384 = load %struct.sock*, %struct.sock** %10, align 8
  %385 = call i32 @release_sock(%struct.sock* %384)
  %386 = load i32, i32* %18, align 4
  store i32 %386, i32* %5, align 4
  br label %387

387:                                              ; preds = %383, %77, %64, %55, %43, %34
  %388 = load i32, i32* %5, align 4
  ret i32 %388
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i8* @rose_get_neigh(i32*, i8*, i8*, i32) #1

declare dso_local i64 @rose_new_lci(%struct.TYPE_6__*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local %struct.net_device* @rose_dev_first(...) #1

declare dso_local %struct.TYPE_5__* @ax25_findbyuid(i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ax25_uid_put(%struct.TYPE_5__*) #1

declare dso_local i32 @rose_insert_socket(%struct.sock*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_start_heartbeat(%struct.sock*) #1

declare dso_local i32 @rose_start_t1timer(%struct.sock*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
