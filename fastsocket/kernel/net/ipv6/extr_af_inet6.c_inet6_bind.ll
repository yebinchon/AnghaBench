; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_af_inet6.c_inet6_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_af_inet6.c_inet6_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i64, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (%struct.sock*, %struct.sockaddr*, i32)*, i64 (%struct.sock*, i16)* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i64* }
%struct.inet_sock = type { i64, i64, i64, i32, i64, i64, i64, i64 }
%struct.ipv6_pinfo = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }

@SIN6_LEN_RFC2133 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@PROT_SOCK = common dso_local global i16 0, align 2
@CAP_NET_BIND_SERVICE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@sysctl_ip_nonlocal_bind = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@SOCK_BINDADDR_LOCK = common dso_local global i32 0, align 4
@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.inet_sock*, align 8
  %11 = alloca %struct.ipv6_pinfo*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.net_device*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %20, %struct.sockaddr_in6** %8, align 8
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 1
  %23 = load %struct.sock*, %struct.sock** %22, align 8
  store %struct.sock* %23, %struct.sock** %9, align 8
  %24 = load %struct.sock*, %struct.sock** %9, align 8
  %25 = call %struct.inet_sock* @inet_sk(%struct.sock* %24)
  store %struct.inet_sock* %25, %struct.inet_sock** %10, align 8
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %26)
  store %struct.ipv6_pinfo* %27, %struct.ipv6_pinfo** %11, align 8
  %28 = load %struct.sock*, %struct.sock** %9, align 8
  %29 = call %struct.net* @sock_net(%struct.sock* %28)
  store %struct.net* %29, %struct.net** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load %struct.sock*, %struct.sock** %9, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.sock*, %struct.sockaddr*, i32)* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %3
  %37 = load %struct.sock*, %struct.sock** %9, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %40, align 8
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %41(%struct.sock* %42, %struct.sockaddr* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %320

46:                                               ; preds = %3
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SIN6_LEN_RFC2133, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %320

53:                                               ; preds = %46
  %54 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %54, i32 0, i32 0
  %56 = call i32 @ipv6_addr_type(%struct.TYPE_6__* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.socket*, %struct.socket** %5, align 8
  %63 = getelementptr inbounds %struct.socket, %struct.socket* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SOCK_STREAM, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %320

70:                                               ; preds = %61, %53
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call zeroext i16 @ntohs(i32 %73)
  store i16 %74, i16* %14, align 2
  %75 = load i16, i16* %14, align 2
  %76 = zext i16 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %70
  %79 = load i16, i16* %14, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* @PROT_SOCK, align 2
  %82 = zext i16 %81 to i32
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %86 = call i32 @capable(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @EACCES, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %320

91:                                               ; preds = %84, %78, %70
  %92 = load %struct.sock*, %struct.sock** %9, align 8
  %93 = call i32 @lock_sock(%struct.sock* %92)
  %94 = load %struct.sock*, %struct.sock** %9, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TCP_CLOSE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %91
  %100 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %101 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99, %91
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %16, align 4
  br label %316

107:                                              ; preds = %99
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %162

111:                                              ; preds = %107
  %112 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %113 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %16, align 4
  br label %316

119:                                              ; preds = %111
  %120 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %121 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 3
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %13, align 8
  %126 = load %struct.net*, %struct.net** %12, align 8
  %127 = load i64, i64* %13, align 8
  %128 = call i32 @inet_addr_type(%struct.net* %126, i64 %127)
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* @sysctl_ip_nonlocal_bind, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %161, label %131

131:                                              ; preds = %119
  %132 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %133 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %161, label %136

136:                                              ; preds = %131
  %137 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %138 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %161, label %141

141:                                              ; preds = %136
  %142 = load i64, i64* %13, align 8
  %143 = load i32, i32* @INADDR_ANY, align 4
  %144 = call i64 @htonl(i32 %143)
  %145 = icmp ne i64 %142, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %141
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @RTN_LOCAL, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @RTN_MULTICAST, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* @RTN_BROADCAST, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* @EADDRNOTAVAIL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %16, align 4
  br label %316

161:                                              ; preds = %154, %150, %146, %141, %136, %131, %119
  br label %242

162:                                              ; preds = %107
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %241

166:                                              ; preds = %162
  store %struct.net_device* null, %struct.net_device** %18, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %206

171:                                              ; preds = %166
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = icmp uge i64 %173, 24
  br i1 %174, label %175, label %186

175:                                              ; preds = %171
  %176 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %177 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %182 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.sock*, %struct.sock** %9, align 8
  %185 = getelementptr inbounds %struct.sock, %struct.sock* %184, i32 0, i32 3
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %180, %175, %171
  %187 = load %struct.sock*, %struct.sock** %9, align 8
  %188 = getelementptr inbounds %struct.sock, %struct.sock* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %16, align 4
  br label %316

194:                                              ; preds = %186
  %195 = load %struct.net*, %struct.net** %12, align 8
  %196 = load %struct.sock*, %struct.sock** %9, align 8
  %197 = getelementptr inbounds %struct.sock, %struct.sock* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = call %struct.net_device* @dev_get_by_index(%struct.net* %195, i64 %198)
  store %struct.net_device* %199, %struct.net_device** %18, align 8
  %200 = load %struct.net_device*, %struct.net_device** %18, align 8
  %201 = icmp ne %struct.net_device* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %194
  %203 = load i32, i32* @ENODEV, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %16, align 4
  br label %316

205:                                              ; preds = %194
  br label %206

206:                                              ; preds = %205, %166
  %207 = load i64, i64* @LOOPBACK4_IPV6, align 8
  store i64 %207, i64* %13, align 8
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %234, label %212

212:                                              ; preds = %206
  %213 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %214 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %213, i32 0, i32 6
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %233, label %217

217:                                              ; preds = %212
  %218 = load %struct.net*, %struct.net** %12, align 8
  %219 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %220 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %219, i32 0, i32 0
  %221 = load %struct.net_device*, %struct.net_device** %18, align 8
  %222 = call i32 @ipv6_chk_addr(%struct.net* %218, %struct.TYPE_6__* %220, %struct.net_device* %221, i32 0)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %233, label %224

224:                                              ; preds = %217
  %225 = load %struct.net_device*, %struct.net_device** %18, align 8
  %226 = icmp ne %struct.net_device* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load %struct.net_device*, %struct.net_device** %18, align 8
  %229 = call i32 @dev_put(%struct.net_device* %228)
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* @EADDRNOTAVAIL, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %16, align 4
  br label %316

233:                                              ; preds = %217, %212
  br label %234

234:                                              ; preds = %233, %206
  %235 = load %struct.net_device*, %struct.net_device** %18, align 8
  %236 = icmp ne %struct.net_device* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load %struct.net_device*, %struct.net_device** %18, align 8
  %239 = call i32 @dev_put(%struct.net_device* %238)
  br label %240

240:                                              ; preds = %237, %234
  br label %241

241:                                              ; preds = %240, %162
  br label %242

242:                                              ; preds = %241, %161
  %243 = load i64, i64* %13, align 8
  %244 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %245 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %244, i32 0, i32 5
  store i64 %243, i64* %245, align 8
  %246 = load i64, i64* %13, align 8
  %247 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %248 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %247, i32 0, i32 4
  store i64 %246, i64* %248, align 8
  %249 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %250 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %249, i32 0, i32 2
  %251 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %252 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %251, i32 0, i32 0
  %253 = call i32 @ipv6_addr_copy(i32* %250, %struct.TYPE_6__* %252)
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %242
  %259 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %260 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %259, i32 0, i32 1
  %261 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %262 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %261, i32 0, i32 0
  %263 = call i32 @ipv6_addr_copy(i32* %260, %struct.TYPE_6__* %262)
  br label %264

264:                                              ; preds = %258, %242
  %265 = load %struct.sock*, %struct.sock** %9, align 8
  %266 = getelementptr inbounds %struct.sock, %struct.sock* %265, i32 0, i32 2
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = load i64 (%struct.sock*, i16)*, i64 (%struct.sock*, i16)** %268, align 8
  %270 = load %struct.sock*, %struct.sock** %9, align 8
  %271 = load i16, i16* %14, align 2
  %272 = call i64 %269(%struct.sock* %270, i16 zeroext %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %264
  %275 = load %struct.sock*, %struct.sock** %9, align 8
  %276 = call i32 @inet_reset_saddr(%struct.sock* %275)
  %277 = load i32, i32* @EADDRINUSE, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %16, align 4
  br label %316

279:                                              ; preds = %264
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %296

283:                                              ; preds = %279
  %284 = load i32, i32* @SOCK_BINDADDR_LOCK, align 4
  %285 = load %struct.sock*, %struct.sock** %9, align 8
  %286 = getelementptr inbounds %struct.sock, %struct.sock* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %283
  %293 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %294 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %293, i32 0, i32 0
  store i32 1, i32* %294, align 4
  br label %295

295:                                              ; preds = %292, %283
  br label %296

296:                                              ; preds = %295, %279
  %297 = load i16, i16* %14, align 2
  %298 = icmp ne i16 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %296
  %300 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %301 = load %struct.sock*, %struct.sock** %9, align 8
  %302 = getelementptr inbounds %struct.sock, %struct.sock* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = or i32 %303, %300
  store i32 %304, i32* %302, align 8
  br label %305

305:                                              ; preds = %299, %296
  %306 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %307 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @htons(i64 %308)
  %310 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %311 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %310, i32 0, i32 3
  store i32 %309, i32* %311, align 8
  %312 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %313 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %312, i32 0, i32 1
  store i64 0, i64* %313, align 8
  %314 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %315 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %314, i32 0, i32 0
  store i64 0, i64* %315, align 8
  br label %316

316:                                              ; preds = %305, %274, %230, %202, %191, %158, %116, %104
  %317 = load %struct.sock*, %struct.sock** %9, align 8
  %318 = call i32 @release_sock(%struct.sock* %317)
  %319 = load i32, i32* %16, align 4
  store i32 %319, i32* %4, align 4
  br label %320

320:                                              ; preds = %316, %88, %67, %50, %36
  %321 = load i32, i32* %4, align 4
  ret i32 %321
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_type(%struct.TYPE_6__*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @inet_addr_type(%struct.net*, i64) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i64) #1

declare dso_local i32 @ipv6_chk_addr(%struct.net*, %struct.TYPE_6__*, %struct.net_device*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @inet_reset_saddr(%struct.sock*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
