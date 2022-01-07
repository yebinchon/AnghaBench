; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i64 }
%struct.l2cap_conn_rsp = type { i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@BT_CONNECT2 = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i64 0, align 8
@L2CAP_CR_SUCCESS = common dso_local global i32 0, align 4
@L2CAP_CS_NO_INFO = common dso_local global i32 0, align 4
@L2CAP_CONN_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @l2cap_sock_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.l2cap_conn_rsp, align 8
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.socket*, %struct.socket** %8, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %12, align 8
  %17 = load %struct.sock*, %struct.sock** %12, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.sock*, %struct.sock** %12, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BT_CONNECT2, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %5
  %27 = load %struct.sock*, %struct.sock** %12, align 8
  %28 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %26
  %33 = load i64, i64* @BT_CONFIG, align 8
  %34 = load %struct.sock*, %struct.sock** %12, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.sock*, %struct.sock** %12, align 8
  %37 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %13, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load %struct.sock*, %struct.sock** %12, align 8
  %43 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %13, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* @L2CAP_CR_SUCCESS, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %13, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %13, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = load %struct.sock*, %struct.sock** %12, align 8
  %55 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sock*, %struct.sock** %12, align 8
  %59 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %58)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @L2CAP_CONN_RSP, align 4
  %63 = call i32 @l2cap_send_cmd(i32 %57, i32 %61, i32 %62, i32 32, %struct.l2cap_conn_rsp* %13)
  %64 = load %struct.sock*, %struct.sock** %12, align 8
  %65 = call i32 @release_sock(%struct.sock* %64)
  store i32 0, i32* %6, align 4
  br label %75

66:                                               ; preds = %26, %5
  %67 = load %struct.sock*, %struct.sock** %12, align 8
  %68 = call i32 @release_sock(%struct.sock* %67)
  %69 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %70 = load %struct.socket*, %struct.socket** %8, align 8
  %71 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @bt_sock_recvmsg(%struct.kiocb* %69, %struct.socket* %70, %struct.msghdr* %71, i64 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %66, %32
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_send_cmd(i32, i32, i32, i32, %struct.l2cap_conn_rsp*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @bt_sock_recvmsg(%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
