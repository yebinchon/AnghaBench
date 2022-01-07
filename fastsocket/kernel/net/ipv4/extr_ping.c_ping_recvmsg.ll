; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_ping_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_ping_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.inet_sock = type { i64, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"ping_recvmsg(sk=%p,sk->num=%u)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ping_recvmsg -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)* @ping_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ping_recvmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kiocb*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.msghdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.inet_sock*, align 8
  %17 = alloca %struct.sockaddr_in*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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
  %23 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %26, %struct.sockaddr_in** %17, align 8
  %27 = load %struct.inet_sock*, %struct.inet_sock** %16, align 8
  %28 = load %struct.inet_sock*, %struct.inet_sock** %16, align 8
  %29 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.inet_sock* %27, i32 %30)
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @MSG_OOB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %7
  br label %124

39:                                               ; preds = %7
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @MSG_ERRQUEUE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  %46 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @ip_recv_error(%struct.sock* %45, %struct.msghdr* %46, i64 %47, i32* %48)
  store i32 %49, i32* %8, align 4
  br label %128

50:                                               ; preds = %39
  %51 = load %struct.sock*, %struct.sock** %10, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %51, i32 %52, i32 %53, i32* %20)
  store %struct.sk_buff* %54, %struct.sk_buff** %18, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %124

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %12, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load i32, i32* @MSG_TRUNC, align 4
  %68 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %69 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i64, i64* %12, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %66, %58
  %75 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %76 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %77 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %75, i32 0, i32 %78, i32 %79)
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %20, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %120

84:                                               ; preds = %74
  %85 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %86 = load %struct.sock*, %struct.sock** %10, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %88 = call i32 @sock_recv_timestamp(%struct.msghdr* %85, %struct.sock* %86, %struct.sk_buff* %87)
  %89 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %90 = icmp ne %struct.sockaddr_in* %89, null
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load i32, i32* @AF_INET, align 4
  %93 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %94 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %96 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %98 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @memset(i32 %106, i32 0, i32 4)
  %108 = load i32*, i32** %15, align 8
  store i32 24, i32* %108, align 4
  br label %109

109:                                              ; preds = %91, %84
  %110 = load %struct.inet_sock*, %struct.inet_sock** %16, align 8
  %111 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %117 = call i32 @ip_cmsg_recv(%struct.msghdr* %115, %struct.sk_buff* %116)
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32, i32* %19, align 4
  store i32 %119, i32* %20, align 4
  br label %120

120:                                              ; preds = %118, %83
  %121 = load %struct.sock*, %struct.sock** %10, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %123 = call i32 @skb_free_datagram(%struct.sock* %121, %struct.sk_buff* %122)
  br label %124

124:                                              ; preds = %120, %57, %38
  %125 = load i32, i32* %20, align 4
  %126 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %20, align 4
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %124, %44
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ip_recv_error(%struct.sock*, %struct.msghdr*, i64, i32*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @sock_recv_timestamp(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ip_cmsg_recv(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
