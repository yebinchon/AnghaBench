; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sock.c_hci_sock_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sock.c_hci_sock_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i32, i32, i64 }
%struct.sk_buff = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i64 0, align 8
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @hci_sock_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_sock_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sock*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @MSG_DONTWAIT, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.socket*, %struct.socket** %8, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %13, align 8
  %23 = load %struct.socket*, %struct.socket** %8, align 8
  %24 = load %struct.sock*, %struct.sock** %13, align 8
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %23, %struct.sock* %24)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @MSG_OOB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %89

33:                                               ; preds = %5
  %34 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.sock*, %struct.sock** %13, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BT_CLOSED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %89

42:                                               ; preds = %33
  %43 = load %struct.sock*, %struct.sock** %13, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %43, i32 %44, i32 %45, i32* %16)
  store %struct.sk_buff* %46, %struct.sk_buff** %14, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %6, align 4
  br label %89

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i32, i32* @MSG_TRUNC, align 4
  %60 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %61 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i64, i64* %10, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %58, %50
  %67 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %68 = call i32 @skb_reset_transport_header(%struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %70 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %71 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %69, i32 0, i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load %struct.sock*, %struct.sock** %13, align 8
  %76 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %78 = call i32 @hci_sock_cmsg(%struct.sock* %75, %struct.msghdr* %76, %struct.sk_buff* %77)
  %79 = load %struct.sock*, %struct.sock** %13, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %81 = call i32 @skb_free_datagram(%struct.sock* %79, %struct.sk_buff* %80)
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %66
  br label %87

85:                                               ; preds = %66
  %86 = load i32, i32* %15, align 4
  br label %87

87:                                               ; preds = %85, %84
  %88 = phi i32 [ %82, %84 ], [ %86, %85 ]
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %48, %41, %30
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @hci_sock_cmsg(%struct.sock*, %struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
