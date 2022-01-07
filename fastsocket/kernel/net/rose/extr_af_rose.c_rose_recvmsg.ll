; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i32, %struct.sockaddr_rose*, i32, i32 }
%struct.sockaddr_rose = type { i32, i32, i32, i32 }
%struct.rose_sock = type { i32, i32*, i32, i32, i64 }
%struct.sk_buff = type { i32*, i64 }
%struct.full_sockaddr_rose = type { i32* }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@ROSE_Q_BIT = common dso_local global i32 0, align 4
@ROSE_MIN_LEN = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@AF_ROSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @rose_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.rose_sock*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.full_sockaddr_rose*, align 8
  %21 = alloca %struct.sockaddr_rose*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.socket*, %struct.socket** %8, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load %struct.sock*, %struct.sock** %23, align 8
  store %struct.sock* %24, %struct.sock** %12, align 8
  %25 = load %struct.sock*, %struct.sock** %12, align 8
  %26 = call %struct.rose_sock* @rose_sk(%struct.sock* %25)
  store %struct.rose_sock* %26, %struct.rose_sock** %13, align 8
  %27 = load %struct.sock*, %struct.sock** %12, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TCP_ESTABLISHED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %163

35:                                               ; preds = %5
  %36 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.sock*, %struct.sock** %12, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @MSG_DONTWAIT, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @MSG_DONTWAIT, align 4
  %45 = and i32 %43, %44
  %46 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %38, i32 %42, i32 %45, i32* %18)
  store %struct.sk_buff* %46, %struct.sk_buff** %16, align 8
  %47 = icmp eq %struct.sk_buff* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %18, align 4
  store i32 %49, i32* %6, align 4
  br label %163

50:                                               ; preds = %35
  %51 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ROSE_Q_BIT, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @ROSE_Q_BIT, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %19, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %62 = load i32, i32* @ROSE_MIN_LEN, align 4
  %63 = call i32 @skb_pull(%struct.sk_buff* %61, i32 %62)
  %64 = load %struct.rose_sock*, %struct.rose_sock** %13, align 8
  %65 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %50
  %69 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %70 = call i8* @skb_push(%struct.sk_buff* %69, i32 1)
  store i8* %70, i8** %15, align 8
  %71 = load i32, i32* %19, align 4
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %15, align 8
  store i8 %72, i8* %73, align 1
  br label %74

74:                                               ; preds = %68, %50
  %75 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %76 = call i32 @skb_reset_transport_header(%struct.sk_buff* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i64, i64* %10, align 8
  store i64 %84, i64* %14, align 8
  %85 = load i32, i32* @MSG_TRUNC, align 4
  %86 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %87 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %74
  %91 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %92 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %93 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %91, i32 0, i32 %94, i64 %95)
  %97 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %98 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %97, i32 0, i32 1
  %99 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %98, align 8
  %100 = icmp ne %struct.sockaddr_rose* %99, null
  br i1 %100, label %101, label %157

101:                                              ; preds = %90
  %102 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %103 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %102, i32 0, i32 1
  %104 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %103, align 8
  %105 = bitcast %struct.sockaddr_rose* %104 to %struct.full_sockaddr_rose*
  store %struct.full_sockaddr_rose* %105, %struct.full_sockaddr_rose** %20, align 8
  %106 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %107 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %106, i32 0, i32 1
  %108 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %107, align 8
  %109 = call i32 @memset(%struct.sockaddr_rose* %108, i32 0, i32 8)
  %110 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %111 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %110, i32 0, i32 1
  %112 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %111, align 8
  store %struct.sockaddr_rose* %112, %struct.sockaddr_rose** %21, align 8
  %113 = load i32, i32* @AF_ROSE, align 4
  %114 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %21, align 8
  %115 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.rose_sock*, %struct.rose_sock** %13, align 8
  %117 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %21, align 8
  %120 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.rose_sock*, %struct.rose_sock** %13, align 8
  %122 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %21, align 8
  %125 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.rose_sock*, %struct.rose_sock** %13, align 8
  %127 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %21, align 8
  %130 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  store i32 0, i32* %17, align 4
  br label %131

131:                                              ; preds = %151, %101
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.rose_sock*, %struct.rose_sock** %13, align 8
  %134 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %131
  %138 = load %struct.rose_sock*, %struct.rose_sock** %13, align 8
  %139 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %20, align 8
  %146 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  br label %151

151:                                              ; preds = %137
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  br label %131

154:                                              ; preds = %131
  %155 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %156 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %155, i32 0, i32 0
  store i32 8, i32* %156, align 8
  br label %157

157:                                              ; preds = %154, %90
  %158 = load %struct.sock*, %struct.sock** %12, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %160 = call i32 @skb_free_datagram(%struct.sock* %158, %struct.sk_buff* %159)
  %161 = load i64, i64* %14, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %157, %48, %32
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @memset(%struct.sockaddr_rose*, i32, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
