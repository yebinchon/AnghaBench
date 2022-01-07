; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.pfkey_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @pfkey_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.pfkey_sock*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %11, align 8
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = call %struct.pfkey_sock* @pfkey_sk(%struct.sock* %19)
  store %struct.pfkey_sock* %20, %struct.pfkey_sock** %12, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @MSG_PEEK, align 4
  %25 = load i32, i32* @MSG_DONTWAIT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MSG_TRUNC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %23, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %114

35:                                               ; preds = %5
  %36 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.sock*, %struct.sock** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MSG_DONTWAIT, align 4
  %42 = and i32 %40, %41
  %43 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %38, i32 %39, i32 %42, i32* %15)
  store %struct.sk_buff* %43, %struct.sk_buff** %13, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %45 = icmp eq %struct.sk_buff* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %114

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %9, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load i32, i32* @MSG_TRUNC, align 4
  %57 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %58 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %55, %47
  %64 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %65 = call i32 @skb_reset_transport_header(%struct.sk_buff* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %67 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %68 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %66, i32 0, i32 %69, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %110

75:                                               ; preds = %63
  %76 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %77 = load %struct.sock*, %struct.sock** %11, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %79 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %76, %struct.sock* %77, %struct.sk_buff* %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @MSG_TRUNC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  br label %90

88:                                               ; preds = %75
  %89 = load i32, i32* %14, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i32 [ %87, %84 ], [ %89, %88 ]
  store i32 %91, i32* %15, align 4
  %92 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %93 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load %struct.sock*, %struct.sock** %11, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 1
  %100 = call i32 @atomic_read(i32* %99)
  %101 = mul nsw i32 3, %100
  %102 = load %struct.sock*, %struct.sock** %11, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sle i32 %101, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %108 = call i32 @pfkey_do_dump(%struct.pfkey_sock* %107)
  br label %109

109:                                              ; preds = %106, %97, %90
  br label %110

110:                                              ; preds = %109, %74
  %111 = load %struct.sock*, %struct.sock** %11, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %113 = call i32 @skb_free_datagram(%struct.sock* %111, %struct.sk_buff* %112)
  br label %114

114:                                              ; preds = %110, %46, %34
  %115 = load i32, i32* %15, align 4
  ret i32 %115
}

declare dso_local %struct.pfkey_sock* @pfkey_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pfkey_do_dump(%struct.pfkey_sock*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
