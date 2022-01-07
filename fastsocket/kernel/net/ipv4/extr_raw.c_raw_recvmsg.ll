; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.inet_sock = type { i64 }
%struct.sockaddr_in = type { i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)* @raw_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_recvmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kiocb*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.msghdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.inet_sock*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_in*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %9, align 8
  store %struct.sock* %1, %struct.sock** %10, align 8
  store %struct.msghdr* %2, %struct.msghdr** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call %struct.inet_sock* @inet_sk(%struct.sock* %21)
  store %struct.inet_sock* %22, %struct.inet_sock** %16, align 8
  store i64 0, i64* %17, align 8
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %18, align 4
  %25 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %28, %struct.sockaddr_in** %19, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @MSG_OOB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  br label %124

34:                                               ; preds = %7
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @MSG_ERRQUEUE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @ip_recv_error(%struct.sock* %40, %struct.msghdr* %41, i64 %42, i32* %43)
  store i32 %44, i32* %18, align 4
  br label %124

45:                                               ; preds = %34
  %46 = load %struct.sock*, %struct.sock** %10, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %46, i32 %47, i32 %48, i32* %18)
  store %struct.sk_buff* %49, %struct.sk_buff** %20, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %124

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %17, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i32, i32* @MSG_TRUNC, align 4
  %62 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %63 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %17, align 8
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %69 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %70 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %17, align 8
  %73 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %68, i32 0, i32 %71, i64 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %120

77:                                               ; preds = %67
  %78 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %79 = load %struct.sock*, %struct.sock** %10, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %81 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %78, %struct.sock* %79, %struct.sk_buff* %80)
  %82 = load %struct.sockaddr_in*, %struct.sockaddr_in** %19, align 8
  %83 = icmp ne %struct.sockaddr_in* %82, null
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = load i32, i32* @AF_INET, align 4
  %86 = load %struct.sockaddr_in*, %struct.sockaddr_in** %19, align 8
  %87 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %89 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sockaddr_in*, %struct.sockaddr_in** %19, align 8
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.sockaddr_in*, %struct.sockaddr_in** %19, align 8
  %96 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.sockaddr_in*, %struct.sockaddr_in** %19, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %97, i32 0, i32 0
  %99 = call i32 @memset(i32* %98, i32 0, i32 4)
  %100 = load i32*, i32** %15, align 8
  store i32 24, i32* %100, align 4
  br label %101

101:                                              ; preds = %84, %77
  %102 = load %struct.inet_sock*, %struct.inet_sock** %16, align 8
  %103 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %109 = call i32 @ip_cmsg_recv(%struct.msghdr* %107, %struct.sk_buff* %108)
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @MSG_TRUNC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %17, align 8
  br label %119

119:                                              ; preds = %115, %110
  br label %120

120:                                              ; preds = %119, %76
  %121 = load %struct.sock*, %struct.sock** %10, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %123 = call i32 @skb_free_datagram(%struct.sock* %121, %struct.sk_buff* %122)
  br label %124

124:                                              ; preds = %120, %52, %39, %33
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* %18, align 4
  store i32 %128, i32* %8, align 4
  br label %132

129:                                              ; preds = %124
  %130 = load i64, i64* %17, align 8
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %129, %127
  %133 = load i32, i32* %8, align 4
  ret i32 %133
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ip_recv_error(%struct.sock*, %struct.msghdr*, i64, i32*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ip_cmsg_recv(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
