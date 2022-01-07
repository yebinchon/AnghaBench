; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_af_bluetooth.c_bt_sock_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_af_bluetooth.c_bt_sock_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.sk_buff = type { i64 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sock %p sk %p len %zu\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_sock_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sock*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
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
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.socket* %23, %struct.sock* %24, i64 %25)
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @MSG_OOB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %95

34:                                               ; preds = %5
  %35 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %13, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %37, i32 %38, i32 %39, i32* %16)
  store %struct.sk_buff* %40, %struct.sk_buff** %14, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = load %struct.sock*, %struct.sock** %13, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RCV_SHUTDOWN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %95

50:                                               ; preds = %42
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %6, align 4
  br label %95

52:                                               ; preds = %34
  %53 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %15, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* @MSG_TRUNC, align 4
  %61 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %15, align 8
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %68 = call i32 @skb_reset_transport_header(%struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %70 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %71 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %69, i32 0, i32 %72, i64 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %79 = load %struct.sock*, %struct.sock** %13, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %81 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %78, %struct.sock* %79, %struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %77, %66
  %83 = load %struct.sock*, %struct.sock** %13, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %85 = call i32 @skb_free_datagram(%struct.sock* %83, %struct.sk_buff* %84)
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = sext i32 %86 to i64
  br label %92

90:                                               ; preds = %82
  %91 = load i64, i64* %15, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i64 [ %89, %88 ], [ %91, %90 ]
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %50, %49, %31
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*, i64) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
