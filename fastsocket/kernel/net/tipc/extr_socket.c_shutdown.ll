; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.tipc_port = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SHUT_RDWR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tipc_queue_size = common dso_local global i32 0, align 4
@TIPC_CONN_SHUTDOWN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.tipc_port*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 1
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = call %struct.tipc_port* @tipc_sk_port(%struct.sock* %13)
  store %struct.tipc_port* %14, %struct.tipc_port** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SHUT_RDWR, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %84

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = call i32 @lock_sock(%struct.sock* %22)
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %77 [
    i32 129, label %27
    i32 130, label %27
    i32 128, label %63
  ]

27:                                               ; preds = %21, %21
  br label %28

28:                                               ; preds = %44, %27
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 1
  %31 = call %struct.sk_buff* @__skb_dequeue(i32* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %8, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = call i32 @atomic_dec(i32* @tipc_queue_size)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call i32 @buf_msg(%struct.sk_buff* %40)
  %42 = call i32 @msg_data(i32 %41)
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = call i32 @buf_discard(%struct.sk_buff* %45)
  br label %28

47:                                               ; preds = %34
  %48 = load %struct.tipc_port*, %struct.tipc_port** %7, align 8
  %49 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @tipc_disconnect(i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load i32, i32* @TIPC_CONN_SHUTDOWN, align 4
  %54 = call i32 @tipc_reject_msg(%struct.sk_buff* %52, i32 %53)
  br label %60

55:                                               ; preds = %28
  %56 = load %struct.tipc_port*, %struct.tipc_port** %7, align 8
  %57 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @tipc_shutdown(i32 %58)
  br label %60

60:                                               ; preds = %55, %47
  %61 = load %struct.socket*, %struct.socket** %4, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  store i32 128, i32* %62, align 8
  br label %63

63:                                               ; preds = %21, %60
  %64 = load %struct.sock*, %struct.sock** %6, align 8
  %65 = call i32 @discard_rx_queue(%struct.sock* %64)
  %66 = load %struct.sock*, %struct.sock** %6, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @waitqueue_active(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.sock*, %struct.sock** %6, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wake_up_interruptible(i32 %74)
  br label %76

76:                                               ; preds = %71, %63
  store i32 0, i32* %9, align 4
  br label %80

77:                                               ; preds = %21
  %78 = load i32, i32* @ENOTCONN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %76
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = call i32 @release_sock(%struct.sock* %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %18
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.tipc_port* @tipc_sk_port(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @msg_data(i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @tipc_disconnect(i32) #1

declare dso_local i32 @tipc_reject_msg(%struct.sk_buff*, i32) #1

declare dso_local i32 @tipc_shutdown(i32) #1

declare dso_local i32 @discard_rx_queue(%struct.sock*) #1

declare dso_local i32 @waitqueue_active(i32) #1

declare dso_local i32 @wake_up_interruptible(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
