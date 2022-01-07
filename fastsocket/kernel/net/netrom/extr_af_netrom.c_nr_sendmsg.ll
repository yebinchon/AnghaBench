; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_af_netrom.c_nr_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_af_netrom.c_nr_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64 }
%struct.msghdr = type { i32, i32, i32, i64 }
%struct.nr_sock = type { i32, i32, i32, i32* }
%struct.sockaddr_ax25 = type { i64, i32 }
%struct.sk_buff = type { i32 }

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
@AF_NETROM = common dso_local global i64 0, align 8
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"NET/ROM: sendto: Addresses built.\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"NET/ROM: sendto: building packet.\0A\00", align 1
@NR_NETWORK_LEN = common dso_local global i64 0, align 8
@NR_TRANSPORT_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Building NET/ROM Header.\0A\00", align 1
@NR_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Built header.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"NET/ROM: Appending user data\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"NET/ROM: Transmitting buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @nr_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.nr_sock*, align 8
  %12 = alloca %struct.sockaddr_ax25*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_ax25, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %10, align 8
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call %struct.nr_sock* @nr_sk(%struct.sock* %21)
  store %struct.nr_sock* %22, %struct.nr_sock** %11, align 8
  %23 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.sockaddr_ax25*
  store %struct.sockaddr_ax25* %26, %struct.sockaddr_ax25** %12, align 8
  %27 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MSG_DONTWAIT, align 4
  %31 = load i32, i32* @MSG_EOR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %29, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %226

41:                                               ; preds = %4
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = call i32 @lock_sock(%struct.sock* %42)
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = load i32, i32* @SOCK_ZAPPED, align 4
  %46 = call i64 @sock_flag(%struct.sock* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EADDRNOTAVAIL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  br label %222

51:                                               ; preds = %41
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
  store i32 %63, i32* %13, align 4
  br label %222

64:                                               ; preds = %51
  %65 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %66 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @ENETUNREACH, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %222

72:                                               ; preds = %64
  %73 = load %struct.sockaddr_ax25*, %struct.sockaddr_ax25** %12, align 8
  %74 = icmp ne %struct.sockaddr_ax25* %73, null
  br i1 %74, label %75, label %105

75:                                               ; preds = %72
  %76 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %77 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %79, 16
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %13, align 4
  br label %222

84:                                               ; preds = %75
  %85 = load %struct.sockaddr_ax25*, %struct.sockaddr_ax25** %12, align 8
  %86 = bitcast %struct.sockaddr_ax25* %14 to i8*
  %87 = bitcast %struct.sockaddr_ax25* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  %88 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %89 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.sockaddr_ax25, %struct.sockaddr_ax25* %14, i32 0, i32 1
  %91 = call i64 @ax25cmp(i32* %89, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, i32* @EISCONN, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %222

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.sockaddr_ax25, %struct.sockaddr_ax25* %14, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AF_NETROM, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %13, align 4
  br label %222

104:                                              ; preds = %96
  br label %121

105:                                              ; preds = %72
  %106 = load %struct.sock*, %struct.sock** %10, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TCP_ESTABLISHED, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @ENOTCONN, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %13, align 4
  br label %222

114:                                              ; preds = %105
  %115 = load i64, i64* @AF_NETROM, align 8
  %116 = getelementptr inbounds %struct.sockaddr_ax25, %struct.sockaddr_ax25* %14, i32 0, i32 0
  store i64 %115, i64* %116, align 8
  %117 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %118 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.sockaddr_ax25, %struct.sockaddr_ax25* %14, i32 0, i32 1
  store i32 %119, i32* %120, align 8
  br label %121

121:                                              ; preds = %114, %104
  %122 = load %struct.sock*, %struct.sock** %10, align 8
  %123 = call i32 @SOCK_DEBUG(%struct.sock* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %124 = load i64, i64* %9, align 8
  %125 = icmp ugt i64 %124, 65536
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EMSGSIZE, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %13, align 4
  br label %222

129:                                              ; preds = %121
  %130 = load %struct.sock*, %struct.sock** %10, align 8
  %131 = call i32 @SOCK_DEBUG(%struct.sock* %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* @NR_NETWORK_LEN, align 8
  %134 = add i64 %132, %133
  %135 = load i64, i64* @NR_TRANSPORT_LEN, align 8
  %136 = add i64 %134, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %17, align 4
  %138 = load %struct.sock*, %struct.sock** %10, align 8
  %139 = load i32, i32* %17, align 4
  %140 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %141 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @MSG_DONTWAIT, align 4
  %144 = and i32 %142, %143
  %145 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %138, i32 %139, i32 %144, i32* %13)
  store %struct.sk_buff* %145, %struct.sk_buff** %15, align 8
  %146 = icmp eq %struct.sk_buff* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %129
  br label %222

148:                                              ; preds = %129
  %149 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %9, align 8
  %153 = sub i64 %151, %152
  %154 = trunc i64 %153 to i32
  %155 = call i32 @skb_reserve(%struct.sk_buff* %149, i32 %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %157 = call i32 @skb_reset_transport_header(%struct.sk_buff* %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %159 = load i64, i64* @NR_TRANSPORT_LEN, align 8
  %160 = call i8* @skb_push(%struct.sk_buff* %158, i64 %159)
  store i8* %160, i8** %16, align 8
  %161 = load %struct.sock*, %struct.sock** %10, align 8
  %162 = call i32 @SOCK_DEBUG(%struct.sock* %161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %163 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %164 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = trunc i32 %165 to i8
  %167 = load i8*, i8** %16, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %16, align 8
  store i8 %166, i8* %167, align 1
  %169 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %170 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = trunc i32 %171 to i8
  %173 = load i8*, i8** %16, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %16, align 8
  store i8 %172, i8* %173, align 1
  %175 = load i8*, i8** %16, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %16, align 8
  store i8 0, i8* %175, align 1
  %177 = load i8*, i8** %16, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %16, align 8
  store i8 0, i8* %177, align 1
  %179 = load i32, i32* @NR_INFO, align 4
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %16, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %16, align 8
  store i8 %180, i8* %181, align 1
  %183 = load %struct.sock*, %struct.sock** %10, align 8
  %184 = call i32 @SOCK_DEBUG(%struct.sock* %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %185 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %186 = load i64, i64* %9, align 8
  %187 = call i32 @skb_put(%struct.sk_buff* %185, i64 %186)
  %188 = load %struct.sock*, %struct.sock** %10, align 8
  %189 = call i32 @SOCK_DEBUG(%struct.sock* %188, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %190 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %191 = call i32 @skb_transport_header(%struct.sk_buff* %190)
  %192 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %193 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i64, i64* %9, align 8
  %196 = call i64 @memcpy_fromiovec(i32 %191, i32 %194, i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %148
  %199 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %200 = call i32 @kfree_skb(%struct.sk_buff* %199)
  %201 = load i32, i32* @EFAULT, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %13, align 4
  br label %222

203:                                              ; preds = %148
  %204 = load %struct.sock*, %struct.sock** %10, align 8
  %205 = call i32 @SOCK_DEBUG(%struct.sock* %204, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %206 = load %struct.sock*, %struct.sock** %10, align 8
  %207 = getelementptr inbounds %struct.sock, %struct.sock* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @TCP_ESTABLISHED, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %203
  %212 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %213 = call i32 @kfree_skb(%struct.sk_buff* %212)
  %214 = load i32, i32* @ENOTCONN, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %13, align 4
  br label %222

216:                                              ; preds = %203
  %217 = load %struct.sock*, %struct.sock** %10, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %219 = call i32 @nr_output(%struct.sock* %217, %struct.sk_buff* %218)
  %220 = load i64, i64* %9, align 8
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %13, align 4
  br label %222

222:                                              ; preds = %216, %211, %198, %147, %126, %111, %101, %93, %81, %69, %58, %48
  %223 = load %struct.sock*, %struct.sock** %10, align 8
  %224 = call i32 @release_sock(%struct.sock* %223)
  %225 = load i32, i32* %13, align 4
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %222, %38
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ax25cmp(i32*, i32*) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nr_output(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
