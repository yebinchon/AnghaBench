; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.tipc_port = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SS_DISCONNECTING = common dso_local global i64 0, align 8
@tipc_queue_size = common dso_local global i32 0, align 4
@SS_CONNECTING = common dso_local global i64 0, align 8
@SS_CONNECTED = common dso_local global i64 0, align 8
@TIPC_ERR_NO_PORT = common dso_local global i32 0, align 4
@tipc_user_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.tipc_port*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 1
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = icmp eq %struct.sock* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.tipc_port* @tipc_sk_port(%struct.sock* %15)
  store %struct.tipc_port* %16, %struct.tipc_port** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  br label %19

19:                                               ; preds = %69, %14
  %20 = load %struct.socket*, %struct.socket** %3, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SS_DISCONNECTING, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %19
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = call %struct.sk_buff* @__skb_dequeue(i32* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = icmp eq %struct.sk_buff* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %70

32:                                               ; preds = %25
  %33 = call i32 @atomic_dec(i32* @tipc_queue_size)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @buf_msg(%struct.sk_buff* %38)
  %40 = call i64 @msg_data(i32 %39)
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @buf_discard(%struct.sk_buff* %43)
  br label %69

45:                                               ; preds = %32
  %46 = load %struct.socket*, %struct.socket** %3, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SS_CONNECTING, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.socket*, %struct.socket** %3, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SS_CONNECTED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51, %45
  %58 = load i64, i64* @SS_DISCONNECTING, align 8
  %59 = load %struct.socket*, %struct.socket** %3, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.tipc_port*, %struct.tipc_port** %5, align 8
  %62 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @tipc_disconnect(i32 %63)
  br label %65

65:                                               ; preds = %57, %51
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  %68 = call i32 @tipc_reject_msg(%struct.sk_buff* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %42
  br label %19

70:                                               ; preds = %31, %19
  %71 = load %struct.tipc_port*, %struct.tipc_port** %5, align 8
  %72 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @tipc_deleteport(i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call i32 @discard_rx_queue(%struct.sock* %75)
  %77 = load i64, i64* @SS_DISCONNECTING, align 8
  %78 = load %struct.socket*, %struct.socket** %3, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.sock*, %struct.sock** %4, align 8
  %81 = call i32 @release_sock(%struct.sock* %80)
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = call i32 @sock_put(%struct.sock* %82)
  %84 = load %struct.socket*, %struct.socket** %3, align 8
  %85 = getelementptr inbounds %struct.socket, %struct.socket* %84, i32 0, i32 1
  store %struct.sock* null, %struct.sock** %85, align 8
  %86 = call i32 @atomic_dec(i32* @tipc_user_count)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %70, %13
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.tipc_port* @tipc_sk_port(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @msg_data(i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @tipc_disconnect(i32) #1

declare dso_local i32 @tipc_reject_msg(%struct.sk_buff*, i32) #1

declare dso_local i32 @tipc_deleteport(i32) #1

declare dso_local i32 @discard_rx_queue(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
