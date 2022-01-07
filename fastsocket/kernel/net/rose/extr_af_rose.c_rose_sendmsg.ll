; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64, i32 }
%struct.msghdr = type { i32, i32, i32, i64 }
%struct.rose_sock = type { i32, i32, i64, i32*, i32, i32, i32*, i32* }
%struct.sockaddr_rose = type { i32 }
%struct.full_sockaddr_rose = type { i32, i64, i32*, i32, i32 }
%struct.sk_buff = type { i32*, i64, i32, i32, %struct.sock* }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@AF_ROSE = common dso_local global i64 0, align 8
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ROSE: sendto: Addresses built.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ROSE: sendto: building packet.\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@AX25_BPQ_HEADER_LEN = common dso_local global i64 0, align 8
@AX25_MAX_HEADER_LEN = common dso_local global i64 0, align 8
@ROSE_MIN_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"ROSE: Appending user data\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ROSE: Building Network Header.\0A\00", align 1
@ROSE_GFI = common dso_local global i32 0, align 4
@ROSE_DATA = common dso_local global i8 0, align 1
@ROSE_Q_BIT = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ROSE: Built header.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"ROSE: Transmitting buffer\0A\00", align 1
@M_BIT = common dso_local global i32 0, align 4
@ROSE_PACLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @rose_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.rose_sock*, align 8
  %12 = alloca %struct.sockaddr_rose*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.full_sockaddr_rose, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %10, align 8
  %23 = load %struct.sock*, %struct.sock** %10, align 8
  %24 = call %struct.rose_sock* @rose_sk(%struct.sock* %23)
  store %struct.rose_sock* %24, %struct.rose_sock** %11, align 8
  %25 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.sockaddr_rose*
  store %struct.sockaddr_rose* %28, %struct.sockaddr_rose** %12, align 8
  store i32 0, i32* %19, align 4
  %29 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MSG_DONTWAIT, align 4
  %33 = load i32, i32* @MSG_EOR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %31, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %352

43:                                               ; preds = %4
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = load i32, i32* @SOCK_ZAPPED, align 4
  %46 = call i64 @sock_flag(%struct.sock* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EADDRNOTAVAIL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %352

51:                                               ; preds = %43
  %52 = load %struct.sock*, %struct.sock** %10, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SEND_SHUTDOWN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* @SIGPIPE, align 4
  %60 = load i32, i32* @current, align 4
  %61 = call i32 @send_sig(i32 %59, i32 %60, i32 0)
  %62 = load i32, i32* @EPIPE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %352

64:                                               ; preds = %51
  %65 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %66 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %71 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64
  %75 = load i32, i32* @ENETUNREACH, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %352

77:                                               ; preds = %69
  %78 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %79 = icmp ne %struct.sockaddr_rose* %78, null
  br i1 %79, label %80, label %170

80:                                               ; preds = %77
  %81 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %82 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ne i64 %84, 4
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %88 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ne i64 %90, 32
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %352

95:                                               ; preds = %86, %80
  %96 = call i32 @memset(%struct.full_sockaddr_rose* %14, i32 0, i32 32)
  %97 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %98 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %99 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memcpy(%struct.full_sockaddr_rose* %14, %struct.sockaddr_rose* %97, i32 %100)
  %102 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %103 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 4
  %105 = call i64 @rosecmp(i32* %103, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %95
  %108 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %109 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 3
  %111 = call i64 @ax25cmp(i32* %109, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107, %95
  %114 = load i32, i32* @EISCONN, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %352

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %120 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* @EISCONN, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %352

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %130 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %161

133:                                              ; preds = %126
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %157, %133
  %135 = load i32, i32* %17, align 4
  %136 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %134
  %140 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %141 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i64 @ax25cmp(i32* %145, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %139
  %154 = load i32, i32* @EISCONN, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %352

156:                                              ; preds = %139
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %17, align 4
  br label %134

160:                                              ; preds = %134
  br label %161

161:                                              ; preds = %160, %126
  %162 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @AF_ROSE, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %5, align 4
  br label %352

169:                                              ; preds = %161
  br label %217

170:                                              ; preds = %77
  %171 = load %struct.sock*, %struct.sock** %10, align 8
  %172 = getelementptr inbounds %struct.sock, %struct.sock* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @TCP_ESTABLISHED, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i32, i32* @ENOTCONN, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %5, align 4
  br label %352

179:                                              ; preds = %170
  %180 = load i64, i64* @AF_ROSE, align 8
  %181 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 1
  store i64 %180, i64* %181, align 8
  %182 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %183 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 4
  store i32 %184, i32* %185, align 4
  %186 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %187 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 3
  store i32 %188, i32* %189, align 8
  %190 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %191 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 0
  store i32 %192, i32* %193, align 8
  store i32 0, i32* %17, align 4
  br label %194

194:                                              ; preds = %213, %179
  %195 = load i32, i32* %17, align 4
  %196 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %197 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %216

200:                                              ; preds = %194
  %201 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %202 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %14, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %207, i32* %212, align 4
  br label %213

213:                                              ; preds = %200
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %17, align 4
  br label %194

216:                                              ; preds = %194
  br label %217

217:                                              ; preds = %216, %169
  %218 = load %struct.sock*, %struct.sock** %10, align 8
  %219 = call i32 @SOCK_DEBUG(%struct.sock* %218, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %220 = load %struct.sock*, %struct.sock** %10, align 8
  %221 = call i32 @SOCK_DEBUG(%struct.sock* %220, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %222 = load i64, i64* %9, align 8
  %223 = icmp ugt i64 %222, 65535
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = load i32, i32* @EMSGSIZE, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %5, align 4
  br label %352

227:                                              ; preds = %217
  %228 = load i64, i64* %9, align 8
  %229 = load i64, i64* @AX25_BPQ_HEADER_LEN, align 8
  %230 = add i64 %228, %229
  %231 = load i64, i64* @AX25_MAX_HEADER_LEN, align 8
  %232 = add i64 %230, %231
  %233 = load i64, i64* @ROSE_MIN_LEN, align 8
  %234 = add i64 %232, %233
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %18, align 4
  %236 = load %struct.sock*, %struct.sock** %10, align 8
  %237 = load i32, i32* %18, align 4
  %238 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %239 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @MSG_DONTWAIT, align 4
  %242 = and i32 %240, %241
  %243 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %236, i32 %237, i32 %242, i32* %13)
  store %struct.sk_buff* %243, %struct.sk_buff** %15, align 8
  %244 = icmp eq %struct.sk_buff* %243, null
  br i1 %244, label %245, label %247

245:                                              ; preds = %227
  %246 = load i32, i32* %13, align 4
  store i32 %246, i32* %5, align 4
  br label %352

247:                                              ; preds = %227
  %248 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %249 = load i64, i64* @AX25_BPQ_HEADER_LEN, align 8
  %250 = load i64, i64* @AX25_MAX_HEADER_LEN, align 8
  %251 = add i64 %249, %250
  %252 = load i64, i64* @ROSE_MIN_LEN, align 8
  %253 = add i64 %251, %252
  %254 = trunc i64 %253 to i32
  %255 = call i32 @skb_reserve(%struct.sk_buff* %248, i32 %254)
  %256 = load %struct.sock*, %struct.sock** %10, align 8
  %257 = call i32 @SOCK_DEBUG(%struct.sock* %256, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %258 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %259 = call i32 @skb_reset_transport_header(%struct.sk_buff* %258)
  %260 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %261 = load i64, i64* %9, align 8
  %262 = trunc i64 %261 to i32
  %263 = call i8* @skb_put(%struct.sk_buff* %260, i32 %262)
  %264 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %265 = call i32 @skb_transport_header(%struct.sk_buff* %264)
  %266 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %267 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load i64, i64* %9, align 8
  %270 = call i32 @memcpy_fromiovec(i32 %265, i32 %268, i64 %269)
  store i32 %270, i32* %13, align 4
  %271 = load i32, i32* %13, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %247
  %274 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %275 = call i32 @kfree_skb(%struct.sk_buff* %274)
  %276 = load i32, i32* %13, align 4
  store i32 %276, i32* %5, align 4
  br label %352

277:                                              ; preds = %247
  %278 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %279 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %277
  %283 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %284 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %19, align 4
  %288 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %289 = call i32 @skb_pull(%struct.sk_buff* %288, i32 1)
  br label %290

290:                                              ; preds = %282, %277
  %291 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %292 = load i64, i64* @ROSE_MIN_LEN, align 8
  %293 = call i8* @skb_push(%struct.sk_buff* %291, i64 %292)
  store i8* %293, i8** %16, align 8
  %294 = load %struct.sock*, %struct.sock** %10, align 8
  %295 = call i32 @SOCK_DEBUG(%struct.sock* %294, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %296 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %297 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = ashr i32 %298, 8
  %300 = and i32 %299, 15
  %301 = load i32, i32* @ROSE_GFI, align 4
  %302 = or i32 %300, %301
  %303 = trunc i32 %302 to i8
  %304 = load i8*, i8** %16, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 0
  store i8 %303, i8* %305, align 1
  %306 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %307 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = ashr i32 %308, 0
  %310 = and i32 %309, 255
  %311 = trunc i32 %310 to i8
  %312 = load i8*, i8** %16, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 1
  store i8 %311, i8* %313, align 1
  %314 = load i8, i8* @ROSE_DATA, align 1
  %315 = load i8*, i8** %16, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 2
  store i8 %314, i8* %316, align 1
  %317 = load i32, i32* %19, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %290
  %320 = load i8, i8* @ROSE_Q_BIT, align 1
  %321 = zext i8 %320 to i32
  %322 = load i8*, i8** %16, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 0
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = or i32 %325, %321
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %323, align 1
  br label %328

328:                                              ; preds = %319, %290
  %329 = load %struct.sock*, %struct.sock** %10, align 8
  %330 = call i32 @SOCK_DEBUG(%struct.sock* %329, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %331 = load %struct.sock*, %struct.sock** %10, align 8
  %332 = call i32 @SOCK_DEBUG(%struct.sock* %331, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %333 = load %struct.sock*, %struct.sock** %10, align 8
  %334 = getelementptr inbounds %struct.sock, %struct.sock* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @TCP_ESTABLISHED, align 8
  %337 = icmp ne i64 %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %328
  %339 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %340 = call i32 @kfree_skb(%struct.sk_buff* %339)
  %341 = load i32, i32* @ENOTCONN, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %5, align 4
  br label %352

343:                                              ; preds = %328
  %344 = load %struct.sock*, %struct.sock** %10, align 8
  %345 = getelementptr inbounds %struct.sock, %struct.sock* %344, i32 0, i32 2
  %346 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %347 = call i32 @skb_queue_tail(i32* %345, %struct.sk_buff* %346)
  %348 = load %struct.sock*, %struct.sock** %10, align 8
  %349 = call i32 @rose_kick(%struct.sock* %348)
  %350 = load i64, i64* %9, align 8
  %351 = trunc i64 %350 to i32
  store i32 %351, i32* %5, align 4
  br label %352

352:                                              ; preds = %343, %338, %273, %245, %224, %176, %166, %153, %123, %113, %92, %74, %58, %48, %40
  %353 = load i32, i32* %5, align 4
  ret i32 %353
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.full_sockaddr_rose*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.full_sockaddr_rose*, %struct.sockaddr_rose*, i32) #1

declare dso_local i64 @rosecmp(i32*, i32*) #1

declare dso_local i64 @ax25cmp(i32*, i32*) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rose_kick(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
