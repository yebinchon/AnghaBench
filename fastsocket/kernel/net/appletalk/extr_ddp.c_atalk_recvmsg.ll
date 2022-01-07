; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i32, %struct.sockaddr_at*, i32, i32 }
%struct.sockaddr_at = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ddpehdr = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@MSG_TRUNC = common dso_local global i32 0, align 4
@AF_APPLETALK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @atalk_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atalk_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.ddpehdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.sockaddr_at*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.socket*, %struct.socket** %8, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %21, %struct.sock** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.sock*, %struct.sock** %12, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @MSG_DONTWAIT, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @MSG_DONTWAIT, align 4
  %29 = and i32 %27, %28
  %30 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %22, i32 %26, i32 %29, i32* %16)
  store %struct.sk_buff* %30, %struct.sk_buff** %17, align 8
  %31 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %6, align 4
  br label %119

37:                                               ; preds = %5
  %38 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %39 = call %struct.ddpehdr* @ddp_hdr(%struct.sk_buff* %38)
  store %struct.ddpehdr* %39, %struct.ddpehdr** %13, align 8
  %40 = load %struct.ddpehdr*, %struct.ddpehdr** %13, align 8
  %41 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohs(i32 %42)
  %44 = and i32 %43, 1023
  store i32 %44, i32* %14, align 4
  %45 = load %struct.sock*, %struct.sock** %12, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SOCK_RAW, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  store i32 16, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %50, %37
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %10, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i64, i64* %10, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* @MSG_TRUNC, align 4
  %63 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %64 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %71 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %68, i32 %69, i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %108, label %77

77:                                               ; preds = %67
  %78 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %79 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %78, i32 0, i32 1
  %80 = load %struct.sockaddr_at*, %struct.sockaddr_at** %79, align 8
  %81 = icmp ne %struct.sockaddr_at* %80, null
  br i1 %81, label %82, label %108

82:                                               ; preds = %77
  %83 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %84 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %83, i32 0, i32 1
  %85 = load %struct.sockaddr_at*, %struct.sockaddr_at** %84, align 8
  store %struct.sockaddr_at* %85, %struct.sockaddr_at** %18, align 8
  %86 = load i32, i32* @AF_APPLETALK, align 4
  %87 = load %struct.sockaddr_at*, %struct.sockaddr_at** %18, align 8
  %88 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ddpehdr*, %struct.ddpehdr** %13, align 8
  %90 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sockaddr_at*, %struct.sockaddr_at** %18, align 8
  %93 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ddpehdr*, %struct.ddpehdr** %13, align 8
  %95 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sockaddr_at*, %struct.sockaddr_at** %18, align 8
  %98 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %struct.ddpehdr*, %struct.ddpehdr** %13, align 8
  %101 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sockaddr_at*, %struct.sockaddr_at** %18, align 8
  %104 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  %106 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %107 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %106, i32 0, i32 0
  store i32 16, i32* %107, align 8
  br label %108

108:                                              ; preds = %82, %77, %67
  %109 = load %struct.sock*, %struct.sock** %12, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %111 = call i32 @skb_free_datagram(%struct.sock* %109, %struct.sk_buff* %110)
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %117

115:                                              ; preds = %108
  %116 = load i32, i32* %14, align 4
  br label %117

117:                                              ; preds = %115, %114
  %118 = phi i32 [ %112, %114 ], [ %116, %115 ]
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %35
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local %struct.ddpehdr* @ddp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
