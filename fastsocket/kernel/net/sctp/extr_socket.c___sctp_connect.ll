; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c___sctp_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c___sctp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctp_sock = type { %struct.sctp_endpoint* }
%struct.sctp_endpoint = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.sctp_association = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i16 }
%struct.sctp_transport = type { i32 }
%union.sctp_addr = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.sctp_af = type { i32, i32 (%union.sctp_addr*, %struct.sock*)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@ESTABLISHED = common dso_local global i32 0, align 4
@TCP = common dso_local global i32 0, align 4
@LISTENING = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCTP_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PROT_SOCK = common dso_local global i64 0, align 8
@CAP_NET_BIND_SERVICE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCTP_UNKNOWN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"About to exit __sctp_connect() free asoc: %p kaddrs: %p err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32, i32*)* @__sctp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sctp_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sctp_sock*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca %struct.sctp_association*, align 8
  %13 = alloca %struct.sctp_transport*, align 8
  %14 = alloca %union.sctp_addr, align 4
  %15 = alloca %struct.sctp_af*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %union.sctp_addr*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i16, align 2
  %24 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store %struct.sctp_association* null, %struct.sctp_association** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store %union.sctp_addr* null, %union.sctp_addr** %21, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %25)
  store %struct.sctp_sock* %26, %struct.sctp_sock** %9, align 8
  %27 = load %struct.sctp_sock*, %struct.sctp_sock** %9, align 8
  %28 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %27, i32 0, i32 0
  %29 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %28, align 8
  store %struct.sctp_endpoint* %29, %struct.sctp_endpoint** %10, align 8
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = load i32, i32* @ESTABLISHED, align 4
  %32 = call i64 @sctp_sstate(%struct.sock* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %4
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = load i32, i32* @TCP, align 4
  %37 = call i64 @sctp_style(%struct.sock* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = load i32, i32* @LISTENING, align 4
  %42 = call i64 @sctp_sstate(%struct.sock* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %4
  %45 = load i32, i32* @EISCONN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %18, align 4
  br label %309

47:                                               ; preds = %39, %34
  %48 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %49 = bitcast %struct.sockaddr* %48 to i8*
  store i8* %49, i8** %22, align 8
  br label %50

50:                                               ; preds = %218, %47
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %232

54:                                               ; preds = %50
  %55 = load i32, i32* %20, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ugt i64 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %18, align 4
  br label %309

64:                                               ; preds = %54
  %65 = load i8*, i8** %22, align 8
  %66 = bitcast i8* %65 to %union.sctp_addr*
  store %union.sctp_addr* %66, %union.sctp_addr** %21, align 8
  %67 = load %union.sctp_addr*, %union.sctp_addr** %21, align 8
  %68 = bitcast %union.sctp_addr* %67 to %struct.TYPE_13__*
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.sctp_af* @sctp_get_af_specific(i32 %70)
  store %struct.sctp_af* %71, %struct.sctp_af** %15, align 8
  %72 = load %struct.sctp_af*, %struct.sctp_af** %15, align 8
  %73 = icmp ne %struct.sctp_af* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load i32, i32* %20, align 4
  %76 = load %struct.sctp_af*, %struct.sctp_af** %15, align 8
  %77 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %75, %78
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74, %64
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %18, align 4
  br label %309

85:                                               ; preds = %74
  %86 = load %union.sctp_addr*, %union.sctp_addr** %21, align 8
  %87 = bitcast %union.sctp_addr* %86 to %struct.TYPE_9__*
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call zeroext i16 @ntohs(i32 %89)
  store i16 %90, i16* %23, align 2
  %91 = load %union.sctp_addr*, %union.sctp_addr** %21, align 8
  %92 = load %struct.sctp_af*, %struct.sctp_af** %15, align 8
  %93 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @memcpy(%union.sctp_addr* %14, %union.sctp_addr* %91, i32 %94)
  %96 = load %struct.sock*, %struct.sock** %5, align 8
  %97 = load %struct.sctp_af*, %struct.sctp_af** %15, align 8
  %98 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @sctp_verify_addr(%struct.sock* %96, %union.sctp_addr* %14, i32 %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %85
  br label %309

104:                                              ; preds = %85
  %105 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %106 = icmp ne %struct.sctp_association* %105, null
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %109 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i16, i16* %110, align 4
  %112 = zext i16 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %116 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i16, i16* %117, align 4
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* %23, align 2
  %121 = zext i16 %120 to i32
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %309

124:                                              ; preds = %114, %107, %104
  %125 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %126 = call %struct.sctp_association* @sctp_endpoint_lookup_assoc(%struct.sctp_endpoint* %125, %union.sctp_addr* %14, %struct.sctp_transport** %13)
  store %struct.sctp_association* %126, %struct.sctp_association** %12, align 8
  %127 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %128 = icmp ne %struct.sctp_association* %127, null
  br i1 %128, label %129, label %146

129:                                              ; preds = %124
  %130 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %131 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %132 = icmp ne %struct.sctp_association* %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %135 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @SCTP_STATE_ESTABLISHED, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @EISCONN, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %18, align 4
  br label %145

142:                                              ; preds = %133
  %143 = load i32, i32* @EALREADY, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %18, align 4
  br label %145

145:                                              ; preds = %142, %139
  br label %309

146:                                              ; preds = %129, %124
  %147 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %148 = call i64 @sctp_endpoint_is_peeled_off(%struct.sctp_endpoint* %147, %union.sctp_addr* %14)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* @EADDRNOTAVAIL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %18, align 4
  br label %309

153:                                              ; preds = %146
  %154 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %155 = icmp ne %struct.sctp_association* %154, null
  br i1 %155, label %208, label %156

156:                                              ; preds = %153
  %157 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %158 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %156
  %164 = load %struct.sock*, %struct.sock** %5, align 8
  %165 = call i64 @sctp_autobind(%struct.sock* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, i32* @EAGAIN, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %18, align 4
  br label %309

170:                                              ; preds = %163
  br label %187

171:                                              ; preds = %156
  %172 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %173 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @PROT_SOCK, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %171
  %180 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %181 = call i32 @capable(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* @EACCES, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %18, align 4
  br label %309

186:                                              ; preds = %179, %171
  br label %187

187:                                              ; preds = %186, %170
  %188 = call i32 @sctp_scope(%union.sctp_addr* %14)
  store i32 %188, i32* %16, align 4
  %189 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %190 = load %struct.sock*, %struct.sock** %5, align 8
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* @GFP_KERNEL, align 4
  %193 = call %struct.sctp_association* @sctp_association_new(%struct.sctp_endpoint* %189, %struct.sock* %190, i32 %191, i32 %192)
  store %struct.sctp_association* %193, %struct.sctp_association** %11, align 8
  %194 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %195 = icmp ne %struct.sctp_association* %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %187
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %18, align 4
  br label %309

199:                                              ; preds = %187
  %200 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* @GFP_KERNEL, align 4
  %203 = call i32 @sctp_assoc_set_bind_addr_from_ep(%struct.sctp_association* %200, i32 %201, i32 %202)
  store i32 %203, i32* %18, align 4
  %204 = load i32, i32* %18, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %309

207:                                              ; preds = %199
  br label %208

208:                                              ; preds = %207, %153
  %209 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %210 = load i32, i32* @GFP_KERNEL, align 4
  %211 = load i32, i32* @SCTP_UNKNOWN, align 4
  %212 = call %struct.sctp_transport* @sctp_assoc_add_peer(%struct.sctp_association* %209, %union.sctp_addr* %14, i32 %210, i32 %211)
  store %struct.sctp_transport* %212, %struct.sctp_transport** %13, align 8
  %213 = load %struct.sctp_transport*, %struct.sctp_transport** %13, align 8
  %214 = icmp ne %struct.sctp_transport* %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %208
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %18, align 4
  br label %309

218:                                              ; preds = %208
  %219 = load i32, i32* %19, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %19, align 4
  %221 = load %struct.sctp_af*, %struct.sctp_af** %15, align 8
  %222 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i8*, i8** %22, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr i8, i8* %224, i64 %225
  store i8* %226, i8** %22, align 8
  %227 = load %struct.sctp_af*, %struct.sctp_af** %15, align 8
  %228 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %20, align 4
  br label %50

232:                                              ; preds = %50
  %233 = load i32*, i32** %8, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %237 = load i32, i32* @GFP_KERNEL, align 4
  %238 = call i32 @sctp_assoc_set_id(%struct.sctp_association* %236, i32 %237)
  store i32 %238, i32* %18, align 4
  %239 = load i32, i32* %18, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  br label %309

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242, %232
  %244 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %245 = call i32 @sctp_primitive_ASSOCIATE(%struct.sctp_association* %244, i32* null)
  store i32 %245, i32* %18, align 4
  %246 = load i32, i32* %18, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  br label %309

249:                                              ; preds = %243
  %250 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %251 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i16, i16* %252, align 4
  %254 = call i32 @htons(i16 zeroext %253)
  %255 = load %struct.sock*, %struct.sock** %5, align 8
  %256 = call %struct.TYPE_16__* @inet_sk(%struct.sock* %255)
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 0
  store i32 %254, i32* %257, align 4
  %258 = load %union.sctp_addr*, %union.sctp_addr** %21, align 8
  %259 = bitcast %union.sctp_addr* %258 to %struct.TYPE_13__*
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call %struct.sctp_af* @sctp_get_af_specific(i32 %261)
  store %struct.sctp_af* %262, %struct.sctp_af** %15, align 8
  %263 = load %struct.sctp_af*, %struct.sctp_af** %15, align 8
  %264 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %263, i32 0, i32 1
  %265 = load i32 (%union.sctp_addr*, %struct.sock*)*, i32 (%union.sctp_addr*, %struct.sock*)** %264, align 8
  %266 = load %union.sctp_addr*, %union.sctp_addr** %21, align 8
  %267 = load %struct.sock*, %struct.sock** %5, align 8
  %268 = call i32 %265(%union.sctp_addr* %266, %struct.sock* %267)
  %269 = load %struct.sock*, %struct.sock** %5, align 8
  %270 = getelementptr inbounds %struct.sock, %struct.sock* %269, i32 0, i32 1
  store i64 0, i64* %270, align 8
  %271 = load %struct.sock*, %struct.sock** %5, align 8
  %272 = getelementptr inbounds %struct.sock, %struct.sock* %271, i32 0, i32 0
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %274, align 8
  %276 = icmp ne %struct.TYPE_14__* %275, null
  br i1 %276, label %277, label %285

277:                                              ; preds = %249
  %278 = load %struct.sock*, %struct.sock** %5, align 8
  %279 = getelementptr inbounds %struct.sock, %struct.sock* %278, i32 0, i32 0
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %24, align 4
  br label %285

285:                                              ; preds = %277, %249
  %286 = load %struct.sock*, %struct.sock** %5, align 8
  %287 = load i32, i32* %24, align 4
  %288 = load i32, i32* @O_NONBLOCK, align 4
  %289 = and i32 %287, %288
  %290 = call i64 @sock_sndtimeo(%struct.sock* %286, i32 %289)
  store i64 %290, i64* %17, align 8
  %291 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %292 = call i32 @sctp_wait_for_connect(%struct.sctp_association* %291, i64* %17)
  store i32 %292, i32* %18, align 4
  %293 = load i32, i32* %18, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %300, label %295

295:                                              ; preds = %285
  %296 = load i32, i32* %18, align 4
  %297 = load i32, i32* @EINPROGRESS, align 4
  %298 = sub nsw i32 0, %297
  %299 = icmp eq i32 %296, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %295, %285
  %301 = load i32*, i32** %8, align 8
  %302 = icmp ne i32* %301, null
  br i1 %302, label %303, label %308

303:                                              ; preds = %300
  %304 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %305 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load i32*, i32** %8, align 8
  store i32 %306, i32* %307, align 4
  br label %308

308:                                              ; preds = %303, %300, %295
  store %struct.sctp_association* null, %struct.sctp_association** %11, align 8
  br label %309

309:                                              ; preds = %308, %248, %241, %215, %206, %196, %183, %167, %150, %145, %123, %103, %82, %61, %44
  %310 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %311 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %312 = load i32, i32* %18, align 4
  %313 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.sctp_association* %310, %struct.sockaddr* %311, i32 %312)
  %314 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %315 = icmp ne %struct.sctp_association* %314, null
  br i1 %315, label %316, label %321

316:                                              ; preds = %309
  %317 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %318 = call i32 @sctp_unhash_established(%struct.sctp_association* %317)
  %319 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %320 = call i32 @sctp_association_free(%struct.sctp_association* %319)
  br label %321

321:                                              ; preds = %316, %309
  %322 = load i32, i32* %18, align 4
  ret i32 %322
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i64 @sctp_sstate(%struct.sock*, i32) #1

declare dso_local i64 @sctp_style(%struct.sock*, i32) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @memcpy(%union.sctp_addr*, %union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_verify_addr(%struct.sock*, %union.sctp_addr*, i32) #1

declare dso_local %struct.sctp_association* @sctp_endpoint_lookup_assoc(%struct.sctp_endpoint*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local i64 @sctp_endpoint_is_peeled_off(%struct.sctp_endpoint*, %union.sctp_addr*) #1

declare dso_local i64 @sctp_autobind(%struct.sock*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sctp_scope(%union.sctp_addr*) #1

declare dso_local %struct.sctp_association* @sctp_association_new(%struct.sctp_endpoint*, %struct.sock*, i32, i32) #1

declare dso_local i32 @sctp_assoc_set_bind_addr_from_ep(%struct.sctp_association*, i32, i32) #1

declare dso_local %struct.sctp_transport* @sctp_assoc_add_peer(%struct.sctp_association*, %union.sctp_addr*, i32, i32) #1

declare dso_local i32 @sctp_assoc_set_id(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_primitive_ASSOCIATE(%struct.sctp_association*, i32*) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local %struct.TYPE_16__* @inet_sk(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @sctp_wait_for_connect(%struct.sctp_association*, i64*) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, %struct.sctp_association*, %struct.sockaddr*, i32) #1

declare dso_local i32 @sctp_unhash_established(%struct.sctp_association*) #1

declare dso_local i32 @sctp_association_free(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
