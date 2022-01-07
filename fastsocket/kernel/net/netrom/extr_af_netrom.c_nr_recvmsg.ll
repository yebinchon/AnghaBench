; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_af_netrom.c_nr_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_af_netrom.c_nr_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i32, i32, i32, i64 }
%struct.sockaddr_ax25 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@AF_NETROM = common dso_local global i32 0, align 4
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @nr_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sockaddr_ax25*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.socket*, %struct.socket** %8, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %12, align 8
  %20 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.sockaddr_ax25*
  store %struct.sockaddr_ax25* %23, %struct.sockaddr_ax25** %13, align 8
  %24 = load %struct.sock*, %struct.sock** %12, align 8
  %25 = call i32 @lock_sock(%struct.sock* %24)
  %26 = load %struct.sock*, %struct.sock** %12, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TCP_ESTABLISHED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load %struct.sock*, %struct.sock** %12, align 8
  %33 = call i32 @release_sock(%struct.sock* %32)
  %34 = load i32, i32* @ENOTCONN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %99

36:                                               ; preds = %5
  %37 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.sock*, %struct.sock** %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @MSG_DONTWAIT, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @MSG_DONTWAIT, align 4
  %46 = and i32 %44, %45
  %47 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %39, i32 %43, i32 %46, i32* %16)
  store %struct.sk_buff* %47, %struct.sk_buff** %15, align 8
  %48 = icmp eq %struct.sk_buff* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.sock*, %struct.sock** %12, align 8
  %51 = call i32 @release_sock(%struct.sock* %50)
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %6, align 4
  br label %99

53:                                               ; preds = %36
  %54 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %55 = call i32 @skb_reset_transport_header(%struct.sk_buff* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %14, align 8
  %64 = load i32, i32* @MSG_TRUNC, align 4
  %65 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %66 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %53
  %70 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %71 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %72 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %70, i32 0, i32 %73, i64 %74)
  %76 = load %struct.sockaddr_ax25*, %struct.sockaddr_ax25** %13, align 8
  %77 = icmp ne %struct.sockaddr_ax25* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = load i32, i32* @AF_NETROM, align 4
  %80 = load %struct.sockaddr_ax25*, %struct.sockaddr_ax25** %13, align 8
  %81 = getelementptr inbounds %struct.sockaddr_ax25, %struct.sockaddr_ax25* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %83 = load %struct.sockaddr_ax25*, %struct.sockaddr_ax25** %13, align 8
  %84 = getelementptr inbounds %struct.sockaddr_ax25, %struct.sockaddr_ax25* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AX25_ADDR_LEN, align 4
  %88 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %82, i32 7, i32 %86, i32 %87)
  %89 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %90 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %89, i32 0, i32 0
  store i32 8, i32* %90, align 8
  br label %91

91:                                               ; preds = %78, %69
  %92 = load %struct.sock*, %struct.sock** %12, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %94 = call i32 @skb_free_datagram(%struct.sock* %92, %struct.sk_buff* %93)
  %95 = load %struct.sock*, %struct.sock** %12, align 8
  %96 = call i32 @release_sock(%struct.sock* %95)
  %97 = load i64, i64* %14, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %91, %49, %31
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
