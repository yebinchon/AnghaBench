; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.msghdr = type { i32, i32, i32, i64 }
%struct.ipx_sock = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_ipx = type { i64, i32, i64, i32, i64, i32 }
%struct.ipxhdr = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.sk_buff = type { %struct.TYPE_6__ }
%struct.sockaddr = type { i32 }
%struct.TYPE_8__ = type { i64 }

@ENOTCONN = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@AF_IPX = common dso_local global i32 0, align 4
@IPX_NODE_LEN = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @ipx_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipx_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.ipx_sock*, align 8
  %13 = alloca %struct.sockaddr_ipx*, align 8
  %14 = alloca %struct.ipxhdr*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr_ipx, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %21, %struct.sock** %11, align 8
  %22 = load %struct.sock*, %struct.sock** %11, align 8
  %23 = call %struct.ipx_sock* @ipx_sk(%struct.sock* %22)
  store %struct.ipx_sock* %23, %struct.ipx_sock** %12, align 8
  %24 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.sockaddr_ipx*
  store %struct.sockaddr_ipx* %27, %struct.sockaddr_ipx** %13, align 8
  store %struct.ipxhdr* null, %struct.ipxhdr** %14, align 8
  %28 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %31 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %18, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %18, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = bitcast %struct.sockaddr_ipx* %18 to %struct.sockaddr*
  %39 = call i32 @ipx_bind(%struct.socket* %37, %struct.sockaddr* %38, i32 48)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %153

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %5
  %45 = load i32, i32* @ENOTCONN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %17, align 4
  %47 = load %struct.sock*, %struct.sock** %11, align 8
  %48 = load i32, i32* @SOCK_ZAPPED, align 4
  %49 = call i64 @sock_flag(%struct.sock* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %153

52:                                               ; preds = %44
  %53 = load %struct.sock*, %struct.sock** %11, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @MSG_DONTWAIT, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MSG_DONTWAIT, align 4
  %60 = and i32 %58, %59
  %61 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %53, i32 %57, i32 %60, i32* %17)
  store %struct.sk_buff* %61, %struct.sk_buff** %15, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %52
  br label %153

65:                                               ; preds = %52
  %66 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %67 = call %struct.ipxhdr* @ipx_hdr(%struct.sk_buff* %66)
  store %struct.ipxhdr* %67, %struct.ipxhdr** %14, align 8
  %68 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %69 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ntohs(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = sub i64 %72, 32
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %9, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %65
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* @MSG_TRUNC, align 4
  %83 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %84 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %79, %65
  %88 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %89 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %90 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %88, i32 32, i32 %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %149

97:                                               ; preds = %87
  %98 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.sock*, %struct.sock** %11, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 0
  %106 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = bitcast %struct.TYPE_6__* %105 to i8*
  %109 = bitcast %struct.TYPE_6__* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 8, i1 false)
  br label %110

110:                                              ; preds = %103, %97
  %111 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %13, align 8
  %112 = icmp ne %struct.sockaddr_ipx* %111, null
  br i1 %112, label %113, label %147

113:                                              ; preds = %110
  %114 = load i32, i32* @AF_IPX, align 4
  %115 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %13, align 8
  %116 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %118 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %13, align 8
  %122 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %121, i32 0, i32 4
  store i64 %120, i64* %122, align 8
  %123 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %13, align 8
  %124 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %127 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IPX_NODE_LEN, align 4
  %131 = call i32 @memcpy(i32 %125, i32 %129, i32 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %133 = call %struct.TYPE_8__* @IPX_SKB_CB(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %13, align 8
  %137 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load %struct.ipxhdr*, %struct.ipxhdr** %14, align 8
  %139 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %13, align 8
  %142 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %13, align 8
  %144 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %146 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %145, i32 0, i32 0
  store i32 48, i32* %146, align 8
  br label %147

147:                                              ; preds = %113, %110
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %17, align 4
  br label %149

149:                                              ; preds = %147, %96
  %150 = load %struct.sock*, %struct.sock** %11, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %152 = call i32 @skb_free_datagram(%struct.sock* %150, %struct.sk_buff* %151)
  br label %153

153:                                              ; preds = %149, %64, %51, %42
  %154 = load i32, i32* %17, align 4
  ret i32 %154
}

declare dso_local %struct.ipx_sock* @ipx_sk(%struct.sock*) #1

declare dso_local i32 @ipx_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local %struct.ipxhdr* @ipx_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @IPX_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
