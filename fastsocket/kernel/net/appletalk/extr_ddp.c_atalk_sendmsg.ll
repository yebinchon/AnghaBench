; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*, %struct.sk_buff*, i32)* }
%struct.sk_buff = type { %struct.net_device*, %struct.sock* }
%struct.net_device = type { i32, i32, i32, i32 }
%struct.sock = type { i64, i32 }
%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.msghdr = type { i32, i32, i32, i64 }
%struct.atalk_sock = type { i64, i32, i32, i64, i64, i32 }
%struct.sockaddr_at = type { i64, %struct.atalk_addr, i32 }
%struct.atalk_addr = type { i64, i64 }
%struct.ddpehdr = type { i64, i64, i32, i32, i32, i64, i64, i32 }
%struct.atalk_route = type { i32, %struct.atalk_addr, %struct.net_device* }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DDP_MAXSZ = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AF_APPLETALK = common dso_local global i64 0, align 8
@ATADDR_BCAST = common dso_local global i64 0, align 8
@SOCK_BROADCAST = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SK %p: Got address.\0A\00", align 1
@ddp_dl = common dso_local global %struct.TYPE_3__* null, align 8
@ATADDR_ANYNODE = common dso_local global i64 0, align 8
@ENETUNREACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"SK %p: Size needed %d, device %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SK %p: Begin build.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"SK %p: Copy user data (%Zd bytes).\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"SK %p: send out(copy).\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SK %p: Loop back.\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SK %p: send out.\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"SK %p: Done write (%Zd).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @atalk_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atalk_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.atalk_sock*, align 8
  %12 = alloca %struct.sockaddr_at*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_at, align 8
  %16 = alloca %struct.sockaddr_at, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.net_device*, align 8
  %19 = alloca %struct.ddpehdr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.atalk_route*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.atalk_addr, align 8
  %24 = alloca %struct.sk_buff*, align 8
  %25 = alloca %struct.atalk_addr, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %26 = load %struct.socket*, %struct.socket** %7, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load %struct.sock*, %struct.sock** %27, align 8
  store %struct.sock* %28, %struct.sock** %10, align 8
  %29 = load %struct.sock*, %struct.sock** %10, align 8
  %30 = call %struct.atalk_sock* @at_sk(%struct.sock* %29)
  store %struct.atalk_sock* %30, %struct.atalk_sock** %11, align 8
  %31 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.sockaddr_at*
  store %struct.sockaddr_at* %34, %struct.sockaddr_at** %12, align 8
  %35 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @MSG_DONTWAIT, align 4
  %40 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %407

48:                                               ; preds = %4
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @DDP_MAXSZ, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EMSGSIZE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %407

55:                                               ; preds = %48
  %56 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %57 = icmp ne %struct.sockaddr_at* %56, null
  br i1 %57, label %58, label %102

58:                                               ; preds = %55
  %59 = load %struct.sock*, %struct.sock** %10, align 8
  %60 = load i32, i32* @SOCK_ZAPPED, align 4
  %61 = call i64 @sock_flag(%struct.sock* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.sock*, %struct.sock** %10, align 8
  %65 = call i64 @atalk_autobind(%struct.sock* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %407

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %58
  %72 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %73 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %75, 32
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %79 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AF_APPLETALK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %71
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %407

86:                                               ; preds = %77
  %87 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %88 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ATADDR_BCAST, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.sock*, %struct.sock** %10, align 8
  %95 = load i32, i32* @SOCK_BROADCAST, align 4
  %96 = call i64 @sock_flag(%struct.sock* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @EPERM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %407

101:                                              ; preds = %93, %86
  br label %132

102:                                              ; preds = %55
  %103 = load %struct.sock*, %struct.sock** %10, align 8
  %104 = getelementptr inbounds %struct.sock, %struct.sock* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TCP_ESTABLISHED, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @ENOTCONN, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %407

111:                                              ; preds = %102
  store %struct.sockaddr_at* %15, %struct.sockaddr_at** %12, align 8
  %112 = load i64, i64* @AF_APPLETALK, align 8
  %113 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %114 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.atalk_sock*, %struct.atalk_sock** %11, align 8
  %116 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %119 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.atalk_sock*, %struct.atalk_sock** %11, align 8
  %121 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %124 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load %struct.atalk_sock*, %struct.atalk_sock** %11, align 8
  %127 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %130 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %130, i32 0, i32 1
  store i64 %128, i64* %131, align 8
  br label %132

132:                                              ; preds = %111, %101
  %133 = load %struct.sock*, %struct.sock** %10, align 8
  %134 = load %struct.sock*, %struct.sock** %10, align 8
  %135 = call i32 (%struct.sock*, i8*, %struct.sock*, ...) @SOCK_DEBUG(%struct.sock* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.sock* %134)
  %136 = load i64, i64* %9, align 8
  %137 = add i64 56, %136
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ddp_dl, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = add i64 %137, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %20, align 4
  %144 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %145 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %132
  %150 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %151 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @ATADDR_ANYNODE, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %149, %132
  %157 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %158 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %157, i32 0, i32 1
  %159 = call %struct.atalk_route* @atrtr_find(%struct.atalk_addr* %158)
  store %struct.atalk_route* %159, %struct.atalk_route** %21, align 8
  br label %167

160:                                              ; preds = %149
  %161 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %23, i32 0, i32 0
  store i64 0, i64* %161, align 8
  %162 = load %struct.atalk_sock*, %struct.atalk_sock** %11, align 8
  %163 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %23, i32 0, i32 1
  store i64 %164, i64* %165, align 8
  %166 = call %struct.atalk_route* @atrtr_find(%struct.atalk_addr* %23)
  store %struct.atalk_route* %166, %struct.atalk_route** %21, align 8
  br label %167

167:                                              ; preds = %160, %156
  %168 = load %struct.atalk_route*, %struct.atalk_route** %21, align 8
  %169 = icmp ne %struct.atalk_route* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* @ENETUNREACH, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  br label %407

173:                                              ; preds = %167
  %174 = load %struct.atalk_route*, %struct.atalk_route** %21, align 8
  %175 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %174, i32 0, i32 2
  %176 = load %struct.net_device*, %struct.net_device** %175, align 8
  store %struct.net_device* %176, %struct.net_device** %18, align 8
  %177 = load %struct.sock*, %struct.sock** %10, align 8
  %178 = load %struct.sock*, %struct.sock** %10, align 8
  %179 = load i32, i32* %20, align 4
  %180 = load %struct.net_device*, %struct.net_device** %18, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (%struct.sock*, i8*, %struct.sock*, ...) @SOCK_DEBUG(%struct.sock* %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %178, i32 %179, i32 %182)
  %184 = load %struct.net_device*, %struct.net_device** %18, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %20, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %20, align 4
  %189 = load %struct.sock*, %struct.sock** %10, align 8
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @MSG_DONTWAIT, align 4
  %193 = and i32 %191, %192
  %194 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %189, i32 %190, i32 %193, i32* %22)
  store %struct.sk_buff* %194, %struct.sk_buff** %17, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %196 = icmp ne %struct.sk_buff* %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %173
  %198 = load i32, i32* %22, align 4
  store i32 %198, i32* %5, align 4
  br label %407

199:                                              ; preds = %173
  %200 = load %struct.sock*, %struct.sock** %10, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 1
  store %struct.sock* %200, %struct.sock** %202, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ddp_dl, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @skb_reserve(%struct.sk_buff* %203, i32 %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %209 = load %struct.net_device*, %struct.net_device** %18, align 8
  %210 = getelementptr inbounds %struct.net_device, %struct.net_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @skb_reserve(%struct.sk_buff* %208, i32 %211)
  %213 = load %struct.net_device*, %struct.net_device** %18, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 0
  store %struct.net_device* %213, %struct.net_device** %215, align 8
  %216 = load %struct.sock*, %struct.sock** %10, align 8
  %217 = load %struct.sock*, %struct.sock** %10, align 8
  %218 = call i32 (%struct.sock*, i8*, %struct.sock*, ...) @SOCK_DEBUG(%struct.sock* %216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.sock* %217)
  %219 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %220 = call i64 @skb_put(%struct.sk_buff* %219, i64 56)
  %221 = inttoptr i64 %220 to %struct.ddpehdr*
  store %struct.ddpehdr* %221, %struct.ddpehdr** %19, align 8
  %222 = load i64, i64* %9, align 8
  %223 = add i64 %222, 56
  %224 = call i32 @htons(i64 %223)
  %225 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %226 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %225, i32 0, i32 7
  store i32 %224, i32* %226, align 8
  %227 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %228 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %232 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %231, i32 0, i32 6
  store i64 %230, i64* %232, align 8
  %233 = load %struct.atalk_sock*, %struct.atalk_sock** %11, align 8
  %234 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %237 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %236, i32 0, i32 5
  store i64 %235, i64* %237, align 8
  %238 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %239 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %243 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  %244 = load %struct.atalk_sock*, %struct.atalk_sock** %11, align 8
  %245 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %248 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %247, i32 0, i32 4
  store i32 %246, i32* %248, align 8
  %249 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %250 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %253 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 4
  %254 = load %struct.atalk_sock*, %struct.atalk_sock** %11, align 8
  %255 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %258 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load %struct.sock*, %struct.sock** %10, align 8
  %260 = load %struct.sock*, %struct.sock** %10, align 8
  %261 = load i64, i64* %9, align 8
  %262 = call i32 (%struct.sock*, i8*, %struct.sock*, ...) @SOCK_DEBUG(%struct.sock* %259, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), %struct.sock* %260, i64 %261)
  %263 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %264 = load i64, i64* %9, align 8
  %265 = call i64 @skb_put(%struct.sk_buff* %263, i64 %264)
  %266 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %267 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load i64, i64* %9, align 8
  %270 = call i32 @memcpy_fromiovec(i64 %265, i32 %268, i64 %269)
  store i32 %270, i32* %22, align 4
  %271 = load i32, i32* %22, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %199
  %274 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %275 = call i32 @kfree_skb(%struct.sk_buff* %274)
  %276 = load i32, i32* @EFAULT, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %5, align 4
  br label %407

278:                                              ; preds = %199
  %279 = load %struct.sock*, %struct.sock** %10, align 8
  %280 = getelementptr inbounds %struct.sock, %struct.sock* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %285 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %284, i32 0, i32 1
  store i64 0, i64* %285, align 8
  br label %293

286:                                              ; preds = %278
  %287 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %288 = load i64, i64* %9, align 8
  %289 = add i64 %288, 56
  %290 = call i64 @atalk_checksum(%struct.sk_buff* %287, i64 %289)
  %291 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %292 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %291, i32 0, i32 1
  store i64 %290, i64* %292, align 8
  br label %293

293:                                              ; preds = %286, %283
  %294 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %295 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @ATADDR_BCAST, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %329

299:                                              ; preds = %293
  %300 = load %struct.atalk_route*, %struct.atalk_route** %21, align 8
  %301 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @RTF_GATEWAY, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %329, label %306

306:                                              ; preds = %299
  %307 = load %struct.net_device*, %struct.net_device** %18, align 8
  %308 = getelementptr inbounds %struct.net_device, %struct.net_device* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @IFF_LOOPBACK, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %329, label %313

313:                                              ; preds = %306
  %314 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %315 = load i32, i32* @GFP_KERNEL, align 4
  %316 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %314, i32 %315)
  store %struct.sk_buff* %316, %struct.sk_buff** %24, align 8
  %317 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %318 = icmp ne %struct.sk_buff* %317, null
  br i1 %318, label %319, label %328

319:                                              ; preds = %313
  store i32 1, i32* %14, align 4
  %320 = load %struct.sock*, %struct.sock** %10, align 8
  %321 = load %struct.sock*, %struct.sock** %10, align 8
  %322 = call i32 (%struct.sock*, i8*, %struct.sock*, ...) @SOCK_DEBUG(%struct.sock* %320, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %struct.sock* %321)
  %323 = load %struct.net_device*, %struct.net_device** %18, align 8
  %324 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %325 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %326 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %325, i32 0, i32 1
  %327 = call i32 @aarp_send_ddp(%struct.net_device* %323, %struct.sk_buff* %324, %struct.atalk_addr* %326, i32* null)
  br label %328

328:                                              ; preds = %319, %313
  br label %329

329:                                              ; preds = %328, %306, %299, %293
  %330 = load %struct.net_device*, %struct.net_device** %18, align 8
  %331 = getelementptr inbounds %struct.net_device, %struct.net_device* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @IFF_LOOPBACK, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %329
  %337 = load i32, i32* %14, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %378

339:                                              ; preds = %336, %329
  %340 = load %struct.sock*, %struct.sock** %10, align 8
  %341 = load %struct.sock*, %struct.sock** %10, align 8
  %342 = call i32 (%struct.sock*, i8*, %struct.sock*, ...) @SOCK_DEBUG(%struct.sock* %340, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.sock* %341)
  %343 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %344 = call i32 @skb_orphan(%struct.sk_buff* %343)
  %345 = load %struct.ddpehdr*, %struct.ddpehdr** %19, align 8
  %346 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @ATADDR_BCAST, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %368

350:                                              ; preds = %339
  %351 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %25, i32 0, i32 0
  store i64 0, i64* %351, align 8
  %352 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %25, i32 0, i32 1
  store i64 0, i64* %352, align 8
  %353 = call %struct.atalk_route* @atrtr_find(%struct.atalk_addr* %25)
  store %struct.atalk_route* %353, %struct.atalk_route** %21, align 8
  %354 = load %struct.atalk_route*, %struct.atalk_route** %21, align 8
  %355 = icmp ne %struct.atalk_route* %354, null
  br i1 %355, label %361, label %356

356:                                              ; preds = %350
  %357 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %358 = call i32 @kfree_skb(%struct.sk_buff* %357)
  %359 = load i32, i32* @ENETUNREACH, align 4
  %360 = sub nsw i32 0, %359
  store i32 %360, i32* %5, align 4
  br label %407

361:                                              ; preds = %350
  %362 = load %struct.atalk_route*, %struct.atalk_route** %21, align 8
  %363 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %362, i32 0, i32 2
  %364 = load %struct.net_device*, %struct.net_device** %363, align 8
  store %struct.net_device* %364, %struct.net_device** %18, align 8
  %365 = load %struct.net_device*, %struct.net_device** %18, align 8
  %366 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %367 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %366, i32 0, i32 0
  store %struct.net_device* %365, %struct.net_device** %367, align 8
  br label %368

368:                                              ; preds = %361, %339
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ddp_dl, align 8
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 1
  %371 = load i32 (%struct.TYPE_3__*, %struct.sk_buff*, i32)*, i32 (%struct.TYPE_3__*, %struct.sk_buff*, i32)** %370, align 8
  %372 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ddp_dl, align 8
  %373 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %374 = load %struct.net_device*, %struct.net_device** %18, align 8
  %375 = getelementptr inbounds %struct.net_device, %struct.net_device* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = call i32 %371(%struct.TYPE_3__* %372, %struct.sk_buff* %373, i32 %376)
  br label %400

378:                                              ; preds = %336
  %379 = load %struct.sock*, %struct.sock** %10, align 8
  %380 = load %struct.sock*, %struct.sock** %10, align 8
  %381 = call i32 (%struct.sock*, i8*, %struct.sock*, ...) @SOCK_DEBUG(%struct.sock* %379, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), %struct.sock* %380)
  %382 = load %struct.atalk_route*, %struct.atalk_route** %21, align 8
  %383 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @RTF_GATEWAY, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %378
  %389 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %16, i32 0, i32 1
  %390 = load %struct.atalk_route*, %struct.atalk_route** %21, align 8
  %391 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %390, i32 0, i32 1
  %392 = bitcast %struct.atalk_addr* %389 to i8*
  %393 = bitcast %struct.atalk_addr* %391 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %392, i8* align 8 %393, i64 16, i1 false)
  store %struct.sockaddr_at* %16, %struct.sockaddr_at** %12, align 8
  br label %394

394:                                              ; preds = %388, %378
  %395 = load %struct.net_device*, %struct.net_device** %18, align 8
  %396 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %397 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %398 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %397, i32 0, i32 1
  %399 = call i32 @aarp_send_ddp(%struct.net_device* %395, %struct.sk_buff* %396, %struct.atalk_addr* %398, i32* null)
  br label %400

400:                                              ; preds = %394, %368
  %401 = load %struct.sock*, %struct.sock** %10, align 8
  %402 = load %struct.sock*, %struct.sock** %10, align 8
  %403 = load i64, i64* %9, align 8
  %404 = call i32 (%struct.sock*, i8*, %struct.sock*, ...) @SOCK_DEBUG(%struct.sock* %401, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), %struct.sock* %402, i64 %403)
  %405 = load i64, i64* %9, align 8
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %5, align 4
  br label %407

407:                                              ; preds = %400, %356, %273, %197, %170, %108, %98, %83, %67, %52, %45
  %408 = load i32, i32* %5, align 4
  ret i32 %408
}

declare dso_local %struct.atalk_sock* @at_sk(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @atalk_autobind(%struct.sock*) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*, %struct.sock*, ...) #1

declare dso_local %struct.atalk_route* @atrtr_find(%struct.atalk_addr*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @memcpy_fromiovec(i64, i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @atalk_checksum(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @aarp_send_ddp(%struct.net_device*, %struct.sk_buff*, %struct.atalk_addr*, i32*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
