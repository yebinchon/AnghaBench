; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64 }
%struct.msghdr = type { i32, i32, i32, i64 }
%struct.x25_sock = type { i32, i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_x25 = type { i64, %struct.TYPE_4__ }
%struct.sk_buff = type { i32* }
%struct.TYPE_6__ = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@AF_X25 = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"x25_sendmsg: sendto: Addresses built.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"x25_sendmsg: sendto: building packet.\0A\00", align 1
@X25_MAX_L2_LEN = common dso_local global i64 0, align 8
@X25_EXT_MIN_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"x25_sendmsg: Copying user data\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"x25_sendmsg: Building X.25 Header.\0A\00", align 1
@X25_STD_MIN_LEN = common dso_local global i64 0, align 8
@X25_GFI_EXTSEQ = common dso_local global i32 0, align 4
@X25_INTERRUPT = common dso_local global i8* null, align 8
@X25_GFI_STDSEQ = common dso_local global i32 0, align 4
@X25_DATA = common dso_local global i8* null, align 8
@X25_Q_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"x25_sendmsg: Built header.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"x25_sendmsg: Transmitting buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @x25_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.x25_sock*, align 8
  %11 = alloca %struct.sockaddr_x25*, align 8
  %12 = alloca %struct.sockaddr_x25, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.msghdr* %2, %struct.msghdr** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %21, %struct.sock** %9, align 8
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = call %struct.x25_sock* @x25_sk(%struct.sock* %22)
  store %struct.x25_sock* %23, %struct.x25_sock** %10, align 8
  %24 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.sockaddr_x25*
  store %struct.sockaddr_x25* %27, %struct.sockaddr_x25** %11, align 8
  %28 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MSG_DONTWAIT, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %18, align 4
  %35 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MSG_DONTWAIT, align 4
  %39 = load i32, i32* @MSG_OOB, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MSG_EOR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %37, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %4
  br label %416

49:                                               ; preds = %4
  %50 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MSG_EOR, align 4
  %54 = load i32, i32* @MSG_OOB, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %416

59:                                               ; preds = %49
  %60 = load i32, i32* @EADDRNOTAVAIL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %18, align 4
  %62 = load %struct.sock*, %struct.sock** %9, align 8
  %63 = load i32, i32* @SOCK_ZAPPED, align 4
  %64 = call i64 @sock_flag(%struct.sock* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %416

67:                                               ; preds = %59
  %68 = load i32, i32* @EPIPE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %18, align 4
  %70 = load %struct.sock*, %struct.sock** %9, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SEND_SHUTDOWN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @SIGPIPE, align 4
  %78 = load i32, i32* @current, align 4
  %79 = call i32 @send_sig(i32 %77, i32 %78, i32 0)
  br label %416

80:                                               ; preds = %67
  %81 = load i32, i32* @ENETUNREACH, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %18, align 4
  %83 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %84 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = icmp ne %struct.TYPE_5__* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %416

88:                                               ; preds = %80
  %89 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %11, align 8
  %90 = icmp ne %struct.sockaddr_x25* %89, null
  br i1 %90, label %91, label %124

91:                                               ; preds = %88
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %18, align 4
  %94 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %95 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ult i64 %97, 16
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %416

100:                                              ; preds = %91
  %101 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %11, align 8
  %102 = call i32 @memcpy(%struct.sockaddr_x25* %12, %struct.sockaddr_x25* %101, i32 16)
  %103 = load i32, i32* @EISCONN, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %18, align 4
  %105 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %106 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %12, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @strcmp(i32 %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %416

115:                                              ; preds = %100
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %18, align 4
  %118 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %12, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @AF_X25, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %416

123:                                              ; preds = %115
  br label %141

124:                                              ; preds = %88
  %125 = load i32, i32* @ENOTCONN, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %18, align 4
  %127 = load %struct.sock*, %struct.sock** %9, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TCP_ESTABLISHED, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %416

133:                                              ; preds = %124
  %134 = load i64, i64* @AF_X25, align 8
  %135 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %12, i32 0, i32 0
  store i64 %134, i64* %135, align 8
  %136 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %12, i32 0, i32 1
  %137 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %138 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %137, i32 0, i32 4
  %139 = bitcast %struct.TYPE_4__* %136 to i8*
  %140 = bitcast %struct.TYPE_4__* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 8 %140, i64 4, i1 false)
  br label %141

141:                                              ; preds = %133, %123
  %142 = load i64, i64* %8, align 8
  %143 = icmp ugt i64 %142, 65535
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @EMSGSIZE, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %18, align 4
  br label %416

147:                                              ; preds = %141
  %148 = load %struct.sock*, %struct.sock** %9, align 8
  %149 = call i32 @SOCK_DEBUG(%struct.sock* %148, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %150 = load %struct.sock*, %struct.sock** %9, align 8
  %151 = call i32 @SOCK_DEBUG(%struct.sock* %150, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %153 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @MSG_OOB, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %147
  %159 = load i64, i64* %8, align 8
  %160 = icmp ugt i64 %159, 32
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i64 32, i64* %8, align 8
  br label %162

162:                                              ; preds = %161, %158, %147
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* @X25_MAX_L2_LEN, align 8
  %165 = add i64 %163, %164
  %166 = load i64, i64* @X25_EXT_MIN_LEN, align 8
  %167 = add i64 %165, %166
  store i64 %167, i64* %16, align 8
  %168 = load %struct.sock*, %struct.sock** %9, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load i32, i32* %15, align 4
  %171 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %168, i64 %169, i32 %170, i32* %18)
  store %struct.sk_buff* %171, %struct.sk_buff** %13, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %173 = icmp ne %struct.sk_buff* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %162
  br label %416

175:                                              ; preds = %162
  %176 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %177 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %180 = call %struct.TYPE_6__* @X25_SKB_CB(%struct.sk_buff* %179)
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 4
  %182 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %183 = load i64, i64* @X25_MAX_L2_LEN, align 8
  %184 = load i64, i64* @X25_EXT_MIN_LEN, align 8
  %185 = add i64 %183, %184
  %186 = call i32 @skb_reserve(%struct.sk_buff* %182, i64 %185)
  %187 = load %struct.sock*, %struct.sock** %9, align 8
  %188 = call i32 @SOCK_DEBUG(%struct.sock* %187, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %189 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %190 = call i32 @skb_reset_transport_header(%struct.sk_buff* %189)
  %191 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %192 = load i64, i64* %8, align 8
  %193 = call i32 @skb_put(%struct.sk_buff* %191, i64 %192)
  %194 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %195 = call i32 @skb_transport_header(%struct.sk_buff* %194)
  %196 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %197 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i64, i64* %8, align 8
  %200 = call i32 @memcpy_fromiovec(i32 %195, i32 %198, i64 %199)
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %175
  br label %418

204:                                              ; preds = %175
  %205 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %206 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %17, align 4
  %215 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %216 = call i32 @skb_pull(%struct.sk_buff* %215, i32 1)
  br label %217

217:                                              ; preds = %209, %204
  %218 = load %struct.sock*, %struct.sock** %9, align 8
  %219 = call i32 @SOCK_DEBUG(%struct.sock* %218, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %220 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %221 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @MSG_OOB, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %286

226:                                              ; preds = %217
  %227 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %228 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %227, i32 0, i32 3
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %259

233:                                              ; preds = %226
  %234 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %235 = load i64, i64* @X25_STD_MIN_LEN, align 8
  %236 = call i8* @skb_push(%struct.sk_buff* %234, i64 %235)
  store i8* %236, i8** %14, align 8
  %237 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %238 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = ashr i32 %239, 8
  %241 = and i32 %240, 15
  %242 = load i32, i32* @X25_GFI_EXTSEQ, align 4
  %243 = or i32 %241, %242
  %244 = trunc i32 %243 to i8
  %245 = load i8*, i8** %14, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %14, align 8
  store i8 %244, i8* %245, align 1
  %247 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %248 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = ashr i32 %249, 0
  %251 = and i32 %250, 255
  %252 = trunc i32 %251 to i8
  %253 = load i8*, i8** %14, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %14, align 8
  store i8 %252, i8* %253, align 1
  %255 = load i8*, i8** @X25_INTERRUPT, align 8
  %256 = ptrtoint i8* %255 to i8
  %257 = load i8*, i8** %14, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %14, align 8
  store i8 %256, i8* %257, align 1
  br label %285

259:                                              ; preds = %226
  %260 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %261 = load i64, i64* @X25_STD_MIN_LEN, align 8
  %262 = call i8* @skb_push(%struct.sk_buff* %260, i64 %261)
  store i8* %262, i8** %14, align 8
  %263 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %264 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = ashr i32 %265, 8
  %267 = and i32 %266, 15
  %268 = load i32, i32* @X25_GFI_STDSEQ, align 4
  %269 = or i32 %267, %268
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %14, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %14, align 8
  store i8 %270, i8* %271, align 1
  %273 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %274 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = ashr i32 %275, 0
  %277 = and i32 %276, 255
  %278 = trunc i32 %277 to i8
  %279 = load i8*, i8** %14, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %14, align 8
  store i8 %278, i8* %279, align 1
  %281 = load i8*, i8** @X25_INTERRUPT, align 8
  %282 = ptrtoint i8* %281 to i8
  %283 = load i8*, i8** %14, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %14, align 8
  store i8 %282, i8* %283, align 1
  br label %285

285:                                              ; preds = %259, %233
  br label %361

286:                                              ; preds = %217
  %287 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %288 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %287, i32 0, i32 3
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %323

293:                                              ; preds = %286
  %294 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %295 = load i64, i64* @X25_EXT_MIN_LEN, align 8
  %296 = call i8* @skb_push(%struct.sk_buff* %294, i64 %295)
  store i8* %296, i8** %14, align 8
  %297 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %298 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = ashr i32 %299, 8
  %301 = and i32 %300, 15
  %302 = load i32, i32* @X25_GFI_EXTSEQ, align 4
  %303 = or i32 %301, %302
  %304 = trunc i32 %303 to i8
  %305 = load i8*, i8** %14, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %14, align 8
  store i8 %304, i8* %305, align 1
  %307 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %308 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = ashr i32 %309, 0
  %311 = and i32 %310, 255
  %312 = trunc i32 %311 to i8
  %313 = load i8*, i8** %14, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %314, i8** %14, align 8
  store i8 %312, i8* %313, align 1
  %315 = load i8*, i8** @X25_DATA, align 8
  %316 = ptrtoint i8* %315 to i8
  %317 = load i8*, i8** %14, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %14, align 8
  store i8 %316, i8* %317, align 1
  %319 = load i8*, i8** @X25_DATA, align 8
  %320 = ptrtoint i8* %319 to i8
  %321 = load i8*, i8** %14, align 8
  %322 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %322, i8** %14, align 8
  store i8 %320, i8* %321, align 1
  br label %349

323:                                              ; preds = %286
  %324 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %325 = load i64, i64* @X25_STD_MIN_LEN, align 8
  %326 = call i8* @skb_push(%struct.sk_buff* %324, i64 %325)
  store i8* %326, i8** %14, align 8
  %327 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %328 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = ashr i32 %329, 8
  %331 = and i32 %330, 15
  %332 = load i32, i32* @X25_GFI_STDSEQ, align 4
  %333 = or i32 %331, %332
  %334 = trunc i32 %333 to i8
  %335 = load i8*, i8** %14, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %14, align 8
  store i8 %334, i8* %335, align 1
  %337 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %338 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = ashr i32 %339, 0
  %341 = and i32 %340, 255
  %342 = trunc i32 %341 to i8
  %343 = load i8*, i8** %14, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %14, align 8
  store i8 %342, i8* %343, align 1
  %345 = load i8*, i8** @X25_DATA, align 8
  %346 = ptrtoint i8* %345 to i8
  %347 = load i8*, i8** %14, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %14, align 8
  store i8 %346, i8* %347, align 1
  br label %349

349:                                              ; preds = %323, %293
  %350 = load i32, i32* %17, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %360

352:                                              ; preds = %349
  %353 = load i32, i32* @X25_Q_BIT, align 4
  %354 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %355 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %353
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %352, %349
  br label %361

361:                                              ; preds = %360, %285
  %362 = load %struct.sock*, %struct.sock** %9, align 8
  %363 = call i32 @SOCK_DEBUG(%struct.sock* %362, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %364 = load %struct.sock*, %struct.sock** %9, align 8
  %365 = call i32 @SOCK_DEBUG(%struct.sock* %364, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %366 = load i32, i32* @ENOTCONN, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %18, align 4
  %368 = load %struct.sock*, %struct.sock** %9, align 8
  %369 = getelementptr inbounds %struct.sock, %struct.sock* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @TCP_ESTABLISHED, align 8
  %372 = icmp ne i64 %370, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %361
  br label %418

374:                                              ; preds = %361
  %375 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %376 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @MSG_OOB, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %374
  %382 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %383 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %382, i32 0, i32 2
  %384 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %385 = call i32 @skb_queue_tail(i32* %383, %struct.sk_buff* %384)
  br label %407

386:                                              ; preds = %374
  %387 = load %struct.sock*, %struct.sock** %9, align 8
  %388 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %389 = call i32 @x25_output(%struct.sock* %387, %struct.sk_buff* %388)
  store i32 %389, i32* %18, align 4
  %390 = load i32, i32* %18, align 4
  %391 = sext i32 %390 to i64
  store i64 %391, i64* %8, align 8
  %392 = load i32, i32* %18, align 4
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %386
  %395 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %396 = call i32 @kfree_skb(%struct.sk_buff* %395)
  br label %406

397:                                              ; preds = %386
  %398 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %399 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %397
  %403 = load i64, i64* %8, align 8
  %404 = add i64 %403, 1
  store i64 %404, i64* %8, align 8
  br label %405

405:                                              ; preds = %402, %397
  br label %406

406:                                              ; preds = %405, %394
  br label %407

407:                                              ; preds = %406, %381
  %408 = load %struct.sock*, %struct.sock** %9, align 8
  %409 = call i32 @lock_sock(%struct.sock* %408)
  %410 = load %struct.sock*, %struct.sock** %9, align 8
  %411 = call i32 @x25_kick(%struct.sock* %410)
  %412 = load %struct.sock*, %struct.sock** %9, align 8
  %413 = call i32 @release_sock(%struct.sock* %412)
  %414 = load i64, i64* %8, align 8
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %18, align 4
  br label %416

416:                                              ; preds = %418, %407, %174, %144, %132, %122, %114, %99, %87, %76, %66, %58, %48
  %417 = load i32, i32* %18, align 4
  ret i32 %417

418:                                              ; preds = %373, %203
  %419 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %420 = call i32 @kfree_skb(%struct.sk_buff* %419)
  br label %416
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_x25*, %struct.sockaddr_x25*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @X25_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @x25_output(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @x25_kick(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
